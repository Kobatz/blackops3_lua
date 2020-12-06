-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CPLevels.CPFrame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MissionRecordVault_YourBest = registerVal1
function CoD.MissionRecordVault_YourBest.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MissionRecordVault_YourBest)
	registerVal2.id = "MissionRecordVault_YourBest"
	registerVal2.soundSet = "CAC_PrimaryWeapon"
	registerVal2:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 22.500000)
	registerVal3:setRGB(0.680000, 0.680000, 0.680000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image1 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 22.500000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setText(Engine.Localize("CPUI_YOUR_BEST"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.title = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 6.500000, 120.500000)
	registerVal5:setTopBottom(true, false, 32.000000, 57.000000)
	registerVal5:setText(Engine.Localize("MENU_NEW"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.value = registerVal5
	local registerVal6 = CoD.CPFrame.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.CPFrame0 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_AA3_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_AA3_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_B02_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal2.value:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_B02_
	registerVal7.NoAccolades = registerVal8
	registerVal8 = {}
	local function __FUNC_BFD_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Image1:setRGB(0.750000, 0.750000, 0.750000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.value:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.value:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_BFD_
	registerVal7.Incomplete = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NoAccolades"
	local function __FUNC_D93_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "challengeImage")
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_D93_
	local registerVal11 = {}
	registerVal11.stateName = "Incomplete"
	local function __FUNC_E18_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "completed")
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_E18_
	registerVal9 = {registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_E91_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "challengeImage"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "challengeImage", true, __FUNC_E91_)
	local function __FUNC_FB4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "completed"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "completed", true, __FUNC_FB4_)
	local function __FUNC_10D3_(arg0)
		arg0.CPFrame0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_10D3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

