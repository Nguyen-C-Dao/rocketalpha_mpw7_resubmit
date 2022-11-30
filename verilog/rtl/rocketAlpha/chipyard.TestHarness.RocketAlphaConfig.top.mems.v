module data_arrays_0_ext(
  input  [10:0] RW0_addr,
  input         RW0_clk,
  input  [63:0] RW0_wdata,
  output [63:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode,
  input  [7:0]  RW0_wmask
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [8:0] mem_0_0_addr0;
  wire  mem_0_0_clk0;
  wire [31:0] mem_0_0_din0;
  wire [31:0] mem_0_0_dout0;
  wire  mem_0_0_csb0;
  wire  mem_0_0_web0;
  wire [7:0] mem_0_0_wmask0;
  wire  mem_0_0_clk1;
  wire  mem_0_0_csb1;
  wire [8:0] mem_0_0_addr1;
  wire [8:0] mem_0_1_addr0;
  wire  mem_0_1_clk0;
  wire [31:0] mem_0_1_din0;
  wire [31:0] mem_0_1_dout0;
  wire  mem_0_1_csb0;
  wire  mem_0_1_web0;
  wire [7:0] mem_0_1_wmask0;
  wire  mem_0_1_clk1;
  wire  mem_0_1_csb1;
  wire [8:0] mem_0_1_addr1;
  wire [8:0] mem_1_0_addr0;
  wire  mem_1_0_clk0;
  wire [31:0] mem_1_0_din0;
  wire [31:0] mem_1_0_dout0;
  wire  mem_1_0_csb0;
  wire  mem_1_0_web0;
  wire [7:0] mem_1_0_wmask0;
  wire  mem_1_0_clk1;
  wire  mem_1_0_csb1;
  wire [8:0] mem_1_0_addr1;
  wire [8:0] mem_1_1_addr0;
  wire  mem_1_1_clk0;
  wire [31:0] mem_1_1_din0;
  wire [31:0] mem_1_1_dout0;
  wire  mem_1_1_csb0;
  wire  mem_1_1_web0;
  wire [7:0] mem_1_1_wmask0;
  wire  mem_1_1_clk1;
  wire  mem_1_1_csb1;
  wire [8:0] mem_1_1_addr1;
  wire [8:0] mem_2_0_addr0;
  wire  mem_2_0_clk0;
  wire [31:0] mem_2_0_din0;
  wire [31:0] mem_2_0_dout0;
  wire  mem_2_0_csb0;
  wire  mem_2_0_web0;
  wire [7:0] mem_2_0_wmask0;
  wire  mem_2_0_clk1;
  wire  mem_2_0_csb1;
  wire [8:0] mem_2_0_addr1;
  wire [8:0] mem_2_1_addr0;
  wire  mem_2_1_clk0;
  wire [31:0] mem_2_1_din0;
  wire [31:0] mem_2_1_dout0;
  wire  mem_2_1_csb0;
  wire  mem_2_1_web0;
  wire [7:0] mem_2_1_wmask0;
  wire  mem_2_1_clk1;
  wire  mem_2_1_csb1;
  wire [8:0] mem_2_1_addr1;
  wire [8:0] mem_3_0_addr0;
  wire  mem_3_0_clk0;
  wire [31:0] mem_3_0_din0;
  wire [31:0] mem_3_0_dout0;
  wire  mem_3_0_csb0;
  wire  mem_3_0_web0;
  wire [7:0] mem_3_0_wmask0;
  wire  mem_3_0_clk1;
  wire  mem_3_0_csb1;
  wire [8:0] mem_3_0_addr1;
  wire [8:0] mem_3_1_addr0;
  wire  mem_3_1_clk0;
  wire [31:0] mem_3_1_din0;
  wire [31:0] mem_3_1_dout0;
  wire  mem_3_1_csb0;
  wire  mem_3_1_web0;
  wire [7:0] mem_3_1_wmask0;
  wire  mem_3_1_clk1;
  wire  mem_3_1_csb1;
  wire [8:0] mem_3_1_addr1;
  wire [1:0] RW0_addr_sel = RW0_addr[10:9];
  reg [1:0] RW0_addr_sel_reg;
  wire [31:0] RW0_rdata_0_0 = mem_0_0_dout0;
  wire [31:0] RW0_rdata_0_1 = mem_0_1_dout0;
  wire [63:0] RW0_rdata_0 = {RW0_rdata_0_1,RW0_rdata_0_0};
  wire [31:0] RW0_rdata_1_0 = mem_1_0_dout0;
  wire [31:0] RW0_rdata_1_1 = mem_1_1_dout0;
  wire [63:0] RW0_rdata_1 = {RW0_rdata_1_1,RW0_rdata_1_0};
  wire [31:0] RW0_rdata_2_0 = mem_2_0_dout0;
  wire [31:0] RW0_rdata_2_1 = mem_2_1_dout0;
  wire [63:0] RW0_rdata_2 = {RW0_rdata_2_1,RW0_rdata_2_0};
  wire [31:0] RW0_rdata_3_0 = mem_3_0_dout0;
  wire [31:0] RW0_rdata_3_1 = mem_3_1_dout0;
  wire [63:0] RW0_rdata_3 = {RW0_rdata_3_1,RW0_rdata_3_0};
  wire  _GEN_0 = RW0_addr_sel == 2'h0;
  wire  _GEN_1 = RW0_en & RW0_addr_sel == 2'h0;
  wire  _GEN_2 = RW0_addr_sel == 2'h0;
  wire  _GEN_3 = RW0_wmode & RW0_addr_sel == 2'h0;
  wire  _GEN_4 = RW0_wmask[0];
  wire  _GEN_5 = RW0_wmask[0];
  wire  _GEN_6 = RW0_wmask[1];
  wire [1:0] _GEN_7 = {RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_8 = RW0_wmask[1];
  wire [2:0] _GEN_9 = {RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_10 = RW0_wmask[2];
  wire [3:0] _GEN_11 = {RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_12 = RW0_wmask[2];
  wire [4:0] _GEN_13 = {RW0_wmask[2],RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_14 = RW0_wmask[3];
  wire [5:0] _GEN_15 = {RW0_wmask[2],RW0_wmask[2],RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_16 = RW0_wmask[3];
  wire [6:0] _GEN_17 = {RW0_wmask[3],RW0_wmask[2],RW0_wmask[2],RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_18 = RW0_addr_sel == 2'h0;
  wire  _GEN_19 = RW0_en & RW0_addr_sel == 2'h0;
  wire  _GEN_20 = RW0_addr_sel == 2'h0;
  wire  _GEN_21 = RW0_wmode & RW0_addr_sel == 2'h0;
  wire  _GEN_22 = RW0_wmask[4];
  wire  _GEN_23 = RW0_wmask[4];
  wire  _GEN_24 = RW0_wmask[5];
  wire [1:0] _GEN_25 = {RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_26 = RW0_wmask[5];
  wire [2:0] _GEN_27 = {RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_28 = RW0_wmask[6];
  wire [3:0] _GEN_29 = {RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_30 = RW0_wmask[6];
  wire [4:0] _GEN_31 = {RW0_wmask[6],RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_32 = RW0_wmask[7];
  wire [5:0] _GEN_33 = {RW0_wmask[6],RW0_wmask[6],RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_34 = RW0_wmask[7];
  wire [6:0] _GEN_35 = {RW0_wmask[7],RW0_wmask[6],RW0_wmask[6],RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_36 = RW0_addr_sel == 2'h1;
  wire  _GEN_37 = RW0_en & RW0_addr_sel == 2'h1;
  wire  _GEN_38 = RW0_addr_sel == 2'h1;
  wire  _GEN_39 = RW0_wmode & RW0_addr_sel == 2'h1;
  wire  _GEN_40 = RW0_wmask[0];
  wire  _GEN_41 = RW0_wmask[0];
  wire  _GEN_42 = RW0_wmask[1];
  wire [1:0] _GEN_43 = {RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_44 = RW0_wmask[1];
  wire [2:0] _GEN_45 = {RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_46 = RW0_wmask[2];
  wire [3:0] _GEN_47 = {RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_48 = RW0_wmask[2];
  wire [4:0] _GEN_49 = {RW0_wmask[2],RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_50 = RW0_wmask[3];
  wire [5:0] _GEN_51 = {RW0_wmask[2],RW0_wmask[2],RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_52 = RW0_wmask[3];
  wire [6:0] _GEN_53 = {RW0_wmask[3],RW0_wmask[2],RW0_wmask[2],RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_54 = RW0_addr_sel == 2'h1;
  wire  _GEN_55 = RW0_en & RW0_addr_sel == 2'h1;
  wire  _GEN_56 = RW0_addr_sel == 2'h1;
  wire  _GEN_57 = RW0_wmode & RW0_addr_sel == 2'h1;
  wire  _GEN_58 = RW0_wmask[4];
  wire  _GEN_59 = RW0_wmask[4];
  wire  _GEN_60 = RW0_wmask[5];
  wire [1:0] _GEN_61 = {RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_62 = RW0_wmask[5];
  wire [2:0] _GEN_63 = {RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_64 = RW0_wmask[6];
  wire [3:0] _GEN_65 = {RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_66 = RW0_wmask[6];
  wire [4:0] _GEN_67 = {RW0_wmask[6],RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_68 = RW0_wmask[7];
  wire [5:0] _GEN_69 = {RW0_wmask[6],RW0_wmask[6],RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_70 = RW0_wmask[7];
  wire [6:0] _GEN_71 = {RW0_wmask[7],RW0_wmask[6],RW0_wmask[6],RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_72 = RW0_addr_sel == 2'h2;
  wire  _GEN_73 = RW0_en & RW0_addr_sel == 2'h2;
  wire  _GEN_74 = RW0_addr_sel == 2'h2;
  wire  _GEN_75 = RW0_wmode & RW0_addr_sel == 2'h2;
  wire  _GEN_76 = RW0_wmask[0];
  wire  _GEN_77 = RW0_wmask[0];
  wire  _GEN_78 = RW0_wmask[1];
  wire [1:0] _GEN_79 = {RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_80 = RW0_wmask[1];
  wire [2:0] _GEN_81 = {RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_82 = RW0_wmask[2];
  wire [3:0] _GEN_83 = {RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_84 = RW0_wmask[2];
  wire [4:0] _GEN_85 = {RW0_wmask[2],RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_86 = RW0_wmask[3];
  wire [5:0] _GEN_87 = {RW0_wmask[2],RW0_wmask[2],RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_88 = RW0_wmask[3];
  wire [6:0] _GEN_89 = {RW0_wmask[3],RW0_wmask[2],RW0_wmask[2],RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_90 = RW0_addr_sel == 2'h2;
  wire  _GEN_91 = RW0_en & RW0_addr_sel == 2'h2;
  wire  _GEN_92 = RW0_addr_sel == 2'h2;
  wire  _GEN_93 = RW0_wmode & RW0_addr_sel == 2'h2;
  wire  _GEN_94 = RW0_wmask[4];
  wire  _GEN_95 = RW0_wmask[4];
  wire  _GEN_96 = RW0_wmask[5];
  wire [1:0] _GEN_97 = {RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_98 = RW0_wmask[5];
  wire [2:0] _GEN_99 = {RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_100 = RW0_wmask[6];
  wire [3:0] _GEN_101 = {RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_102 = RW0_wmask[6];
  wire [4:0] _GEN_103 = {RW0_wmask[6],RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_104 = RW0_wmask[7];
  wire [5:0] _GEN_105 = {RW0_wmask[6],RW0_wmask[6],RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_106 = RW0_wmask[7];
  wire [6:0] _GEN_107 = {RW0_wmask[7],RW0_wmask[6],RW0_wmask[6],RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_108 = RW0_addr_sel == 2'h3;
  wire  _GEN_109 = RW0_en & RW0_addr_sel == 2'h3;
  wire  _GEN_110 = RW0_addr_sel == 2'h3;
  wire  _GEN_111 = RW0_wmode & RW0_addr_sel == 2'h3;
  wire  _GEN_112 = RW0_wmask[0];
  wire  _GEN_113 = RW0_wmask[0];
  wire  _GEN_114 = RW0_wmask[1];
  wire [1:0] _GEN_115 = {RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_116 = RW0_wmask[1];
  wire [2:0] _GEN_117 = {RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_118 = RW0_wmask[2];
  wire [3:0] _GEN_119 = {RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_120 = RW0_wmask[2];
  wire [4:0] _GEN_121 = {RW0_wmask[2],RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_122 = RW0_wmask[3];
  wire [5:0] _GEN_123 = {RW0_wmask[2],RW0_wmask[2],RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_124 = RW0_wmask[3];
  wire [6:0] _GEN_125 = {RW0_wmask[3],RW0_wmask[2],RW0_wmask[2],RW0_wmask[1],RW0_wmask[1],RW0_wmask[0],RW0_wmask[0]};
  wire  _GEN_126 = RW0_addr_sel == 2'h3;
  wire  _GEN_127 = RW0_en & RW0_addr_sel == 2'h3;
  wire  _GEN_128 = RW0_addr_sel == 2'h3;
  wire  _GEN_129 = RW0_wmode & RW0_addr_sel == 2'h3;
  wire  _GEN_130 = RW0_wmask[4];
  wire  _GEN_131 = RW0_wmask[4];
  wire  _GEN_132 = RW0_wmask[5];
  wire [1:0] _GEN_133 = {RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_134 = RW0_wmask[5];
  wire [2:0] _GEN_135 = {RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_136 = RW0_wmask[6];
  wire [3:0] _GEN_137 = {RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_138 = RW0_wmask[6];
  wire [4:0] _GEN_139 = {RW0_wmask[6],RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_140 = RW0_wmask[7];
  wire [5:0] _GEN_141 = {RW0_wmask[6],RW0_wmask[6],RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  wire  _GEN_142 = RW0_wmask[7];
  wire [6:0] _GEN_143 = {RW0_wmask[7],RW0_wmask[6],RW0_wmask[6],RW0_wmask[5],RW0_wmask[5],RW0_wmask[4],RW0_wmask[4]};
  sky130_sram_2kbyte_1rw1r_32x512_8 mem_0_0 (
    .addr0(mem_0_0_addr0),
    .clk0(mem_0_0_clk0),
    .din0(mem_0_0_din0),
    .dout0(mem_0_0_dout0),
    .csb0(mem_0_0_csb0),
    .web0(mem_0_0_web0),
    .wmask0(mem_0_0_wmask0),
    .clk1(mem_0_0_clk1),
    .csb1(mem_0_0_csb1),
    .addr1(mem_0_0_addr1)
  );
  sky130_sram_2kbyte_1rw1r_32x512_8 mem_0_1 (
    .addr0(mem_0_1_addr0),
    .clk0(mem_0_1_clk0),
    .din0(mem_0_1_din0),
    .dout0(mem_0_1_dout0),
    .csb0(mem_0_1_csb0),
    .web0(mem_0_1_web0),
    .wmask0(mem_0_1_wmask0),
    .clk1(mem_0_1_clk1),
    .csb1(mem_0_1_csb1),
    .addr1(mem_0_1_addr1)
  );
  sky130_sram_2kbyte_1rw1r_32x512_8 mem_1_0 (
    .addr0(mem_1_0_addr0),
    .clk0(mem_1_0_clk0),
    .din0(mem_1_0_din0),
    .dout0(mem_1_0_dout0),
    .csb0(mem_1_0_csb0),
    .web0(mem_1_0_web0),
    .wmask0(mem_1_0_wmask0),
    .clk1(mem_1_0_clk1),
    .csb1(mem_1_0_csb1),
    .addr1(mem_1_0_addr1)
  );
  sky130_sram_2kbyte_1rw1r_32x512_8 mem_1_1 (
    .addr0(mem_1_1_addr0),
    .clk0(mem_1_1_clk0),
    .din0(mem_1_1_din0),
    .dout0(mem_1_1_dout0),
    .csb0(mem_1_1_csb0),
    .web0(mem_1_1_web0),
    .wmask0(mem_1_1_wmask0),
    .clk1(mem_1_1_clk1),
    .csb1(mem_1_1_csb1),
    .addr1(mem_1_1_addr1)
  );
  sky130_sram_2kbyte_1rw1r_32x512_8 mem_2_0 (
    .addr0(mem_2_0_addr0),
    .clk0(mem_2_0_clk0),
    .din0(mem_2_0_din0),
    .dout0(mem_2_0_dout0),
    .csb0(mem_2_0_csb0),
    .web0(mem_2_0_web0),
    .wmask0(mem_2_0_wmask0),
    .clk1(mem_2_0_clk1),
    .csb1(mem_2_0_csb1),
    .addr1(mem_2_0_addr1)
  );
  sky130_sram_2kbyte_1rw1r_32x512_8 mem_2_1 (
    .addr0(mem_2_1_addr0),
    .clk0(mem_2_1_clk0),
    .din0(mem_2_1_din0),
    .dout0(mem_2_1_dout0),
    .csb0(mem_2_1_csb0),
    .web0(mem_2_1_web0),
    .wmask0(mem_2_1_wmask0),
    .clk1(mem_2_1_clk1),
    .csb1(mem_2_1_csb1),
    .addr1(mem_2_1_addr1)
  );
  sky130_sram_2kbyte_1rw1r_32x512_8 mem_3_0 (
    .addr0(mem_3_0_addr0),
    .clk0(mem_3_0_clk0),
    .din0(mem_3_0_din0),
    .dout0(mem_3_0_dout0),
    .csb0(mem_3_0_csb0),
    .web0(mem_3_0_web0),
    .wmask0(mem_3_0_wmask0),
    .clk1(mem_3_0_clk1),
    .csb1(mem_3_0_csb1),
    .addr1(mem_3_0_addr1)
  );
  sky130_sram_2kbyte_1rw1r_32x512_8 mem_3_1 (
    .addr0(mem_3_1_addr0),
    .clk0(mem_3_1_clk0),
    .din0(mem_3_1_din0),
    .dout0(mem_3_1_dout0),
    .csb0(mem_3_1_csb0),
    .web0(mem_3_1_web0),
    .wmask0(mem_3_1_wmask0),
    .clk1(mem_3_1_clk1),
    .csb1(mem_3_1_csb1),
    .addr1(mem_3_1_addr1)
  );
  assign RW0_rdata = RW0_addr_sel_reg == 2'h0 ? RW0_rdata_0 : RW0_addr_sel_reg == 2'h1 ? RW0_rdata_1 : RW0_addr_sel_reg
     == 2'h2 ? RW0_rdata_2 : RW0_addr_sel_reg == 2'h3 ? RW0_rdata_3 : 64'h0;
  assign mem_0_0_addr0 = RW0_addr[8:0];
  assign mem_0_0_clk0 = RW0_clk;
  assign mem_0_0_din0 = RW0_wdata[31:0];
  assign mem_0_0_csb0 = ~(RW0_en & RW0_addr_sel == 2'h0);
  assign mem_0_0_web0 = ~(RW0_wmode & RW0_addr_sel == 2'h0);
  assign mem_0_0_wmask0 = {RW0_wmask[3],_GEN_17};
  assign mem_0_0_clk1 = 1'h0;
  assign mem_0_0_csb1 = 1'h0;
  assign mem_0_0_addr1 = 9'h0;
  assign mem_0_1_addr0 = RW0_addr[8:0];
  assign mem_0_1_clk0 = RW0_clk;
  assign mem_0_1_din0 = RW0_wdata[63:32];
  assign mem_0_1_csb0 = ~(RW0_en & RW0_addr_sel == 2'h0);
  assign mem_0_1_web0 = ~(RW0_wmode & RW0_addr_sel == 2'h0);
  assign mem_0_1_wmask0 = {RW0_wmask[7],_GEN_35};
  assign mem_0_1_clk1 = 1'h0;
  assign mem_0_1_csb1 = 1'h0;
  assign mem_0_1_addr1 = 9'h0;
  assign mem_1_0_addr0 = RW0_addr[8:0];
  assign mem_1_0_clk0 = RW0_clk;
  assign mem_1_0_din0 = RW0_wdata[31:0];
  assign mem_1_0_csb0 = ~(RW0_en & RW0_addr_sel == 2'h1);
  assign mem_1_0_web0 = ~(RW0_wmode & RW0_addr_sel == 2'h1);
  assign mem_1_0_wmask0 = {RW0_wmask[3],_GEN_17};
  assign mem_1_0_clk1 = 1'h0;
  assign mem_1_0_csb1 = 1'h0;
  assign mem_1_0_addr1 = 9'h0;
  assign mem_1_1_addr0 = RW0_addr[8:0];
  assign mem_1_1_clk0 = RW0_clk;
  assign mem_1_1_din0 = RW0_wdata[63:32];
  assign mem_1_1_csb0 = ~(RW0_en & RW0_addr_sel == 2'h1);
  assign mem_1_1_web0 = ~(RW0_wmode & RW0_addr_sel == 2'h1);
  assign mem_1_1_wmask0 = {RW0_wmask[7],_GEN_35};
  assign mem_1_1_clk1 = 1'h0;
  assign mem_1_1_csb1 = 1'h0;
  assign mem_1_1_addr1 = 9'h0;
  assign mem_2_0_addr0 = RW0_addr[8:0];
  assign mem_2_0_clk0 = RW0_clk;
  assign mem_2_0_din0 = RW0_wdata[31:0];
  assign mem_2_0_csb0 = ~(RW0_en & RW0_addr_sel == 2'h2);
  assign mem_2_0_web0 = ~(RW0_wmode & RW0_addr_sel == 2'h2);
  assign mem_2_0_wmask0 = {RW0_wmask[3],_GEN_17};
  assign mem_2_0_clk1 = 1'h0;
  assign mem_2_0_csb1 = 1'h0;
  assign mem_2_0_addr1 = 9'h0;
  assign mem_2_1_addr0 = RW0_addr[8:0];
  assign mem_2_1_clk0 = RW0_clk;
  assign mem_2_1_din0 = RW0_wdata[63:32];
  assign mem_2_1_csb0 = ~(RW0_en & RW0_addr_sel == 2'h2);
  assign mem_2_1_web0 = ~(RW0_wmode & RW0_addr_sel == 2'h2);
  assign mem_2_1_wmask0 = {RW0_wmask[7],_GEN_35};
  assign mem_2_1_clk1 = 1'h0;
  assign mem_2_1_csb1 = 1'h0;
  assign mem_2_1_addr1 = 9'h0;
  assign mem_3_0_addr0 = RW0_addr[8:0];
  assign mem_3_0_clk0 = RW0_clk;
  assign mem_3_0_din0 = RW0_wdata[31:0];
  assign mem_3_0_csb0 = ~(RW0_en & RW0_addr_sel == 2'h3);
  assign mem_3_0_web0 = ~(RW0_wmode & RW0_addr_sel == 2'h3);
  assign mem_3_0_wmask0 = {RW0_wmask[3],_GEN_17};
  assign mem_3_0_clk1 = 1'h0;
  assign mem_3_0_csb1 = 1'h0;
  assign mem_3_0_addr1 = 9'h0;
  assign mem_3_1_addr0 = RW0_addr[8:0];
  assign mem_3_1_clk0 = RW0_clk;
  assign mem_3_1_din0 = RW0_wdata[63:32];
  assign mem_3_1_csb0 = ~(RW0_en & RW0_addr_sel == 2'h3);
  assign mem_3_1_web0 = ~(RW0_wmode & RW0_addr_sel == 2'h3);
  assign mem_3_1_wmask0 = {RW0_wmask[7],_GEN_35};
  assign mem_3_1_clk1 = 1'h0;
  assign mem_3_1_csb1 = 1'h0;
  assign mem_3_1_addr1 = 9'h0;
  always @(posedge RW0_clk) begin
    if (RW0_en) begin
      RW0_addr_sel_reg <= RW0_addr_sel;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  RW0_addr_sel_reg = _RAND_0[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module tag_array_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [20:0] RW0_wdata,
  output [20:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode,
  input         RW0_wmask
);
  wire [7:0] mem_0_0_addr0;
  wire  mem_0_0_clk0;
  wire [31:0] mem_0_0_din0;
  wire [31:0] mem_0_0_dout0;
  wire  mem_0_0_csb0;
  wire  mem_0_0_web0;
  wire [7:0] mem_0_0_wmask0;
  wire  mem_0_0_clk1;
  wire  mem_0_0_csb1;
  wire [7:0] mem_0_0_addr1;
  wire [20:0] RW0_rdata_0_0 = mem_0_0_dout0[20:0];
  wire [20:0] RW0_rdata_0 = RW0_rdata_0_0;
  wire [1:0] _GEN_0 = {RW0_wmask,RW0_wmask};
  wire [2:0] _GEN_1 = {RW0_wmask,RW0_wmask,RW0_wmask};
  wire [3:0] _GEN_2 = {RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask};
  wire [4:0] _GEN_3 = {RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask};
  wire [5:0] _GEN_4 = {RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask};
  wire [6:0] _GEN_5 = {1'h0,RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask};
  sky130_sram_1kbyte_1rw1r_32x256_8 mem_0_0 (
    .addr0(mem_0_0_addr0),
    .clk0(mem_0_0_clk0),
    .din0(mem_0_0_din0),
    .dout0(mem_0_0_dout0),
    .csb0(mem_0_0_csb0),
    .web0(mem_0_0_web0),
    .wmask0(mem_0_0_wmask0),
    .clk1(mem_0_0_clk1),
    .csb1(mem_0_0_csb1),
    .addr1(mem_0_0_addr1)
  );
  assign RW0_rdata = mem_0_0_dout0[20:0];
  assign mem_0_0_addr0 = {{2'd0}, RW0_addr};
  assign mem_0_0_clk0 = RW0_clk;
  assign mem_0_0_din0 = {{11'd0}, RW0_wdata};
  assign mem_0_0_csb0 = ~RW0_en;
  assign mem_0_0_web0 = ~RW0_wmode;
  assign mem_0_0_wmask0 = {1'h0,_GEN_5};
  assign mem_0_0_clk1 = 1'h0;
  assign mem_0_0_csb1 = 1'h0;
  assign mem_0_0_addr1 = 8'h0;
endmodule
module data_arrays_0_0_ext(
  input  [8:0]  RW0_addr,
  input         RW0_clk,
  input  [31:0] RW0_wdata,
  output [31:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode,
  input         RW0_wmask
);
  wire [8:0] mem_0_0_addr0;
  wire  mem_0_0_clk0;
  wire [31:0] mem_0_0_din0;
  wire [31:0] mem_0_0_dout0;
  wire  mem_0_0_csb0;
  wire  mem_0_0_web0;
  wire [7:0] mem_0_0_wmask0;
  wire  mem_0_0_clk1;
  wire  mem_0_0_csb1;
  wire [8:0] mem_0_0_addr1;
  wire [31:0] RW0_rdata_0_0 = mem_0_0_dout0;
  wire [31:0] RW0_rdata_0 = RW0_rdata_0_0;
  wire [1:0] _GEN_0 = {RW0_wmask,RW0_wmask};
  wire [2:0] _GEN_1 = {RW0_wmask,RW0_wmask,RW0_wmask};
  wire [3:0] _GEN_2 = {RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask};
  wire [4:0] _GEN_3 = {RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask};
  wire [5:0] _GEN_4 = {RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask};
  wire [6:0] _GEN_5 = {RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask,RW0_wmask};
  sky130_sram_2kbyte_1rw1r_32x512_8 mem_0_0 (
    .addr0(mem_0_0_addr0),
    .clk0(mem_0_0_clk0),
    .din0(mem_0_0_din0),
    .dout0(mem_0_0_dout0),
    .csb0(mem_0_0_csb0),
    .web0(mem_0_0_web0),
    .wmask0(mem_0_0_wmask0),
    .clk1(mem_0_0_clk1),
    .csb1(mem_0_0_csb1),
    .addr1(mem_0_0_addr1)
  );
  assign RW0_rdata = mem_0_0_dout0;
  assign mem_0_0_addr0 = RW0_addr;
  assign mem_0_0_clk0 = RW0_clk;
  assign mem_0_0_din0 = RW0_wdata;
  assign mem_0_0_csb0 = ~RW0_en;
  assign mem_0_0_web0 = ~RW0_wmode;
  assign mem_0_0_wmask0 = {RW0_wmask,_GEN_5};
  assign mem_0_0_clk1 = 1'h0;
  assign mem_0_0_csb1 = 1'h0;
  assign mem_0_0_addr1 = 9'h0;
endmodule
