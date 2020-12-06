-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadout_ButtonFooter_BackOfCard")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadout_ButtonFooter_Personalize")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadout_ButtonFooter = registerVal1
function CoD.ChooseCharacterLoadout_ButtonFooter.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 31.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Right)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadout_ButtonFooter)
	registerVal2.id = "ChooseCharacterLoadout_ButtonFooter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 213.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 33.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.ChooseCharacterLoadout_ButtonFooter_BackOfCard.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 142.000000, 213.000000)
	registerVal3:setTopBottom(true, false, 4.000000, 41.000000)
	registerVal3.backOfCardLabel:setText(Engine.Localize("MENU_BACK_OF_CARD"))
	local function __FUNC_C67_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_C67_)
	registerVal2:addElement(registerVal3)
	registerVal2.ChooseCharacterLoadoutButtonFooterBackOfCard0 = registerVal3
	local registerVal4 = CoD.ChooseCharacterLoadout_ButtonFooter_Personalize.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 45.000000, 111.000000)
	registerVal4:setTopBottom(true, false, 4.000000, 41.000000)
	registerVal4.personalizeLabel:setText(Engine.Localize("HEROES_PERSONALIZE"))
	registerVal4.clickableButton.label:setText(Engine.Localize("HEROES_PERSONALIZE"))
	local function __FUNC_CB6_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_CB6_)
	registerVal2:addElement(registerVal4)
	registerVal2.ChooseCharacterLoadoutButtonFooterPersonalize0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_D06_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal3.backOfCardLabel:completeAnimation()
		registerVal2.ChooseCharacterLoadoutButtonFooterBackOfCard0:setAlpha(1.000000)
		registerVal2.ChooseCharacterLoadoutButtonFooterBackOfCard0.backOfCardLabel:setText(Engine.Localize("MENU_BACK_OF_CARD"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ChooseCharacterLoadoutButtonFooterPersonalize0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_D06_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_F60_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ChooseCharacterLoadoutButtonFooterBackOfCard0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ChooseCharacterLoadoutButtonFooterPersonalize0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_F60_
	registerVal5.FirstTimeFlow = registerVal6
	registerVal6 = {}
	local function __FUNC_1101_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ChooseCharacterLoadoutButtonFooterBackOfCard0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ChooseCharacterLoadoutButtonFooterPersonalize0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1101_
	registerVal5.Arena = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "FirstTimeFlow"
	local function __FUNC_12A1_(arg0, arg2, arg3)
		return FirstTimeSetup_IsActive(arg1)
	end

	registerVal8.condition = __FUNC_12A1_
	local registerVal9 = {}
	registerVal9.stateName = "Arena"
	local function __FUNC_12FD_(arg0, arg1, arg2)
		return CharacterDraftActive()
	end

	registerVal9.condition = __FUNC_12FD_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "firstTimeFlowState")
	local function __FUNC_1352_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "firstTimeFlowState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_1352_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.Pregame.state")
	local function __FUNC_1478_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_1478_)
	local function __FUNC_15A5_(arg0)
		arg0.ChooseCharacterLoadoutButtonFooterBackOfCard0:close()
		arg0.ChooseCharacterLoadoutButtonFooterPersonalize0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_15A5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

