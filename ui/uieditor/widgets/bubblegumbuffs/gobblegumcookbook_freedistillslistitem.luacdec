-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.BlackMarket.CryptokeyHintTextWidget")
require("ui.uieditor.widgets.CAC.cac_FocusBarContainer")
local function __FUNC_30F_(arg0, arg1, arg2)
	local function __FUNC_396_(arg2, arg3)
		local registerVal3 = arg0:getModel()
		local registerVal2 = Engine.GetModel(registerVal3, "timeRemaining")
		local registerVal4 = arg0:getModel()
		registerVal3 = Engine.GetModel(registerVal4, "distillID")
		if registerVal3 and registerVal2 then
			registerVal4 = CoD.BubbleGumBuffUtility.GetDistillCooldown(arg1, Engine.GetModelValue(registerVal3))
			if 0.000000 <= registerVal4 then
				Engine.SetModelValue(registerVal2, registerVal4)
			end
			if arg0.currentState == "ShowTimer" then
				local registerVal7 = arg0:getModel()
				local registerVal6 = Engine.GetModel(registerVal7, "hintText")
				Engine.SetModelValue(registerVal6, Engine.Localize("ZMUI_COOKBOOK_FREE_HINT_TIMER", SecondsAsHourMinutesSeconds(registerVal4)))
			end
			registerVal7 = arg0:getModel()
			local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal7, "disabled"))
			registerVal5 = CanGetFreeGobblegumCookbookUses(arg1)
			if registerVal4 == 0.000000 and registerVal5 == true and registerVal5 then
				registerVal7 = arg0:getModel()
				registerVal6 = Engine.GetModel(registerVal7, "disabled")
				Engine.SetModelValue(registerVal6, false)
			end
		end
	end

	arg0:registerEventHandler("gobble_gum_recipe_distill_tick", __FUNC_396_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.GobbleGumCookbook_FreeDistillsListItem = registerVal2
local function __FUNC_732_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GobbleGumCookbook_FreeDistillsListItem)
	registerVal2.id = "GobbleGumCookbook_FreeDistillsListItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 190.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 190.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.770000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal3
	local registerVal4 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, false, -4.000000, 4.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FEFocusBarContainerTop = registerVal4
	local registerVal5 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(false, true, -3.000000, 5.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FEFocusBarContainerBottom = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 7.000000, 95.390000)
	registerVal6:setTopBottom(false, true, -45.000000, 0.000000)
	registerVal6:setRGB(1.000000, 0.770000, 0.000000)
	registerVal6:setAlpha(0.850000)
	registerVal6:setTTF("fonts/FoundryGridnik-Bold.ttf")
	local function __FUNC_171D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(LocalizeIntoString("MENU_MULTIPLIER_X", registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "text", true, __FUNC_171D_)
	registerVal2:addElement(registerVal6)
	registerVal2.HowManyGiven = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 4.000000, 186.000000)
	registerVal7:setTopBottom(true, false, 6.500000, 31.500000)
	registerVal7:setText(Engine.Localize("MENU_STORE_FREE_PRODUCT"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.FreeTextBox = registerVal7
	local registerVal8 = CoD.CryptokeyHintTextWidget.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, -20.000000, 210.000000)
	registerVal8:setTopBottom(true, false, 192.000000, 239.000000)
	registerVal8:setAlpha(0.000000)
	local function __FUNC_17F3_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_17F3_)
	registerVal2:addElement(registerVal8)
	registerVal2.CryptokeyHintTextWidget = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 0.000000, 190.000000)
	registerVal9:setTopBottom(true, false, 82.500000, 107.500000)
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1842_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(SecondsAsHourMinutesSeconds(registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "timeRemaining", true, __FUNC_1842_)
	local function __FUNC_1927_(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("menu_opened", __FUNC_1927_)
	registerVal2:addElement(registerVal9)
	registerVal2.Timer = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -73.860000, 73.860000)
	registerVal10:setTopBottom(true, false, 24.970000, 172.690000)
	registerVal10:setImage(RegisterImage("uie_t7_zm_cookbook_distill_icon"))
	registerVal2:addElement(registerVal10)
	registerVal2.icon = registerVal10
	local registerVal11 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal11:setTopBottom(true, false, -4.000000, 4.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.cacFocusBarContainerTop = registerVal11
	local registerVal12 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal12:setTopBottom(false, true, -3.000000, 5.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.cacFocusBarContainerBottom = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_1991_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HowManyGiven:setAlpha(0.850000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FreeTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyHintTextWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Timer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.cacFocusBarContainerTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.cacFocusBarContainerBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1991_
	local function __FUNC_1D99_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HowManyGiven:setAlpha(0.850000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FreeTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyHintTextWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Timer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.cacFocusBarContainerTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.cacFocusBarContainerBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.Focus = __FUNC_1D99_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_21A1_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HowManyGiven:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FreeTextBox:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyHintTextWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Timer:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.cacFocusBarContainerTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.cacFocusBarContainerBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_21A1_
	local function __FUNC_25A4_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HowManyGiven:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FreeTextBox:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyHintTextWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Timer:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.cacFocusBarContainerTop:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.cacFocusBarContainerBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.Focus = __FUNC_25A4_
	registerVal13.ShowTimer = registerVal14
	registerVal14 = {}
	local function __FUNC_29AD_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HowManyGiven:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FreeTextBox:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyHintTextWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Timer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.icon:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.cacFocusBarContainerTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.cacFocusBarContainerBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_29AD_
	local function __FUNC_2DB0_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.FEFocusBarContainerTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEFocusBarContainerBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HowManyGiven:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FreeTextBox:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CryptokeyHintTextWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Timer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.icon:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.cacFocusBarContainerTop:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.cacFocusBarContainerBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.Focus = __FUNC_2DB0_
	registerVal13.HaveFreeDistills = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "ShowTimer"
	local function __FUNC_31B9_(arg0, arg2, arg3)
		return ShowGobbleGumDistillTimer(registerVal2, arg1)
	end

	registerVal16.condition = __FUNC_31B9_
	local registerVal17 = {}
	registerVal17.stateName = "HaveFreeDistills"
	local function __FUNC_321B_(arg0, arg2, arg3)
		local registerVal3 = CanGetFreeGobblegumCookbookUses(arg1)
		return (not registerVal3)
	end

	registerVal17.condition = __FUNC_321B_
	registerVal15 = {registerVal16, registerVal17}
	registerVal2:mergeStateConditions(registerVal15)
	local function __FUNC_3281_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "timeRemaining"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "timeRemaining", true, __FUNC_3281_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "GobbleGumDistills.freeDistills")
	local function __FUNC_33A3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GobbleGumDistills.freeDistills"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_33A3_)
	local function __FUNC_34D4_(arg0, arg2)
		local registerVal2 = IsSelfInState(registerVal2, "HaveFreeDistills")
		if registerVal2 then
			local registerVal10 = CoD.BubbleGumBuffUtility.GetRemainingUsesForDistill(arg1, CoD.BubbleGumBuffUtility.FREE_DISTILL)
			local registerVal11 = CoD.BubbleGumBuffUtility.GetRecipeDistillCost()
			SetSelfModelValue(registerVal2, arg0, arg1, "hintText", Engine.Localize("ZMUI_COOKBOOK_FREE_HINT_HAVE_DISTILLS", math.floor((registerVal10 / registerVal11))))
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_34D4_)
	local function __FUNC_370F_(arg0)
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.FEFocusBarContainerTop:close()
		arg0.FEFocusBarContainerBottom:close()
		arg0.CryptokeyHintTextWidget:close()
		arg0.cacFocusBarContainerTop:close()
		arg0.cacFocusBarContainerBottom:close()
		arg0.HowManyGiven:close()
		arg0.Timer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_370F_)
	if __FUNC_30F_ then
		__FUNC_30F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GobbleGumCookbook_FreeDistillsListItem.new = __FUNC_732_
