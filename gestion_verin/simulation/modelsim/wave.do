view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /gestion_mcp/clk50M 
wave create -pattern none -portmode in -language vhdl /gestion_mcp/Raz_n 
wave create -pattern none -portmode in -language vhdl /gestion_mcp/Data_in 
wave create -pattern none -portmode out -language vhdl -range 11 0 /gestion_mcp/Angle_barre 
wave create -pattern none -portmode out -language vhdl /gestion_mcp/Clk_adc 
wave create -pattern none -portmode out -language vhdl /gestion_mcp/Cs_n 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/gestion_mcp/clk50m 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns NewSig:/gestion_mcp/raz_n 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns NewSig:/gestion_mcp/data_in 
wave modify -driver expectedOutput -pattern constant -value 0 -starttime 0ns -endtime 1000ns NewSig:/gestion_mcp/clk_adc 
wave modify -driver expectedOutput -pattern constant -value 0 -starttime 0ns -endtime 1000ns NewSig:/gestion_mcp/cs_n 
{wave export -file E:/MASTER2/BE_VHDL_2023_G19/gestion_verin/simulation/modelsim/TEST -starttime 0 -endtime 1000 -format vhdl -designunit gestion_mcp} 
WaveCollapseAll -1
wave clipboard restore
