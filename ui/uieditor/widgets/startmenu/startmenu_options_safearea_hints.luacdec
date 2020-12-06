-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.buttonprompt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_SafeArea_Hints = registerVal1
function CoD.StartMenu_Options_SafeArea_Hints.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_SafeArea_Hints)
	registerVal2.id = "StartMenu_Options_SafeArea_Hints"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -57.500000, -32.500000)
	registerVal3:setText(Engine.Localize("PLATFORM_SAFEAREA_INSTRUCTIONS"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.InstructionText = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, 7.500000, 32.500000)
	registerVal4:setText(Engine.Localize("PLATFORM_SAFE_AREA_ADJUST_HORIZONTAL"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.HorizontalAdjustment = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, false, 32.500000, 57.500000)
	registerVal5:setText(Engine.Localize("PLATFORM_SAFE_AREA_ADJUST_VERTICAL"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.VerticalAdjustment = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal6:setTopBottom(true, false, 211.470000, 245.470000)
	registerVal6:setText(Engine.Localize("MENU_SAFE_AREA_ADJUSTMENT"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.SafeAreaAdjustment = registerVal6
	local registerVal7 = CoD.buttonprompt.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 592.000000, 688.000000)
	registerVal7:setTopBottom(true, false, 470.740000, 501.740000)
	registerVal7.label:setText(Engine.Localize("MENU_EMBLEM_CONFIRM_CHANGES"))
	local function __FUNC_122A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "primary_button_image", __FUNC_122A_)
	registerVal2:addElement(registerVal7)
	registerVal2.ConfirmButtonPrompt = registerVal7
	local registerVal8 = CoD.buttonprompt.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 592.000000, 687.000000)
	registerVal8:setTopBottom(true, false, 470.740000, 501.740000)
	registerVal8.label:setText(Engine.Localize("MENU_WELCOME_MENU_GOT_IT"))
	local function __FUNC_1303_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Controller", "primary_button_image", __FUNC_1303_)
	registerVal2:addElement(registerVal8)
	registerVal2.GotItButtonPrompt = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal9:setTopBottom(true, false, 211.470000, 245.470000)
	registerVal9:setText(Engine.Localize("MENU_DISPLAY_AREA_ADJUSTMENT"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.DisplayAreaAdjustment = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal10:setTopBottom(true, false, 265.270000, 290.270000)
	registerVal10:setText(Engine.Localize("MENU_SAFE_AREA_BEST_RESULTS"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.BestResults = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal11:setTopBottom(true, false, 307.000000, 332.000000)
	registerVal11:setText(Engine.Localize("MENU_SETTING_CONTROLLED"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.SettingPS4 = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal12:setTopBottom(true, false, 419.000000, 444.000000)
	registerVal12:setText(Engine.Localize("MENU_ADJUST_SAFE_AREA_VISIT"))
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.AdjustInSoundAndScreen = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_13DB_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.InstructionText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HorizontalAdjustment:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.VerticalAdjustment:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.SafeAreaAdjustment:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ConfirmButtonPrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.GotItButtonPrompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.DisplayAreaAdjustment:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BestResults:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SettingPS4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.AdjustInSoundAndScreen:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_13DB_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_183E_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.InstructionText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HorizontalAdjustment:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.VerticalAdjustment:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.SafeAreaAdjustment:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ConfirmButtonPrompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.GotItButtonPrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.DisplayAreaAdjustment:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BestResults:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SettingPS4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.AdjustInSoundAndScreen:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_183E_
	registerVal13.Durango = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Durango"
	local function __FUNC_1CA2_(arg0, arg1, arg2)
		return IsDurango()
	end

	registerVal16.condition = __FUNC_1CA2_
	registerVal15 = {registerVal16}
	registerVal2:mergeStateConditions(registerVal15)
	local function __FUNC_1CEB_(arg0)
		arg0.ConfirmButtonPrompt:close()
		arg0.GotItButtonPrompt:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1CEB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

