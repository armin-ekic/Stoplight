library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity add_isa is
	port( clock, reset : in std_logic;
	current_pc, result : out std_logic_vector(3 downto 0));
end add_isa;

architecture behaviour of add_isa is
	constant initial_pc : std_logic_vector(3 downto 0) := (others => '0');
	signal update_pc, read_port1, read_port2, write_port, w_value, src1, src2, sum, rout, mout : std_logic_vector(3 downto 0);
	signal instr_from_im : std_logic_vector(31 downto 0);
	signal MemWrite, RegWrite, MemRead, add_sub, RegWriteHzd, MemWriteHzd, MemReadHzd, add_subHzd, ALUSrcHzd, RegDstHzd, MemToRegHzd, BranchHzd : std_logic;
	signal ZERO2, passZERO2_exmem : std_logic;
	signal ALUOP, ALUopHzd : std_logic_vector(1 downto 0);
	signal ALUSrc, MemToReg, RegDst: std_logic;
	signal sign_ex: std_logic_vector(3 downto 0);
	signal RegDstOut, data_mem_out: std_logic_vector(3 downto 0);
	signal ALUSrcOut: std_logic_vector(3 downto 0);
	signal MemToRegOut, fwd_a_output, fwd_b_output: std_logic_vector(3 downto 0);
	signal Branch: std_logic;
	signal BranchAndZero, IFID_Write, MUX_Ctrl, PC_Write: std_logic;
	signal Jump: std_logic;
	signal RCarry_sum, passRCarry_sum_exmem: std_logic_vector(3 downto 0);
	signal jumpmux_out: std_logic_vector(3 downto 0);
	signal pc_update, pcp1mux_out: std_logic_vector(3 downto 0);
	signal passpcp_ifid, passpcp_idex, passsrc1_idex, passsrc2_idex, passsignex_idex, passalusum_exmem, passsrc2_exmem, passpcHzd: std_logic_vector(3 downto 0); 
	signal passread_port1_idex, passread_port2_idex, passread_port2_exmem: std_logic_vector(3 downto 0);
	signal passRegDstOut_idex, passRegDstOut_exmem, passDataMemOut_memwb, passAluSum_memwb, passsignex_exmem, passpcp_exmem, passRegDstOut_memwb: std_logic_vector(3 downto 0);
	signal passim_ifid, passimHzd: std_logic_vector(31 downto 0);
	signal passRegWrite_idex, passMemWrite_idex, passMemRead_idex, passMemRead_exmem, passMemRead_memwb, passAddSub_idex, passAluSrc_idex, passMemToReg_idex, passRegDst_idex: std_logic;
	signal passRegWrite_exmem, passMemWrite_exmem, passMemToReg_exmem, passRegWrite_memwb, passMemToReg_memwb, passBranch_idex, passBranch_exmem: std_logic;
	signal passAluop_idex, fwd_a_top, fwd_b_bot: std_logic_vector(1 downto 0);
	
