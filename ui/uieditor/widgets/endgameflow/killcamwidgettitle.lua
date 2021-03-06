-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Outcome.Outcome_title_PnlUR")
require("ui.uieditor.widgets.HUD.Outcome.Outcome_title_PnlCenter")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.HUD.Outcome.Outcome_title_PnlLine")
local function __FUNC_2FA_(arg0, arg1, arg2)
	local function __FUNC_397_(arg2, arg3)
		local registerVal4 = IsSelfInState(arg0, "VictoryGreen")
		if registerVal4 then
			registerVal4 = CoD.GetColorBlindColorForPlayer(arg1, "FriendlyBlue", {})
		else
			registerVal4 = IsSelfInState(arg0, "DefeatRed")
			if registerVal4 then
				registerVal4 = CoD.GetColorBlindColorForPlayer(arg1, "EnemyOrange", {})
			end
		end
		if registerVal4 ~= nil and {}.setting ~= nil and {}.setting ~= Enum.ColorVisionDeficiencies.CVD_OFF then
			registerVal4 = {}
			registerVal4 = {arg0.TopFrame, arg0.CornerFrameLL, arg0.CornerFrameUL, arg0.CornerFrameLR, arg0.CornerFrameUR, arg0.ColorBox, arg0.LineColorRight, arg0.LineColorLeft}
			for index5=1.000000, #arg0.CornerFrameLL, 1.000000 do
				registerVal4[index5]:setRGB(registerVal4.r, registerVal4.g, registerVal4.b)
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_397_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.KillcamWidgetTitle = registerVal2
local function __FUNC_738_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.KillcamWidgetTitle)
	registerVal2.id = "KillcamWidgetTitle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 702.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 55.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Outcome_title_PnlUR.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -1.000000, 27.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 27.500000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal3.OutcometitlePnlURInt:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.OutcometitlePnlUR = registerVal3
	local registerVal4 = CoD.Outcome_title_PnlUR.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -1.000000, 27.000000)
	registerVal4:setTopBottom(false, true, -27.500000, 0.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal4:setXRot(180.000000)
	registerVal4.OutcometitlePnlURInt:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.OutcometitlePnlLR = registerVal4
	local registerVal5 = CoD.Outcome_title_PnlUR.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -26.000000, 1.500000)
	registerVal5:setTopBottom(true, false, 0.000000, 27.500000)
	registerVal5:setRGB(0.500000, 0.500000, 0.500000)
	registerVal5:setYRot(180.000000)
	registerVal5.OutcometitlePnlURInt:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.OutcometitlePnlUL = registerVal5
	local registerVal6 = CoD.Outcome_title_PnlUR.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -26.000000, 1.500000)
	registerVal6:setTopBottom(false, true, -27.500000, 0.000000)
	registerVal6:setRGB(0.500000, 0.500000, 0.500000)
	registerVal6:setXRot(180.000000)
	registerVal6:setYRot(180.000000)
	registerVal6.OutcometitlePnlURInt:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.OutcometitlePnlLL = registerVal6
	local registerVal7 = CoD.Outcome_title_PnlCenter.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 54.900000)
	registerVal7:setRGB(0.500000, 0.500000, 0.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.OutcometitlePnlCenter = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 54.900000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.400000)
	registerVal2:addElement(registerVal8)
	registerVal2.TopFrame = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -27.500000, 0.000000)
	registerVal9:setTopBottom(false, true, -27.500000, 0.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.400000)
	registerVal9:setXRot(180.000000)
	registerVal9:setYRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_framecorner"))
	registerVal2:addElement(registerVal9)
	registerVal2.CornerFrameLL = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -27.500000, 0.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 27.500000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.400000)
	registerVal10:setYRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_framecorner"))
	registerVal2:addElement(registerVal10)
	registerVal2.CornerFrameUL = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, 0.000000, 27.500000)
	registerVal11:setTopBottom(false, true, -27.500000, 0.000000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.400000)
	registerVal11:setXRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_framecorner"))
	registerVal2:addElement(registerVal11)
	registerVal2.CornerFrameLR = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, 0.000000, 27.500000)
	registerVal12:setTopBottom(true, false, 0.000000, 27.500000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setAlpha(0.400000)
	registerVal12:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_framecorner"))
	registerVal2:addElement(registerVal12)
	registerVal2.CornerFrameUR = registerVal12
	local registerVal13 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, true, 2.000000, -5.000000)
	registerVal13:setRGB(1.000000, 0.430000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.ColorBox = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, -29.000000, 7.000000)
	registerVal14:setTopBottom(true, false, -2.000000, 2.000000)
	registerVal14:setAlpha(0.540000)
	registerVal14:setYRot(-180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Pixel201000 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, -29.000000, 7.000000)
	registerVal15:setTopBottom(false, true, -1.000000, 3.000000)
	registerVal15:setAlpha(0.540000)
	registerVal15:setYRot(-180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Pixel2010000 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, true, -7.000000, 29.000000)
	registerVal16:setTopBottom(true, false, -2.000000, 2.000000)
	registerVal16:setAlpha(0.540000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Pixel2010001 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, true, -7.000000, 29.000000)
	registerVal17:setTopBottom(false, true, -1.000000, 3.000000)
	registerVal17:setAlpha(0.540000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Pixel20100000 = registerVal17
	local registerVal18 = LUI.UITightText.new()
	registerVal18:setLeftRight(false, false, -351.000000, 351.000000)
	registerVal18:setTopBottom(true, false, 2.000000, 55.000000)
	registerVal18:setRGB(0.590000, 0.640000, 0.740000)
	registerVal18:setText(Engine.Localize("MP_KILLCAM_CAPS"))
	registerVal18:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal18:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal18:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
	registerVal18:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal18:setShaderVector(2.000000, -50.000000, -100.000000, 0.000000, 0.000000)
	registerVal18:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal18:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal18:setLetterSpacing(0.500000)
	local function __FUNC_1E21_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 30.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal18, "setText", __FUNC_1E21_)
	registerVal2:addElement(registerVal18)
	registerVal2.KillcamText0 = registerVal18
	local registerVal19 = CoD.Outcome_title_PnlLine.new(arg0, arg1)
	registerVal19:setLeftRight(false, true, 34.500000, 57.500000)
	registerVal19:setTopBottom(true, true, 25.280000, -25.280000)
	registerVal19:setRGB(0.500000, 0.500000, 0.500000)
	registerVal2:addElement(registerVal19)
	registerVal2.OutcometitlePnlLineRight = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(false, true, 34.500000, 57.500000)
	registerVal20:setTopBottom(true, true, 25.280000, -25.280000)
	registerVal20:setRGB(0.000000, 0.000000, 0.000000)
	registerVal20:setAlpha(0.400000)
	registerVal2:addElement(registerVal20)
	registerVal2.LineColorRight = registerVal20
	local registerVal21 = CoD.Outcome_title_PnlLine.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, -55.000000, -32.000000)
	registerVal21:setTopBottom(true, true, 25.780000, -25.780000)
	registerVal21:setRGB(0.500000, 0.500000, 0.500000)
	registerVal2:addElement(registerVal21)
	registerVal2.OutcometitlePnlLineLeft = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, -55.000000, -32.000000)
	registerVal22:setTopBottom(true, true, 25.770000, -25.770000)
	registerVal22:setRGB(0.000000, 0.000000, 0.000000)
	registerVal22:setAlpha(0.400000)
	registerVal2:addElement(registerVal22)
	registerVal2.LineColorLeft = registerVal22
	local registerVal23 = {}
	local registerVal24 = {}
	local function __FUNC_1E89_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.OutcometitlePnlUR:setLeftRight(false, true, -1.000000, 27.000000)
		registerVal2.OutcometitlePnlUR:setTopBottom(true, false, 0.000000, 27.500000)
		registerVal2.OutcometitlePnlUR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.OutcometitlePnlLR:setLeftRight(false, true, -1.000000, 27.000000)
		registerVal2.OutcometitlePnlLR:setTopBottom(false, true, -27.500000, 0.000000)
		registerVal2.OutcometitlePnlLR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.OutcometitlePnlUL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.OutcometitlePnlLL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.OutcometitlePnlCenter:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.OutcometitlePnlCenter:setTopBottom(true, false, 0.000000, 54.900000)
		registerVal2.OutcometitlePnlCenter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TopFrame:setLeftRight(true, true, 0.000000, -1.500000)
		registerVal2.TopFrame:setTopBottom(true, false, 0.000000, 55.000000)
		registerVal2.TopFrame:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.TopFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CornerFrameLL:setLeftRight(true, false, -27.500000, 0.000000)
		registerVal2.CornerFrameLL:setTopBottom(false, true, -27.500000, 0.000000)
		registerVal2.CornerFrameLL:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.CornerFrameLL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CornerFrameUL:setLeftRight(true, false, -27.500000, 0.000000)
		registerVal2.CornerFrameUL:setTopBottom(true, false, 0.000000, 27.500000)
		registerVal2.CornerFrameUL:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.CornerFrameUL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CornerFrameLR:setLeftRight(false, true, 0.000000, 27.500000)
		registerVal2.CornerFrameLR:setTopBottom(false, true, -27.500000, 0.000000)
		registerVal2.CornerFrameLR:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.CornerFrameLR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CornerFrameUR:setLeftRight(false, true, 0.000000, 27.500000)
		registerVal2.CornerFrameUR:setTopBottom(true, false, 0.000000, 27.500000)
		registerVal2.CornerFrameUR:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.CornerFrameUR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal18:completeAnimation()
		registerVal2.KillcamText0:setRGB(0.740000, 0.760000, 0.820000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal20:completeAnimation()
		registerVal2.LineColorRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.LineColorLeft:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.LineColorLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_1E89_
	registerVal23.DefaultState = registerVal24
	registerVal24 = {}
	local function __FUNC_27B7_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.OutcometitlePnlUR:setLeftRight(false, true, -1.000000, 26.500000)
		registerVal2.OutcometitlePnlUR:setTopBottom(true, false, 0.000000, 27.500000)
		registerVal2.OutcometitlePnlUR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.OutcometitlePnlLR:setLeftRight(false, true, -1.000000, 26.500000)
		registerVal2.OutcometitlePnlLR:setTopBottom(false, true, -27.500000, 0.000000)
		registerVal2.OutcometitlePnlLR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.OutcometitlePnlUL:setLeftRight(true, false, -26.000000, 1.500000)
		registerVal2.OutcometitlePnlUL:setTopBottom(true, false, 0.000000, 27.500000)
		registerVal2.OutcometitlePnlUL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.OutcometitlePnlLL:setLeftRight(true, false, -26.000000, 1.500000)
		registerVal2.OutcometitlePnlLL:setTopBottom(false, true, -27.500000, 0.000000)
		registerVal2.OutcometitlePnlLL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.OutcometitlePnlCenter:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.OutcometitlePnlCenter:setTopBottom(true, false, 0.000000, 54.900000)
		registerVal2.OutcometitlePnlCenter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TopFrame:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.TopFrame:setTopBottom(true, false, 0.000000, 55.000000)
		registerVal2.TopFrame:setRGB(0.360000, 1.000000, 0.150000)
		registerVal2.TopFrame:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CornerFrameLL:setLeftRight(true, false, -27.500000, 0.000000)
		registerVal2.CornerFrameLL:setTopBottom(false, true, -27.500000, 0.000000)
		registerVal2.CornerFrameLL:setRGB(0.360000, 1.000000, 0.150000)
		registerVal2.CornerFrameLL:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CornerFrameUL:setLeftRight(true, false, -27.500000, 0.000000)
		registerVal2.CornerFrameUL:setTopBottom(true, false, 0.000000, 27.500000)
		registerVal2.CornerFrameUL:setRGB(0.360000, 1.000000, 0.150000)
		registerVal2.CornerFrameUL:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CornerFrameLR:setLeftRight(false, true, 0.000000, 27.800000)
		registerVal2.CornerFrameLR:setTopBottom(false, true, -27.500000, 0.000000)
		registerVal2.CornerFrameLR:setRGB(0.360000, 1.000000, 0.150000)
		registerVal2.CornerFrameLR:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CornerFrameUR:setLeftRight(false, true, 0.000000, 27.800000)
		registerVal2.CornerFrameUR:setTopBottom(true, false, 0.000000, 27.500000)
		registerVal2.CornerFrameUR:setRGB(0.360000, 1.000000, 0.150000)
		registerVal2.CornerFrameUR:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ColorBox:setRGB(0.050000, 1.000000, 0.000000)
		registerVal2.ColorBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal18:completeAnimation()
		registerVal2.KillcamText0:setRGB(0.790000, 0.820000, 0.890000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.OutcometitlePnlLineRight:setLeftRight(false, true, 34.000000, 57.000000)
		registerVal2.OutcometitlePnlLineRight:setTopBottom(true, true, 25.300000, -25.250000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.LineColorRight:setLeftRight(false, true, 34.000000, 57.000000)
		registerVal2.LineColorRight:setTopBottom(true, true, 25.500000, -25.450000)
		registerVal2.LineColorRight:setRGB(0.360000, 1.000000, 0.150000)
		registerVal2.LineColorRight:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.LineColorLeft:setLeftRight(true, false, -55.000000, -32.000000)
		registerVal2.LineColorLeft:setTopBottom(true, true, 25.500000, -25.500000)
		registerVal2.LineColorLeft:setRGB(0.360000, 1.000000, 0.150000)
		registerVal2.LineColorLeft:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_27B7_
	registerVal23.VictoryGreen = registerVal24
	registerVal24 = {}
	local function __FUNC_33A6_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.OutcometitlePnlUR:setLeftRight(false, true, -1.000000, 27.000000)
		registerVal2.OutcometitlePnlUR:setTopBottom(true, false, 0.000000, 27.500000)
		registerVal2.OutcometitlePnlUR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.OutcometitlePnlLR:setLeftRight(false, true, -1.000000, 27.000000)
		registerVal2.OutcometitlePnlLR:setTopBottom(false, true, -27.500000, 0.000000)
		registerVal2.OutcometitlePnlLR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.OutcometitlePnlUL:setLeftRight(true, false, -26.000000, 1.500000)
		registerVal2.OutcometitlePnlUL:setTopBottom(true, false, 0.000000, 27.500000)
		registerVal2.OutcometitlePnlUL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.OutcometitlePnlLL:setLeftRight(true, false, -26.000000, 1.500000)
		registerVal2.OutcometitlePnlLL:setTopBottom(false, true, -27.500000, 0.000000)
		registerVal2.OutcometitlePnlLL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.OutcometitlePnlCenter:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.OutcometitlePnlCenter:setTopBottom(true, false, 0.000000, 54.900000)
		registerVal2.OutcometitlePnlCenter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TopFrame:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.TopFrame:setTopBottom(true, false, 0.100000, 54.900000)
		registerVal2.TopFrame:setRGB(1.000000, 0.010000, 0.000000)
		registerVal2.TopFrame:setAlpha(0.400000)
		registerVal2.TopFrame:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CornerFrameLL:setLeftRight(true, false, -27.500000, 0.000000)
		registerVal2.CornerFrameLL:setTopBottom(false, true, -27.500000, 0.000000)
		registerVal2.CornerFrameLL:setRGB(1.000000, 0.010000, 0.000000)
		registerVal2.CornerFrameLL:setAlpha(0.400000)
		registerVal2.CornerFrameLL:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CornerFrameUL:setLeftRight(true, false, -27.500000, 0.000000)
		registerVal2.CornerFrameUL:setTopBottom(true, false, 0.000000, 27.500000)
		registerVal2.CornerFrameUL:setRGB(1.000000, 0.010000, 0.000000)
		registerVal2.CornerFrameUL:setAlpha(0.400000)
		registerVal2.CornerFrameUL:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CornerFrameLR:setLeftRight(false, true, 0.000000, 27.500000)
		registerVal2.CornerFrameLR:setTopBottom(false, true, -27.500000, 0.000000)
		registerVal2.CornerFrameLR:setRGB(1.000000, 0.010000, 0.000000)
		registerVal2.CornerFrameLR:setAlpha(0.400000)
		registerVal2.CornerFrameLR:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CornerFrameUR:setLeftRight(false, true, 0.000000, 27.500000)
		registerVal2.CornerFrameUR:setTopBottom(true, false, 0.000000, 27.500000)
		registerVal2.CornerFrameUR:setRGB(1.000000, 0.010000, 0.000000)
		registerVal2.CornerFrameUR:setAlpha(0.400000)
		registerVal2.CornerFrameUR:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ColorBox:setRGB(1.000000, 0.010000, 0.000000)
		registerVal2.ColorBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal18:completeAnimation()
		registerVal2.KillcamText0:setRGB(0.790000, 0.820000, 0.890000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.OutcometitlePnlLineRight:setLeftRight(false, true, 34.000000, 57.000000)
		registerVal2.OutcometitlePnlLineRight:setTopBottom(true, true, 25.300000, -25.250000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.LineColorRight:setLeftRight(false, true, 34.000000, 57.000000)
		registerVal2.LineColorRight:setTopBottom(true, true, 25.500000, -25.400000)
		registerVal2.LineColorRight:setRGB(1.000000, 0.010000, 0.000000)
		registerVal2.LineColorRight:setAlpha(0.400000)
		registerVal2.LineColorRight:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.LineColorLeft:setLeftRight(true, false, -55.000000, -32.000000)
		registerVal2.LineColorLeft:setTopBottom(true, true, 25.500000, -25.500000)
		registerVal2.LineColorLeft:setRGB(1.000000, 0.010000, 0.000000)
		registerVal2.LineColorLeft:setAlpha(0.400000)
		registerVal2.LineColorLeft:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_33A6_
	registerVal23.DefeatRed = registerVal24
	registerVal24 = {}
	local function __FUNC_418C_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.OutcometitlePnlUR:setLeftRight(false, true, -1.000000, 27.000000)
		registerVal2.OutcometitlePnlUR:setTopBottom(true, false, 0.000000, 27.500000)
		registerVal2.OutcometitlePnlUR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.OutcometitlePnlLR:setLeftRight(false, true, -1.000000, 27.000000)
		registerVal2.OutcometitlePnlLR:setTopBottom(false, true, -27.500000, 0.000000)
		registerVal2.OutcometitlePnlLR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.OutcometitlePnlUL:setLeftRight(true, false, -26.000000, 1.500000)
		registerVal2.OutcometitlePnlUL:setTopBottom(true, false, 0.000000, 27.500000)
		registerVal2.OutcometitlePnlUL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.OutcometitlePnlLL:setLeftRight(true, false, -26.000000, 1.500000)
		registerVal2.OutcometitlePnlLL:setTopBottom(false, true, -27.500000, 0.000000)
		registerVal2.OutcometitlePnlLL:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.OutcometitlePnlCenter:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.OutcometitlePnlCenter:setTopBottom(true, false, 0.000000, 54.900000)
		registerVal2.OutcometitlePnlCenter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TopFrame:setLeftRight(true, true, 0.000000, -1.500000)
		registerVal2.TopFrame:setTopBottom(true, false, 0.000000, 55.000000)
		registerVal2.TopFrame:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.TopFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CornerFrameLL:setLeftRight(true, false, -27.500000, 0.000000)
		registerVal2.CornerFrameLL:setTopBottom(false, true, -27.500000, 0.000000)
		registerVal2.CornerFrameLL:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.CornerFrameLL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CornerFrameUL:setLeftRight(true, false, -27.500000, 0.000000)
		registerVal2.CornerFrameUL:setTopBottom(true, false, 0.000000, 27.500000)
		registerVal2.CornerFrameUL:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.CornerFrameUL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CornerFrameLR:setLeftRight(false, true, 0.000000, 27.500000)
		registerVal2.CornerFrameLR:setTopBottom(false, true, -27.500000, 0.000000)
		registerVal2.CornerFrameLR:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.CornerFrameLR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CornerFrameUR:setLeftRight(false, true, 0.000000, 27.500000)
		registerVal2.CornerFrameUR:setTopBottom(true, false, 0.000000, 27.500000)
		registerVal2.CornerFrameUR:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.CornerFrameUR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ColorBox:setRGB(1.000000, 0.520000, 0.000000)
		registerVal2.ColorBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal18:completeAnimation()
		registerVal2.KillcamText0:setRGB(0.740000, 0.760000, 0.820000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.OutcometitlePnlLineRight:setLeftRight(false, true, 34.000000, 57.000000)
		registerVal2.OutcometitlePnlLineRight:setTopBottom(true, true, 25.300000, -25.250000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.LineColorRight:setLeftRight(false, true, 34.000000, 57.000000)
		registerVal2.LineColorRight:setTopBottom(true, true, 25.300000, -25.250000)
		registerVal2.LineColorRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.LineColorLeft:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.LineColorLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_418C_
	registerVal23.OvertimeOrange = registerVal24
	registerVal2.clipsPerState = registerVal23
	local function __FUNC_4CE2_(arg0)
		arg0.OutcometitlePnlUR:close()
		arg0.OutcometitlePnlLR:close()
		arg0.OutcometitlePnlUL:close()
		arg0.OutcometitlePnlLL:close()
		arg0.OutcometitlePnlCenter:close()
		arg0.ColorBox:close()
		arg0.OutcometitlePnlLineRight:close()
		arg0.OutcometitlePnlLineLeft:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4CE2_)
	if __FUNC_2FA_ then
		__FUNC_2FA_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.KillcamWidgetTitle.new = __FUNC_738_
