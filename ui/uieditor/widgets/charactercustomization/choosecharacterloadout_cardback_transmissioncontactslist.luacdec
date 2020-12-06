-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadout_CardBack_ContactListEntry")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadout_CardBack_TransmissionContactsList = registerVal1
function CoD.ChooseCharacterLoadout_CardBack_TransmissionContactsList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadout_CardBack_TransmissionContactsList)
	registerVal2.id = "ChooseCharacterLoadout_CardBack_TransmissionContactsList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 290.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 10.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:setLeftRight(false, true, -128.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 290.000000)
	registerVal3:setWidgetType(CoD.ChooseCharacterLoadout_CardBack_ContactListEntry)
	registerVal3:setVerticalCount(3.000000)
	registerVal3:setSpacing(10.000000)
	local function __FUNC_79C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setDataSource(registerVal1)
		end
	end

	registerVal3:linkToElementModel(registerVal2, "contactsListDatasource", true, __FUNC_79C_)
	registerVal2:addElement(registerVal3)
	registerVal2.contactsList = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_836_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.contactsList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_836_
	local function __FUNC_938_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_A22_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.contactsList:setAlpha(0.000000)
		__FUNC_A22_(registerVal3, {})
	end

	registerVal5.Visible = __FUNC_938_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_BD5_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.contactsList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_BD5_
	local function __FUNC_CD3_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_DB5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.contactsList:setAlpha(1.000000)
		__FUNC_DB5_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_CD3_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_F69_(arg0)
		arg0.contactsList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F69_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