begin

	pc_mux : mux2to1 generic map (n=>4) port map (reset, passpcHzd, initial_pc, mout);					--- multiplexer
	pc	: regN generic map (n=>4) port map (clock, mout, rout);												--- register
	---------- pc = pc +1 ------------------------------------------
	addpc : ripple_carry port map ('0', rout, "0001", update_pc);

	----------- IM -------------------------------------------------
	im : instruction_memory port map (clock, reset, rout, instr_from_im);
	
	------------- ID ------------------------------------------------
	id : instruction_decode port map (passim_ifid, MemWrite, MemRead, RegWrite, add_sub, ALUSrc, RegDst, MemtoReg, Branch, Jump, read_port1, read_port2, write_port, sign_ex, ALUOP); --changed
	
	------------- RF --------------------------------------------------
	rf : register_file port map (clock, reset, passRegWrite_memwb, read_port1, read_port2, passRegDstOut_memwb, MemToRegOut, src1, src2); --changed
	
	-------------ALU---------------------------------------------------
	add_ins : ALU port map (passaddsub_idex, fwd_a_output, ALUSrcOut, passaluop_idex, sum, ZERO2); --changed, changed src1
	
	----------Data Memory----------------------------------------------
	dm : data_memory port map (clock, reset, passMemWrite_exmem, passAluSum_exmem, passAluSum_exmem, passsrc2_exmem, data_mem_out); --changed, changed src2
	
	------------Mux to the RF------------------------------------------
	muxtoRF: mux2to1 generic map (n=>4) port map (RegDst, read_port2, write_port, RegDstOut); --change RegDst to passRegDst_idex?
	
	------------Mux to the ALU-----------------------------------------
	muxtoALU: mux2to1 generic map(n=>4) port map (passalusrc_idex, fwd_b_output, passsignex_idex, ALUSrcOut); --changed, changed src2
	
	---------Mux to Write Data of RF-----------------------------------
	muxtoWD: mux2to1 generic map(n=>4) port map (passMemRead_memwb, passAluSum_memwb, passDataMemOut_memwb, MemToRegOut); --changed
	
	-------------Ripple Carry for pc + 1-------------------------------
	RCarry: ripple_carry port map('0', passpcp_exmem, passsignex_exmem, RCarry_sum);
	
	----------Mux to jump Mux------------------------------------------
	BranchAndZero <= passBranch_exmem and passZERO2_exmem;
	muxtojmux: mux2to1 generic map (n=>4) port map (BranchAndZero, jumpmux_out, RCarry_sum, pc_update); --changed
	
	-----------Mux to PC-----------------------------------------------
	 muxtoPC: mux2to1 generic map (n=>4) port map (Jump, passpcHzd, passim_ifid(3 downto 0), jumpmux_out); --changed, 
	 
	 ------------IF/ID Pipeline----------------------------------------
	 ifidpc: regN generic map (n=>4) port map (clock, pcp1mux_out, passpcp_ifid); --pc+1 into the regN ifid pipeline
	 ifidim: regN generic map (n=>32) port map (clock, passimHzd, passim_ifid); --instruction into the regN ifid pipeline
	 
	 ------------ID/EX Pipeline----------------------------------------
	 idexregwrite: reg1 port map (clock, reset, RegWriteHzd, passRegWrite_idex); --RegWrite
	 idexmemwrite: reg1 port map (clock, reset, MemWriteHzd, passMemWrite_idex); --MemWrite
	 idexmemread: reg1 port map (clock, reset, MemReadHzd, passMemRead_idex); --MemRead
	 idexaddsub: reg1 port map (clock, reset, add_subHzd, passAddSub_idex); --Add_Sub
	 idexalusrc: reg1 port map (clock, reset, ALUSrcHzd, passAluSrc_idex); --ALUSrc
	 idexregdst: reg1 port map (clock, reset, RegDstHzd, passRegDst_idex); --RegDst
	 idexmemtoreg: reg1 port map (clock, reset, MemToRegHzd, passMemToReg_idex); --MemToReg
	 idexaluop: regN generic map (n=>2) port map (clock, ALUOPHzd, passAluop_idex); --ALUOP
	 idexbranch: reg1 port map (clock, reset, BranchHzd, passBranch_idex); --Branch
	 
	 idexpc: regN generic map(n=>4) port map (clock, passpcp_ifid, passpcp_idex); --pc+1 into the idex pipeline
	 idexsrc1: regN generic map (n=>4) port map (clock, src1, passsrc1_idex); --src1 into the idex pipeline
	 idexsrc2: regN generic map (n=>4) port map (clock, src2, passsrc2_idex); --src2 into the idex pipeline
	 idexsignex: regN generic map (n=>4) port map (clock, sign_ex, passsignex_idex); --sign_ex into the idex pipeline 
	 idexregdstout: regN generic map (n=>4) port map (clock, RegDstOut, passRegDstOut_idex); --regdstout into idex
	 idexreadport1: regN generic map (n=>4) port map (clock, read_port1, passread_port1_idex); --read_port1 into idex
	 idexreadport2: regN generic map (n=>4) port map (clock, read_port2, passread_port2_idex); --read_port2 into idex
	 
	 ------------EX/MEM Pipleline--------------------------------------
	 exmemmemwrite: reg1 port map (clock, reset, passMemWrite_idex, passMemWrite_exmem); --MemWrite
	 exmemmemtoreg: reg1 port map (clock, reset, passMemToReg_idex, passMemToReg_exmem); --MemToReg
	 exmemregwrite: reg1 port map (clock, reset, passRegWrite_idex, passRegWrite_exmem); --RegWrite
	 exmemzero2: reg1 port map (clock, reset, ZERO2, passZERO2_exmem); --ZERO2
	 exmembranch: reg1 port map (clock, reset, passBranch_idex, passBranch_exmem); --Branch
	 exmemmemread: reg1 port map (clock, reset, passMemRead_idex, passMemRead_exmem); --MemRead
	 
	 exmemsignex: regN generic map (n=>4) port map (clock, passsignex_idex, passsignex_exmem); --sign_ex into the exmem pipeline
	 exmempasspcp: regN generic map (n=>4) port map (clock, passpcp_idex, passpcp_exmem); --pc +1 into the exmem pipeline
	 exmemalusum: regN generic map (n=>4) port map (clock, sum, passAluSum_exmem); --alu result into the exmem pipeline
	 exmemsrc2: regN generic map (n=>4) port map (clock, passsrc2_idex, passsrc2_exmem); --src2 into the exmem pipeline
	 exmemmuxtoRF: regN generic map (n=>4) port map (clock, passRegDstOut_idex, passRegDstOut_exmem); --RedDstOut into the exmem pipeline
	 exmemreadport2: regN generic map (n=>4) port map (clock, passread_port2_idex, passread_port2_exmem); --read_port2 into idex
	 
	 ------------MEM/WB Pipleline--------------------------------------
	 memwbregwrite: reg1 port map (clock, reset, passRegWrite_exmem, passRegWrite_memwb); --RegWrite
	 memwbmemtoreg: reg1 port map (clock, reset, passMemToReg_exmem, passMemToReg_memwb); --MemtoReg
	 memwbmemread: reg1 port map (clock, reset, passMemRead_exmem, passMemRead_memwb); --MemRead
	 
	 memwbregdstout: regN generic map (n=>4) port map (clock, passRegDstOut_exmem, passRegDstOut_memwb); --regdstout into memwb pipeline
	 memwbdatamemout: regN generic map (n=>4) port map (clock, data_mem_out, passDataMemOut_memwb); --data_mem_out into memwb pipeline
	 memwbalusum: regN generic map (n=>4) port map (clock, passAluSum_exmem, passAluSum_memwb); --alu result into memwb pipeline
	 
	 -------------Forwarding Unit---------------------------------------
	 fwdunit: fwd_unit port map (passread_port2_idex, passread_port1_idex, passRegDstOut_exmem, passRegDstOut_memwb, passRegWrite_exmem, passRegWrite_memwb, fwd_a_top, fwd_b_bot);
	 
	 ------------Top Forwarding Mux-------------------------------------
	 topmuxtoalu: mux4to1 generic map (n=>4) port map (passAluSum_exmem, MemToRegOut, passsrc1_idex, "----", fwd_a_top, fwd_a_output); 
	 
	 ----------Bottom Forwarding Mux------------------------------------
	 botmuxtoalu: mux4to1 generic map (n=>4) port map (PassAluSum_exmem, MemToRegOut, passsrc2_idex, "----", fwd_b_bot, fwd_b_output);
	 
	 -------------Hazard Unit-------------------------------------------
	 hzdunit: hzd_unit port map (passRegDstOut_idex, read_port1, read_port2, passMemRead_idex, passRegWrite_idex, IFID_Write, MUX_Ctrl, PC_Write);
	 
	 -----------2to1 muxes controlling signals--------------------------
	 regwritehzdctrl: signal_mux2to1 port map (MUX_Ctrl, '0', RegWrite, RegWriteHzd);
	 memwritehzdctrl: signal_mux2to1 port map (MUX_Ctrl, '0', MemWrite, MemWriteHzd);
	 memreadhzdctrl: signal_mux2to1 port map (MUX_Ctrl, '0', MemRead, MemReadHzd);
	 addsubhzdctrl: signal_mux2to1 port map (MUX_Ctrl, '0', add_sub, add_subHzd);
	 alusrchzdctrl: signal_mux2to1 port map (MUX_Ctrl, '0', ALUSrc, ALUSrcHzd);
	 regdsthzdctrl: signal_mux2to1 port map (MUX_Ctrl, '0', RegDst, RegDstHzd);
	 memtoreghzdctrl: signal_mux2to1 port map (MUX_Ctrl, '0', MemToReg, MemToRegHzd);
	 aluophzdctrl: twobit_mux2to1 port map (MUX_Ctrl, "00", ALUop, ALUopHzd);
	 branchhzdctrl: signal_mux2to1 port map (MUX_Ctrl, '0', Branch, BranchHzd);
	 
	 ----------2to1 muxes controlling ifid pipe-------------------------
	 pchzd: mux2to1 generic map (n=>4) port map (IFID_Write, rout, pc_update, passpcHzd); --mux before pc_mux
	 instrhzd: mux2to1 generic map (n=>32) port map (IFID_Write, passim_ifid, instr_from_im, passimHzd); --instruction
	 
	 ---------mux in front of pc+1--------------------------------------
	 pcp1mux: mux2to1 generic map(n=>4) port map (IFID_Write, passpcp_ifid, update_pc, pcp1mux_out); --mux after addpc
	 
	current_pc <= rout; --changed it to RCarry_sum when (PC_Write = '0') else rout, then changed back

	result <= MemToRegOut;

end behaviour;