-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_Subtitle_BG")
local function __FUNC_22C_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "gameScore")
	registerVal3 = Engine.GetModel(registerVal2, "draw")
	if not registerVal3 then
		local registerVal4 = Engine.CreateModel(registerVal2, "draw")
		Engine.SetModelValue(registerVal4, false)
	end
	registerVal3 = Engine.GetModel(registerVal2, "isRoundEnd")
	if not registerVal3 then
		registerVal4 = Engine.CreateModel(registerVal2, "isRoundEnd")
		Engine.SetModelValue(registerVal4, false)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.KillcamWidgetTitleStatus = registerVal2
local function __FUNC_3DA_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_22C_ then
		__FUNC_22C_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.KillcamWidgetTitleStatus)
	registerVal2.id = "KillcamWidgetTitleStatus"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 88.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_Identity_Subtitle_BG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -8.000000, 8.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.550000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuIdentitySubtitleBG0 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 8.000000, 82.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 23.000000)
	registerVal4:setText(Engine.Localize("SOMETHING"))
	registerVal4:setTTF("fonts/escom.ttf")
	local function __FUNC_AF5_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_AF5_)
	registerVal2:addElement(registerVal4)
	registerVal2.SubTitle = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_B55_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.StartMenuIdentitySubtitleBG0:setAlpha(0.550000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.SubTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B55_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_CC3_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.StartMenuIdentitySubtitleBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.SubTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_CC3_
	registerVal5.Invisible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Invisible"
	local function __FUNC_E2A_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_E2A_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM))
	local function __FUNC_EFE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_EFE_)
	local function __FUNC_1088_(arg0)
		arg0.StartMenuIdentitySubtitleBG0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1088_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.KillcamWidgetTitleStatus.new = __FUNC_3DA_
