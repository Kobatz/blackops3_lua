-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CybercoreSelectionMulticoreWidget = registerVal1
function CoD.CybercoreSelectionMulticoreWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CybercoreSelectionMulticoreWidget)
	registerVal2.id = "CybercoreSelectionMulticoreWidget"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 310.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 140.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal3:setScale(0.900000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_abilityrig_icon_multicore"))
	registerVal2:addElement(registerVal3)
	registerVal2.multicoreIcon = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 122.000000, 295.000000)
	registerVal4:setTopBottom(true, false, 13.000000, 38.000000)
	registerVal4:setText(Engine.Localize("FEATURE_MULTICORE"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.titleText = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 122.000000, 295.000000)
	registerVal5:setTopBottom(true, false, 37.000000, 56.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_AD7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(LocalizeToUpperString(LocalizeIntoString("CPUI_REQUIRES_LEVEL", ToString(registerVal1)))))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "CybercoreSelectionMenu", "multicoreUnlockLevel", __FUNC_AD7_)
	registerVal2:addElement(registerVal5)
	registerVal2.requirementText = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 122.000000, 295.000000)
	registerVal6:setTopBottom(true, false, 56.000000, 72.000000)
	registerVal6:setAlpha(0.400000)
	registerVal6:setText(Engine.Localize("FEATURE_MULTICORE_DESC"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.instructionsText = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_C14_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_C14_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_C76_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.requirementText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.instructionsText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_C76_
	registerVal7.MulticoreActivated = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "MulticoreActivated"
	local function __FUNC_DDE_(arg0, arg2, arg3)
		return IsMulticoreActivated(arg1)
	end

	registerVal10.condition = __FUNC_DDE_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_E36_(arg0)
		arg0.requirementText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E36_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

