module top(input clk, stb, di, output do);
	localparam integer DIN_N = 8;
	localparam integer DOUT_N = 8;

	reg [DIN_N-1:0] din;
	wire [DOUT_N-1:0] dout;

	reg [DIN_N-1:0] din_shr;
	reg [DOUT_N-1:0] dout_shr;

	always @(posedge clk) begin
		din_shr <= {din_shr, di};
		dout_shr <= {dout_shr, din_shr[DIN_N-1]};
		if (stb) begin
			din <= din_shr;
			dout_shr <= dout;
		end
	end

	assign do = dout_shr[DOUT_N-1];





    parameter INIT = 256'h0000000000000000000000000000000000000000000000000000000000000000;

	//(* LOC=LOC, BEL=BEL, KEEP, DONT_TOUCH *)
	(* KEEP, DONT_TOUCH *)
    RAMB36E1 #(
            .INITP_00(INIT),
            .INITP_01(INIT),
            .INITP_02(INIT),
            .INITP_03(INIT),
            .INITP_04(INIT),
            .INITP_05(INIT),
            .INITP_06(INIT),
            .INITP_07(INIT),
            .INITP_08(INIT),
            .INITP_09(INIT),
            .INITP_0A(INIT),
            .INITP_0B(INIT),
            .INITP_0C(INIT),
            .INITP_0D(INIT),
            .INITP_0E(INIT),
            .INITP_0F(INIT),

            .INIT_00(INIT),
            .INIT_01(INIT),
            .INIT_02(INIT),
            .INIT_03(INIT),
            .INIT_04(INIT),
            .INIT_05(INIT),
            .INIT_06(INIT),
            .INIT_07(INIT),
            .INIT_08(INIT),
            .INIT_09(INIT),
            .INIT_0A(INIT),
            .INIT_0B(INIT),
            .INIT_0C(INIT),
            .INIT_0D(INIT),
            .INIT_0E(INIT),
            .INIT_0F(INIT),
            .INIT_10(INIT),
            .INIT_11(INIT),
            .INIT_12(INIT),
            .INIT_13(INIT),
            .INIT_14(INIT),
            .INIT_15(INIT),
            .INIT_16(INIT),
            .INIT_17(INIT),
            .INIT_18(INIT),
            .INIT_19(INIT),
            .INIT_1A(INIT),
            .INIT_1B(INIT),
            .INIT_1C(INIT),
            .INIT_1D(INIT),
            .INIT_1E(INIT),
            .INIT_1F(INIT),
            .INIT_20(INIT),
            .INIT_21(INIT),
            .INIT_22(INIT),
            .INIT_23(INIT),
            .INIT_24(INIT),
            .INIT_25(INIT),
            .INIT_26(INIT),
            .INIT_27(INIT),
            .INIT_28(INIT),
            .INIT_29(INIT),
            .INIT_2A(INIT),
            .INIT_2B(INIT),
            .INIT_2C(INIT),
            .INIT_2D(INIT),
            .INIT_2E(INIT),
            .INIT_2F(INIT),
            .INIT_30(INIT),
            .INIT_31(INIT),
            .INIT_32(INIT),
            .INIT_33(INIT),
            .INIT_34(INIT),
            .INIT_35(INIT),
            .INIT_36(INIT),
            .INIT_37(INIT),
            .INIT_38(INIT),
            .INIT_39(INIT),
            .INIT_3A(INIT),
            .INIT_3B(INIT),
            .INIT_3C(INIT),
            .INIT_3D(INIT),
            .INIT_3E(INIT),
            .INIT_3F(INIT),

            .INIT_40(INIT),
            .INIT_41(INIT),
            .INIT_42(INIT),
            .INIT_43(INIT),
            .INIT_44(INIT),
            .INIT_45(INIT),
            .INIT_46(INIT),
            .INIT_47(INIT),
            .INIT_48(INIT),
            .INIT_49(INIT),
            .INIT_4A(INIT),
            .INIT_4B(INIT),
            .INIT_4C(INIT),
            .INIT_4D(INIT),
            .INIT_4E(INIT),
            .INIT_4F(INIT),
            .INIT_50(INIT),
            .INIT_51(INIT),
            .INIT_52(INIT),
            .INIT_53(INIT),
            .INIT_54(INIT),
            .INIT_55(INIT),
            .INIT_56(INIT),
            .INIT_57(INIT),
            .INIT_58(INIT),
            .INIT_59(INIT),
            .INIT_5A(INIT),
            .INIT_5B(INIT),
            .INIT_5C(INIT),
            .INIT_5D(INIT),
            .INIT_5E(INIT),
            .INIT_5F(INIT),
            .INIT_60(INIT),
            .INIT_61(INIT),
            .INIT_62(INIT),
            .INIT_63(INIT),
            .INIT_64(INIT),
            .INIT_65(INIT),
            .INIT_66(INIT),
            .INIT_67(INIT),
            .INIT_68(INIT),
            .INIT_69(INIT),
            .INIT_6A(INIT),
            .INIT_6B(INIT),
            .INIT_6C(INIT),
            .INIT_6D(INIT),
            .INIT_6E(INIT),
            .INIT_6F(INIT),
            .INIT_70(INIT),
            .INIT_71(INIT),
            .INIT_72(INIT),
            .INIT_73(INIT),
            .INIT_74(INIT),
            .INIT_75(INIT),
            .INIT_76(INIT),
            .INIT_77(INIT),
            .INIT_78(INIT),
            .INIT_79(INIT),
            .INIT_7A(INIT),
            .INIT_7B(INIT),
            .INIT_7C(INIT),
            .INIT_7D(INIT),
            .INIT_7E(INIT),
            .INIT_7F(INIT),

            .IS_CLKARDCLK_INVERTED(1'b0),
            .IS_CLKBWRCLK_INVERTED(1'b0),
            .IS_ENARDEN_INVERTED(1'b0),
            .IS_ENBWREN_INVERTED(1'b0),
            .IS_RSTRAMARSTRAM_INVERTED(1'b1),
            .IS_RSTRAMB_INVERTED(1'b0),
            .IS_RSTREGARSTREG_INVERTED(1'b0),
            .IS_RSTREGB_INVERTED(1'b0),
            .RAM_MODE("TDP"),
            .WRITE_MODE_A("WRITE_FIRST"),
            .WRITE_MODE_B("WRITE_FIRST")
        ) ram (
            .CLKARDCLK(din[0]),
            .CLKBWRCLK(din[1]),
            .ENARDEN(din[2]),
            .ENBWREN(din[3]),
            .REGCEAREGCE(din[4]),
            .REGCEB(din[5]),
            .RSTRAMARSTRAM(din[6]),
            .RSTRAMB(din[7]),
            .RSTREGARSTREG(din[0]),
            .RSTREGB(din[1]),
            .ADDRARDADDR(din[2]),
            .ADDRBWRADDR(din[3]),
            .DIADI(din[4]),
            .DIBDI(din[5]),
            .DIPADIP(din[6]),
            .DIPBDIP(din[7]),
            .WEA(din[0]),
            .WEBWE(din[1]),
            .DOADO(dout[0]),
            .DOBDO(dout[1]),
            .DOPADOP(dout[2]),
            .DOPBDOP(dout[3]));
endmodule

