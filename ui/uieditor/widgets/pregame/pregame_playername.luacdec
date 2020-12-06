-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ListHeader")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Pregame_PlayerName = registerVal1
function CoD.Pregame_PlayerName.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_PlayerName)
	registerVal2.id = "Pregame_PlayerName"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 220.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 248.000000)
	registerVal3:setTopBottom(true, false, -4.000000, 22.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_B68_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "gamertag", true, __FUNC_B68_)
	registerVal2:addElement(registerVal3)
	registerVal2.Name = registerVal3
	local registerVal4 = CoD.FE_ListHeader.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 110.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4.btnDisplayTextStroke:setRGB(1.000000, 1.000000, 1.000000)
	registerVal4.btnDisplayTextStroke:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal4.btnDisplayTextStroke:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal4.btnDisplayTextStroke:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_C22_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "gamertag", true, __FUNC_C22_)
	registerVal2:addElement(registerVal4)
	registerVal2.ListHeader = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 5.000000, 220.000000)
	registerVal5:setTopBottom(false, false, -9.000000, 11.000000)
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_D04_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "gamertag", true, __FUNC_D04_)
	local function __FUNC_DBE_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 15.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_DBE_)
	registerVal2:addElement(registerVal5)
	registerVal2.btnDisplayTextStroke = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_E1D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Name:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.btnDisplayTextStroke:completeAnimation()
		registerVal2.ListHeader.btnDisplayTextStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.btnDisplayTextStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_E1D_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_103A_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Name:setRGB(ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b)
		registerVal2.Name:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.btnDisplayTextStroke:completeAnimation()
		registerVal2.ListHeader:setAlpha(0.000000)
		registerVal2.ListHeader.btnDisplayTextStroke:setRGB(ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.btnDisplayTextStroke:setRGB(1.000000, 0.840000, 0.040000)
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
		registerVal2.btnDisplayTextStroke:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
		registerVal2.btnDisplayTextStroke:setShaderVector(1.000000, 0.030000, 0.000000, 0.000000, 0.000000)
		registerVal2.btnDisplayTextStroke:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.btnDisplayTextStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_103A_
	registerVal6.IsSelf = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "IsSelf"
	local function __FUNC_1538_(arg0, arg2, arg3)
		return IsSelfModelValueMyXuid(arg2, arg1, "xuid")
	end

	registerVal9.condition = __FUNC_1538_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_15AA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "xuid"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "xuid", true, __FUNC_15AA_)
	local function __FUNC_16C2_(arg0)
		arg0.ListHeader:close()
		arg0.Name:close()
		arg0.btnDisplayTextStroke:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_16C2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

