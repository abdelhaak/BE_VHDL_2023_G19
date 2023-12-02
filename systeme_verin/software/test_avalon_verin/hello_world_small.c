#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include "system.h"
#include "sys/alt_stdio.h"
#include <stdint.h>
#include "io.h"

void verin_freq(uint32_t *frequence, uint32_t *duty, uint32_t freq_clk_fpga);
void verin_butee(uint32_t butee_d, uint32_t butee_g);
void verin_config(uint8_t raz_n, uint8_t en_pwm, uint8_t sens_rotation);
uint32_t read_angle();
uint32_t read_f_butee_d();
uint32_t read_f_butee_g();

void verin_freq(uint32_t *frequence, uint32_t *duty, uint32_t freq_clk_fpga) {
    if (*frequence != 0) {
        *frequence = freq_clk_fpga / *frequence;
        *duty = (*duty / 100) * (*frequence);
    } else {
        // Handle division by zero error
        // You may print an error message or take appropriate action
    }
    IOWR_32DIRECT(AVALON_VERIIN_0_BASE, 0, *frequence);
    IOWR_32DIRECT(AVALON_VERIIN_0_BASE, 4, *duty);
}

void verin_butee(uint32_t butee_d, uint32_t butee_g) {
    IOWR_32DIRECT(AVALON_VERIIN_0_BASE, 8, butee_g);
    IOWR_32DIRECT(AVALON_VERIIN_0_BASE, 12, butee_d);
}

void verin_config(uint8_t raz_n, uint8_t en_pwm, uint8_t sens_rotation) {
    uint32_t config = 0;
    config = config | (sens_rotation << 2);
    config = config | (en_pwm << 1);
    config = config | (raz_n << 0);
    IOWR_32DIRECT(AVALON_VERIIN_0_BASE, 16, config);
}

uint32_t read_angle() {
    return (IORD_16DIRECT(AVALON_VERIIN_0_BASE, 20) & 0x0FFF);
}

uint32_t read_f_butee_d() {
    return (IORD_16DIRECT(AVALON_VERIIN_0_BASE, 16) & 0x0008) >> 3;
}

uint32_t read_f_butee_g() {
    return (IORD_16DIRECT(AVALON_VERIIN_0_BASE, 16) & 0x0008) >> 4;
}

int main() {
    uint32_t clk_fpga = 50000000;
    uint32_t frequence = 25000;
    uint32_t duty = 50;
    uint32_t butee_d = 3500;
    uint32_t butee_g = 1500;
    uint32_t angle_barre;

    alt_putstr("Hello from Nios II!\n");

    verin_freq(&frequence, &duty, clk_fpga);
    verin_butee(butee_d, butee_g);
    verin_config(1, 1, 0);

    /* Event loop never exits. */
    while (1) {
        usleep(1000000);
        angle_barre = read_angle();
        printf("D %u\n", duty);
        printf("freq  %u\n", frequence);
        printf("angle barre  %u\n", angle_barre);
        usleep(1000000);
    }

    return 0;
}
