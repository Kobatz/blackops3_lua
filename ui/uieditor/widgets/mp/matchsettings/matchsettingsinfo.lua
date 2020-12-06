-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MP.MatchSettings.matchSettingsTitle")
require("ui.uieditor.widgets.verticalScrollingTextBox")
require("ui.uieditor.widgets.Freerun.FR_BestTime")
require("ui.uieditor.widgets.Freerun.FR_Difficulty")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.matchSettingsInfo = registerVal1
function CoD.matchSettingsInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.matchSettingsInfo)
	registerVal2.id = "matchSettingsInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 450.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 550.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -5.000000, 456.000000)
	registerVal3:setTopBottom(true, false, -4.000000, 319.950000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 75.500000, -75.500000)
	registerVal4:setTopBottom(true, true, 7.970000, -243.030000)
	local function __FUNC_E9E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(MapImageToModPreview(registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_E9E_)
	registerVal2:addElement(registerVal4)
	registerVal2.image = registerVal4
	local registerVal5 = CoD.matchSettingsTitle.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 4.000000, 453.000000)
	registerVal5:setTopBottom(false, true, -222.000000, -187.000000)
	local function __FUNC_F76_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.TitleBox.ScorestreaksLabel:setText(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal2, "text", true, __FUNC_F76_)
	registerVal2:addElement(registerVal5)
	registerVal2.TitleBox = registerVal5
	local registerVal6 = CoD.verticalScrollingTextBox.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 4.000000, 465.000000)
	registerVal6:setTopBottom(true, false, 383.000000, 563.000000)
	registerVal6.textBox:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_104D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "description", true, __FUNC_104D_)
	registerVal2:addElement(registerVal6)
	registerVal2.Description = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, -234.050000)
	registerVal7:setAlpha(0.430000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal7:setShaderVector(0.000000, 0.008889, 0.012660, 0.000000, 0.000000)
	registerVal7:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Border = registerVal7
	local registerVal8 = CoD.FR_BestTime.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -139.000000, -2.000000)
	registerVal8:setTopBottom(false, true, -295.050000, -233.050000)
	registerVal8.BestTimeValueText:setText(Engine.Localize("--:--:--"))
	registerVal2:addElement(registerVal8)
	registerVal2.FRBestTime = registerVal8
	local registerVal9 = CoD.FR_Difficulty.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 3.000000, 226.000000)
	registerVal9:setTopBottom(false, true, -325.050000, -303.050000)
	local function __FUNC_1123_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.SubTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "location", true, __FUNC_1123_)
	registerVal2:addElement(registerVal9)
	registerVal2.FRDifficulty = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_11F8_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.image:setLeftRight(true, true, 0.000000, -11.000000)
		registerVal2.image:setTopBottom(true, true, 0.000000, -299.750000)
		registerVal2.image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TitleBox:setLeftRight(true, false, 0.000000, 251.000000)
		registerVal2.TitleBox:setTopBottom(false, true, -285.000000, -250.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.Border:setLeftRight(true, true, -2.000000, -9.000000)
		registerVal2.Border:setTopBottom(true, true, -1.000000, -298.040000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FRBestTime:setLeftRight(false, true, -145.000000, -8.000000)
		registerVal2.FRBestTime:setTopBottom(false, true, -358.040000, -296.040000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_11F8_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_15B3_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.image:setLeftRight(true, false, 75.500000, 374.500000)
		registerVal2.image:setTopBottom(true, false, 7.970000, 306.970000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TitleBox:setLeftRight(true, false, 1.000000, 450.000000)
		registerVal2.TitleBox:setTopBottom(false, true, -222.000000, -187.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.Border:setLeftRight(true, false, 0.000000, 450.000000)
		registerVal2.Border:setTopBottom(true, false, 0.000000, 315.950000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FRDifficulty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_15B3_
	registerVal10.AspectRatio_1x1 = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_1909_(arg0)
		arg0.TitleBox:close()
		arg0.Description:close()
		arg0.FRBestTime:close()
		arg0.FRDifficulty:close()
		arg0.image:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1909_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

