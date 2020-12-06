-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadoutCarouselItem_BackListItem")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadout_CardBack_Bio")
require("ui.uieditor.widgets.Heroes.ChooseCharacterLoadout_CardBack_FrontOfCardFooter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadoutCarouselItem_Back = registerVal1
function CoD.ChooseCharacterLoadoutCarouselItem_Back.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.ChooseCharacterLoadoutCarouselItem_Back)
	registerVal2.id = "ChooseCharacterLoadoutCarouselItem_Back"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 816.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 8.000000, 276.000000)
	registerVal4:setTopBottom(true, true, 6.000000, -7.500000)
	registerVal4:setAlpha(0.080000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackBox = registerVal4
	local registerVal5 = CoD.Border.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Border0 = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 20.000000, 94.000000)
	registerVal6:setTopBottom(true, false, 10.000000, 30.000000)
	registerVal6:setRGB(0.820000, 0.980000, 1.000000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setText(LocalizeToUpperString("HEROES_CALLSIGN"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.callsignLabel = registerVal6
	local registerVal7 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 19.000000, 215.000000)
	registerVal7:setTopBottom(true, false, 34.000000, 68.000000)
	registerVal7:setRGB(0.820000, 0.980000, 1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.WeaponNameWidget0 = registerVal7
	local registerVal8 = CoD.Border.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 8.000000, 276.000000)
	registerVal8:setTopBottom(true, true, 6.000000, -7.500000)
	registerVal8:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.iconBorder0 = registerVal8
	local registerVal9 = LUI.UIList.new(arg0, arg1, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, false, 20.000000, 265.000000)
	registerVal9:setTopBottom(true, false, 87.500000, 467.500000)
	registerVal9:setWidgetType(CoD.ChooseCharacterLoadoutCarouselItem_BackListItem)
	registerVal9:setVerticalCount(11.000000)
	registerVal9:setSpacing(5.000000)
	local function __FUNC_1558_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setDataSource(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal2, "cardBackDatasource", true, __FUNC_1558_)
	local function __FUNC_15F2_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "alias"
		CoD.Menu.UpdateButtonShownState(registerVal9, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal9:linkToElementModel(registerVal9, "alias", true, __FUNC_15F2_)
	local function __FUNC_17AD_(arg0, arg2)
		local registerVal3 = HasProperty(arg0, "transmissionIndex")
		registerVal3 = IsSelfModelValueTrue(arg0, arg1, "isNew")
		if registerVal3 and registerVal3 then
			StopSpecialistTransmission(arg0, arg1)
			MarkSpecialistTransmissionOld(registerVal2, arg0, arg1)
		else
			registerVal3 = HasProperty(arg0, "transmissionIndex")
			if registerVal3 then
				StopSpecialistTransmission(arg0, arg1)
			end
		end
		return nil
	end

	registerVal9:registerEventHandler("list_item_lose_focus", __FUNC_17AD_)
	local function __FUNC_190C_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal9:registerEventHandler("gain_focus", __FUNC_190C_)
	local function __FUNC_1AA2_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_1AA2_)
	local function __FUNC_1B72_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueNonEmptyString(arg0, arg2, "alias")
		if registerVal4 then
			PlaySpecialistTransmission(arg0, arg2)
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		end
	end

	local function __FUNC_1C6C_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg0, arg2, "alias")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_1B72_, __FUNC_1C6C_, false)
	registerVal2:addElement(registerVal9)
	registerVal2.selectionList = registerVal9
	local registerVal10 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, false)
	registerVal10:setLeftRight(true, false, 300.000000, 806.000000)
	registerVal10:setTopBottom(true, false, 7.000000, 439.750000)
	registerVal2:addElement(registerVal10)
	registerVal2.frame = registerVal10
	local registerVal11 = CoD.ChooseCharacterLoadout_CardBack_FrontOfCardFooter.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -87.000000, -13.000000)
	registerVal11:setTopBottom(false, true, -49.250000, -15.750000)
	registerVal11.text:setText(Engine.Localize("MENU_FRONT_OF_CARD"))
	registerVal11.clickableButton.label:setText(Engine.Localize("MENU_FRONT_OF_CARD"))
	local function __FUNC_1DBD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.Button2:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_1DBD_)
	registerVal2:addElement(registerVal11)
	registerVal2.ChooseCharacterLoadoutCardBackFrontOfCardFooter = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, 20.000000, -551.000000)
	registerVal12:setTopBottom(true, false, 77.250000, 78.000000)
	registerVal12:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.keyline1 = registerVal12
	local function __FUNC_1E8D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.WeaponNameWidget0:linkToElementModel(registerVal2, "name", true, __FUNC_1E8D_)
	local function __FUNC_1F6B_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal9, nil, false, __FUNC_1F6B_)
	local function __FUNC_1FBA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:changeFrameWidget(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal9, "frameWidget", true, __FUNC_1FBA_)
	local registerVal13 = {}
	registerVal13.right = registerVal10
	registerVal9.navigation = registerVal13
	registerVal13 = {}
	registerVal13.left = registerVal9
	registerVal10.navigation = registerVal13
	registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_2056_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_2399_(arg0, arg1)
			local function __FUNC_24F0_(arg0, arg1)
				local function __FUNC_266B_(arg0, arg1)
					local function __FUNC_27E3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.800000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_27E3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27E3_)
				end

				if arg1.interrupted then
					__FUNC_266B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_266B_)
			end

			if arg1.interrupted then
				__FUNC_24F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24F0_)
		end

		registerVal6:completeAnimation()
		registerVal2.callsignLabel:setAlpha(0.000000)
		__FUNC_2399_(registerVal6, {})
		local function __FUNC_2995_(arg0, arg1)
			local function __FUNC_2AEC_(arg0, arg1)
				local function __FUNC_2C67_(arg0, arg1)
					local function __FUNC_2DDF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2DDF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DDF_)
				end

				if arg1.interrupted then
					__FUNC_2C67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C67_)
			end

			if arg1.interrupted then
				__FUNC_2AEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AEC_)
		end

		registerVal7:completeAnimation()
		registerVal2.WeaponNameWidget0:setAlpha(0.000000)
		__FUNC_2995_(registerVal7, {})
		local function __FUNC_2F91_(arg0, arg1)
			local function __FUNC_30E8_(arg0, arg1)
				local function __FUNC_3263_(arg0, arg1)
					local function __FUNC_33DB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_33DB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33DB_)
				end

				if arg1.interrupted then
					__FUNC_3263_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3263_)
			end

			if arg1.interrupted then
				__FUNC_30E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30E8_)
		end

		registerVal9:completeAnimation()
		registerVal2.selectionList:setAlpha(0.000000)
		__FUNC_2F91_(registerVal9, {})
		local function __FUNC_358D_(arg0, arg1)
			local function __FUNC_36E4_(arg0, arg1)
				local function __FUNC_385F_(arg0, arg1)
					local function __FUNC_39D7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_39D7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39D7_)
				end

				if arg1.interrupted then
					__FUNC_385F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_385F_)
			end

			if arg1.interrupted then
				__FUNC_36E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36E4_)
		end

		registerVal10:completeAnimation()
		registerVal2.frame:setAlpha(0.000000)
		__FUNC_358D_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ChooseCharacterLoadoutCardBackFrontOfCardFooter:setLeftRight(false, true, -87.000000, -13.000000)
		registerVal2.ChooseCharacterLoadoutCardBackFrontOfCardFooter:setTopBottom(false, true, -40.250000, -6.750000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_3B89_(arg0, arg1)
			local function __FUNC_3CE0_(arg0, arg1)
				local function __FUNC_3E5B_(arg0, arg1)
					local function __FUNC_3FD3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3FD3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FD3_)
				end

				if arg1.interrupted then
					__FUNC_3E5B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E5B_)
			end

			if arg1.interrupted then
				__FUNC_3CE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CE0_)
		end

		registerVal12:completeAnimation()
		registerVal2.keyline1:setAlpha(0.000000)
		__FUNC_3B89_(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_2056_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_4185_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_44C9_(arg0, arg1)
			local function __FUNC_4620_(arg0, arg1)
				local function __FUNC_479B_(arg0, arg1)
					local function __FUNC_4913_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.800000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4913_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4913_)
				end

				if arg1.interrupted then
					__FUNC_479B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_479B_)
			end

			if arg1.interrupted then
				__FUNC_4620_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4620_)
		end

		registerVal6:completeAnimation()
		registerVal2.callsignLabel:setAlpha(0.000000)
		__FUNC_44C9_(registerVal6, {})
		local function __FUNC_4AC5_(arg0, arg1)
			local function __FUNC_4C1C_(arg0, arg1)
				local function __FUNC_4D97_(arg0, arg1)
					local function __FUNC_4F0F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4F0F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F0F_)
				end

				if arg1.interrupted then
					__FUNC_4D97_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D97_)
			end

			if arg1.interrupted then
				__FUNC_4C1C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C1C_)
		end

		registerVal7:completeAnimation()
		registerVal2.WeaponNameWidget0:setAlpha(0.000000)
		__FUNC_4AC5_(registerVal7, {})
		local function __FUNC_50C1_(arg0, arg1)
			local function __FUNC_5218_(arg0, arg1)
				local function __FUNC_5393_(arg0, arg1)
					local function __FUNC_550B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_550B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_550B_)
				end

				if arg1.interrupted then
					__FUNC_5393_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5393_)
			end

			if arg1.interrupted then
				__FUNC_5218_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5218_)
		end

		registerVal9:completeAnimation()
		registerVal2.selectionList:setAlpha(0.000000)
		__FUNC_50C1_(registerVal9, {})
		local function __FUNC_56BD_(arg0, arg1)
			local function __FUNC_5814_(arg0, arg1)
				local function __FUNC_598F_(arg0, arg1)
					local function __FUNC_5B07_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5B07_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B07_)
				end

				if arg1.interrupted then
					__FUNC_598F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_598F_)
			end

			if arg1.interrupted then
				__FUNC_5814_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5814_)
		end

		registerVal10:completeAnimation()
		registerVal2.frame:setAlpha(0.000000)
		__FUNC_56BD_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ChooseCharacterLoadoutCardBackFrontOfCardFooter:setLeftRight(false, true, -87.000000, -13.000000)
		registerVal2.ChooseCharacterLoadoutCardBackFrontOfCardFooter:setTopBottom(false, true, -53.250000, -19.750000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_5CB9_(arg0, arg1)
			local function __FUNC_5E10_(arg0, arg1)
				local function __FUNC_5F8B_(arg0, arg1)
					local function __FUNC_6103_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_6103_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.400000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6103_)
				end

				if arg1.interrupted then
					__FUNC_5F8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F8B_)
			end

			if arg1.interrupted then
				__FUNC_5E10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E10_)
		end

		registerVal12:completeAnimation()
		registerVal2.keyline1:setAlpha(0.000000)
		__FUNC_5CB9_(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_4185_
	registerVal13.Blackjack = registerVal14
	registerVal14 = {}
	local function __FUNC_62B5_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal14.DefaultClip = __FUNC_62B5_
	registerVal13.DisabledFocus = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Blackjack"
	local function __FUNC_6316_(arg0, arg2, arg3)
		return IsCharacterBlackjack(arg1, arg2)
	end

	registerVal16.condition = __FUNC_6316_
	local registerVal17 = {}
	registerVal17.stateName = "DisabledFocus"
	local function __FUNC_6372_(arg0, arg2, arg3)
		return IsGlobalModelValueTrue(arg2, arg1, "heroSelectionTutorial")
	end

	registerVal17.condition = __FUNC_6372_
	registerVal15 = {registerVal16, registerVal17}
	registerVal2:mergeStateConditions(registerVal15)
	local function __FUNC_63F3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, nil, true, __FUNC_63F3_)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "heroSelectionTutorial")
	local function __FUNC_64FD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "heroSelectionTutorial"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_64FD_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal9.id = "selectionList"
	registerVal10.id = "frame"
	local function __FUNC_6627_(arg0, arg1)
		local registerVal2 = arg0.selectionList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_6627_)
	local function __FUNC_672D_(arg0)
		arg0.Border0:close()
		arg0.WeaponNameWidget0:close()
		arg0.iconBorder0:close()
		arg0.selectionList:close()
		arg0.ChooseCharacterLoadoutCardBackFrontOfCardFooter:close()
		arg0.frame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_672D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

