-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_PanelScale")
require("ui.uieditor.widgets.HUD.Flag.PlayerFlag")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterEnemyFlagStatus = registerVal1
function CoD.CodCasterEnemyFlagStatus.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterEnemyFlagStatus)
	registerVal2.id = "CodCasterEnemyFlagStatus"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 260.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreInfo_PanelScale.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -62.000000)
	registerVal3:setTopBottom(false, false, -13.000000, 11.000000)
	registerVal3:setRGB(0.640000, 0.670000, 0.700000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 220.000000, 260.000000)
	registerVal4:setTopBottom(true, false, -4.000000, 36.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.200000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal4)
	registerVal2.ShadowGlow = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 40.000000, 220.000000)
	registerVal5:setTopBottom(true, false, 9.000000, 25.000000)
	registerVal5:setText(Engine.Localize("OBJECTIVES_FLAG_HOME_CAPS"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setLetterSpacing(1.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.FriendlyFlagStatus = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 32.000000, 228.000000)
	registerVal6:setTopBottom(true, false, 9.000000, 25.000000)
	registerVal6:setText(Engine.Localize(""))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setLetterSpacing(1.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.FriendlyFlagCarrier = registerVal6
	local registerVal7 = CoD.PlayerFlag.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 228.000000, 247.000000)
	registerVal7:setTopBottom(true, false, 8.000000, 27.000000)
	registerVal7:setRGB(ColorSet.FriendlyBlue.r, ColorSet.FriendlyBlue.g, ColorSet.FriendlyBlue.b)
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal7:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.PlayerFlag = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_F3C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal2.FriendlyFlagStatus:setText(Engine.Localize(""))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.DefaultClip = __FUNC_F3C_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1080_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.FriendlyFlagStatus:setText(Engine.Localize(""))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FriendlyFlagCarrier:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_1080_
	registerVal8.Flag_Held = registerVal9
	registerVal9 = {}
	local function __FUNC_123C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.FriendlyFlagStatus:setText(Engine.Localize("OBJECTIVES_FLAG_AWAY_CAPS"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FriendlyFlagCarrier:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_123C_
	registerVal8.Flag_Away = registerVal9
	registerVal9 = {}
	local function __FUNC_1411_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.FriendlyFlagStatus:setText(Engine.Localize("OBJECTIVES_FLAG_HOME_CAPS"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FriendlyFlagCarrier:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_1411_
	registerVal8.Flag_At_Base = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Flag_Held"
	local function __FUNC_15E5_(arg0, arg2, arg3)
		return IsModelValueNonEmptyString(arg1, "CTF.enemyFlagCarrier")
	end

	registerVal11.condition = __FUNC_15E5_
	local registerVal12 = {}
	registerVal12.stateName = "Flag_Away"
	local function __FUNC_1666_(arg0, arg2, arg3)
		return IsModelValueTrue(arg1, "CTF.enemyFlagAway")
	end

	registerVal12.condition = __FUNC_1666_
	local registerVal13 = {}
	registerVal13.stateName = "Flag_At_Base"
	local function __FUNC_16D9_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_16D9_
	registerVal10 = {registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "CTF.enemyFlagCarrier")
	local function __FUNC_1724_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CTF.enemyFlagCarrier"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_1724_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "CTF.enemyFlagAway")
	local function __FUNC_184E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CTF.enemyFlagAway"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_184E_)
	local function __FUNC_1973_(arg0)
		arg0.Panel:close()
		arg0.PlayerFlag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1973_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

