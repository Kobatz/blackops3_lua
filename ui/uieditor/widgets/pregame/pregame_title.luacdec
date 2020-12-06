-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Pregame_Title = registerVal1
function CoD.Pregame_Title.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_Title)
	registerVal2.id = "Pregame_Title"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 702.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 2.000000, -5.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 2.000000, -5.000000)
	registerVal4:setAlpha(0.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.FETitleNumBrdr0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -29.000000, 7.000000)
	registerVal5:setTopBottom(true, false, 1.000000, 5.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setYRot(-180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Pixel201000 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -29.000000, 7.000000)
	registerVal6:setTopBottom(false, true, -7.000000, -3.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setYRot(-180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Pixel2010000 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -7.000000, 29.000000)
	registerVal7:setTopBottom(true, false, 1.000000, 5.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Pixel2010001 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -7.000000, 29.000000)
	registerVal8:setTopBottom(false, true, -7.000000, -3.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Pixel20100000 = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(false, false, -344.000000, 344.000000)
	registerVal9:setTopBottom(true, false, 6.000000, 30.000000)
	registerVal9:setAlpha(0.850000)
	registerVal9:setText(Engine.Localize("MP_KILLCAM_CAPS"))
	registerVal9:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal9:setLetterSpacing(0.500000)
	local function __FUNC_DC2_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 30.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal9, "setText", __FUNC_DC2_)
	registerVal2:addElement(registerVal9)
	registerVal2.KillcamText0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -93.000000, -12.000000)
	registerVal10:setTopBottom(true, false, -20.500000, 60.500000)
	local function __FUNC_E29_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "MapInfo", "gameTypeIcon", __FUNC_E29_)
	registerVal2:addElement(registerVal10)
	registerVal2.GamemodeIcon = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_EDC_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal9:completeAnimation()
		registerVal2.KillcamText0:setLeftRight(false, false, -344.000000, 344.000000)
		registerVal2.KillcamText0:setTopBottom(true, false, 6.000000, 30.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_EDC_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_103D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal9:completeAnimation()
		registerVal2.KillcamText0:setRGB(0.000000, 1.000000, 0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_103D_
	registerVal11.VictoryGreen = registerVal12
	registerVal12 = {}
	local function __FUNC_1146_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal9:completeAnimation()
		registerVal2.KillcamText0:setRGB(1.000000, 0.030000, 0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_1146_
	registerVal11.DefeatRed = registerVal12
	registerVal2.clipsPerState = registerVal11
	local function __FUNC_1253_(arg0)
		arg0.FEButtonPanel0:close()
		arg0.FETitleNumBrdr0:close()
		arg0.GamemodeIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1253_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

