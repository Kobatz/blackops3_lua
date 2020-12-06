-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Demo.SegmentButton")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.HelperWidgets.TextWithBg")
CoD.Timeline_Container_LeftOffset = 154.000000
CoD.Timeline_Container_RightOffset = 154.000000
CoD.Timeline_Container_BottomOffset = 80.000000
CoD.Timeline_Container_Height = 20.000000
CoD.Timeline_Block_Spacing = 3.000000
local function __FUNC_41E_(arg0)
	local registerVal1 = Engine.GetDemoSegmentCount()
	local registerVal2 = Engine.GetDemoSegmentInformation(0.000000, "totalClipDuration")
	if registerVal1 <= 0.000000 then
		return 
	end
	local registerVal5 = LUI.UIContainer.new()
	arg0.timelineContainer = registerVal5
	arg0.timelineContainer:setLeftRight(true, true, CoD.Timeline_Container_LeftOffset, -CoD.Timeline_Container_RightOffset)
	arg0.timelineContainer:setTopBottom(false, true, (-CoD.Timeline_Container_Height - CoD.Timeline_Container_BottomOffset), -CoD.Timeline_Container_BottomOffset)
	arg0:addElement(arg0.timelineContainer)
	local registerVal6 = LUI.UIHorizontalList.new()
	arg0.timelineContainer.timeline = registerVal6
	arg0.timelineContainer.timeline:setLeftRight(true, true, 0.000000, 0.000000)
	arg0.timelineContainer.timeline:setTopBottom(true, true, 0.000000, 0.000000)
	arg0.timelineContainer.timeline:setSpacing(CoD.Timeline_Block_Spacing)
	arg0.timelineContainer:addElement(arg0.timelineContainer.timeline)
	for index6=1.000000, registerVal1, 1.000000 do
		local registerVal10 = Engine.GetDemoSegmentInformation((index6 - 1.000000), "duration")
		local registerVal12 = LUI.UIContainer.new()
		registerVal12:setLeftRight(true, false, 0.000000, ((registerVal10 / registerVal2) * ((1280.000000 - (CoD.Timeline_Container_LeftOffset + CoD.Timeline_Container_RightOffset)) - (CoD.Timeline_Block_Spacing * (registerVal1 - 1.000000)))))
		registerVal12:setTopBottom(true, false, 0.000000, CoD.Timeline_Container_Height)
		local registerVal13 = LUI.UIImage.new()
		registerVal12.image = registerVal13
		registerVal12.image:setLeftRight(true, true, (2.000000 / 2.000000), (-2.000000 / 2.000000))
		registerVal12.image:setTopBottom(true, true, (2.000000 / 2.000000), (-2.000000 / 2.000000))
		registerVal12.image:setRGB(1.000000, 1.000000, 1.000000)
		registerVal12.image:setAlpha(1.000000)
		registerVal12:addElement(registerVal12.image)
		registerVal13 = CoD.BorderT6.new(2.000000, 0.900000, 0.500000, 0.100000)
		registerVal12.border = registerVal13
		registerVal12.border:setAlpha(0.000000)
		registerVal12:addElement(registerVal12.border)
		registerVal12.focussed = false
		arg0.timelineContainer.timeline[index6] = registerVal12
		arg0.timelineContainer.timeline:addElement(registerVal12)
	end
end

function CoD.Timeline_RefreshState(arg0, arg1, arg2)
	if not arg1 then
		return 
	end
	local registerVal3 = CoD.DemoUtility.Timeline_GetSelectedSegmentModel()
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(arg1, "disabled"))
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(arg1, "segmentNumber"))
	if not arg2 then
		if arg1 == registerVal3 then
		else
			if not registerVal4 and arg0.timelineContainer ~= nil then
				arg0.timelineContainer.timeline[registerVal5].border:setAlpha(0.000000)
				arg0.timelineContainer.timeline[registerVal5].image:setRGB(1.000000, 1.000000, 1.000000)
				arg0.timelineContainer.timeline[registerVal5].image:setAlpha(1.000000)
			else
				if arg1 == registerVal3 then
					arg0.timelineContainer.timeline[registerVal5].border:setRGB(0.900000, 0.500000, 0.100000)
					arg0.timelineContainer.timeline[registerVal5].border:setAlpha(1.000000)
					arg0.timelineContainer.timeline[registerVal5].image:setRGB(0.900000, 0.500000, 0.100000)
					arg0.timelineContainer.timeline[registerVal5].image:setAlpha(1.000000)
					if arg0.timelineContainer ~= nil and not registerVal4 and arg0.timelineContainer ~= nil then
						arg0.timelineContainer.timeline[registerVal5].border:setRGB(0.900000, 0.500000, 0.100000)
						arg0.timelineContainer.timeline[registerVal5].border:setAlpha(1.000000)
						arg0.timelineContainer.timeline[registerVal5].image:setRGB(1.000000, 1.000000, 1.000000)
						arg0.timelineContainer.timeline[registerVal5].image:setAlpha(1.000000)
					end
				end
			else
			end
		end
	else
	end
	if arg0.timelineContainer ~= nil and not registerVal4 then
		arg0.timelineContainer.timeline[registerVal5].focussed = arg2
	end
end

local function __FUNC_10A4_(arg0)
	if arg0.timelineContainer ~= nil then
		arg0.timelineContainer:close()
	end
	__FUNC_41E_(arg0)
end

local function __FUNC_112F_(arg0, arg1, arg2, arg3)
	if arg3 then
		__FUNC_10A4_(arg0)
		CoD.Timeline_RefreshState(arg0, arg2, false)
		CoD.Timeline_RefreshState(arg0, arg1, true)
	else
		local registerVal4 = Engine.GetModelValue(Engine.GetModel(arg2, "segmentNumber"))
		CoD.Timeline_RefreshState(arg0, arg2, arg0.timelineContainer.timeline[registerVal4].focussed)
	end
end

CoD.Timeline_RefreshStateAfterMove = __FUNC_112F_
local function __FUNC_12EB_(arg0, arg1)
	__FUNC_41E_(arg0)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "demo.showFilmOptionsSidebar")
	Engine.SetModelValue(registerVal2, false)
end

local function __FUNC_13E1_(arg0, arg1)
	local registerVal2 = Engine.GetDemoSegmentCount()
	if registerVal2 <= 0.000000 then
		if arg0.ClipStartTime then
			arg0.ClipStartTime:setAlpha(0.000000)
		end
		arg0.ClipEndTime:setAlpha(0.000000)
		if arg0.ClipEndTime and arg0.ClipEndTime then
			arg0.ClipEndTime.Text:setText(Engine.GetDemoSegmentInformation(0.000000, "totalClipDurationTimeDisplay"))
		end
	end
end

local function __FUNC_15AC_(arg0, arg1)
	Engine.Exec(arg1, "setupThumbnailsForManageSegments")
	__FUNC_13E1_(arg0, arg1)
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.GetModel(registerVal5, "DemoSegments.refresh")
	local function __FUNC_16F6_(arg2)
		__FUNC_10A4_(arg0)
		__FUNC_13E1_(arg0, arg1)
	end

	arg0:subscribeToModel(registerVal4, __FUNC_16F6_)
end

local function __FUNC_173C_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("TimelineEditor")
	if __FUNC_12EB_ then
		__FUNC_12EB_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "TimelineEditor.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_31CF_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_31CF_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 95.000000, 1185.000000)
	registerVal5:setTopBottom(true, true, 114.000000, -111.000000)
	registerVal5:setWidgetType(CoD.SegmentButton)
	registerVal5:setHorizontalCount(5.000000)
	registerVal5:setVerticalCount(4.000000)
	registerVal5:setSpacing(5.000000)
	registerVal5:setDataSource("DemoSegments")
	local function __FUNC_3216_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal5:linkToElementModel(registerVal5, "disabled", true, __FUNC_3216_)
	local registerVal9 = Engine.GetGlobalModel()
	local registerVal8 = Engine.GetModel(registerVal9, "demo.showFilmOptionsSidebar")
	local function __FUNC_33D1_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.showFilmOptionsSidebar"
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_33D1_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.segmentCount")
	local function __FUNC_36CD_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.segmentCount"
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_36CD_)
	local function __FUNC_395A_(arg1, arg2)
		local registerVal3 = IsTimelineEditorInMoveState(arg0)
		if not registerVal3 then
			TimelineEditorUpdateTimeline(registerVal1, arg1, arg0, "gain_focus", registerVal1)
			TimelineEditorUpdateHighlightedSegmentModel(registerVal1, arg1, arg0, "gain_focus", registerVal1)
		else
			registerVal3 = IsTimelineEditorInMoveState(arg0)
			if registerVal3 then
				TimelineEditorPlaceSegment(registerVal1, arg1, arg0, "true", registerVal1)
				TimelineEditorSetupMoveSegment(registerVal1, arg1, arg0, registerVal1)
				TimelineEditorUpdateTimeline(registerVal1, arg1, arg0, "gain_focus", registerVal1)
				TimelineEditorUpdateHighlightedSegmentModel(registerVal1, arg1, arg0, "gain_focus", registerVal1)
				UpdateAllMenuButtonPrompts(registerVal1, arg0)
			end
		end
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_395A_)
	local function __FUNC_3B7E_(arg1, arg2)
		local registerVal3 = IsTimelineEditorInMoveState(arg0)
		if not registerVal3 then
			TimelineEditorUpdateTimeline(registerVal1, arg1, arg0, "lose_focus", registerVal1)
			TimelineEditorUpdateHighlightedSegmentModel(registerVal1, arg1, arg0, "lose_focus", registerVal1)
		else
			registerVal3 = IsTimelineEditorInMoveState(arg0)
			if registerVal3 then
				TimelineEditorUpdateTimeline(registerVal1, arg1, arg0, "lose_focus", registerVal1)
				TimelineEditorUpdateHighlightedSegmentModel(registerVal1, arg1, arg0, "lose_focus", registerVal1)
			end
		end
		return nil
	end

	registerVal5:registerEventHandler("list_item_lose_focus", __FUNC_3B7E_)
	local function __FUNC_3CE0_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_PCKEY_0)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_3CE0_)
	local function __FUNC_4001_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_4001_)
	local function __FUNC_40D2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "demo.showFilmOptionsSidebar")
		registerVal4 = IsTimelineEditorInMoveState(arg2)
		if not registerVal4 and not registerVal4 and not registerVal4 then
			TimelineEditorSetupMoveSegment(registerVal1, arg0, arg2, arg1)
			UpdateAllMenuButtonPrompts(arg1, arg2)
			return true
		else
			registerVal4 = IsDisabled(arg0, arg2)
			registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "demo.showFilmOptionsSidebar")
			registerVal4 = IsTimelineEditorInMoveState(arg2)
			if not registerVal4 and not registerVal4 and registerVal4 then
				TimelineEditorPlaceSegment(registerVal1, arg0, arg2, "true", arg1)
				UpdateAllMenuButtonPrompts(arg1, arg2)
				return true
			end
		end
	end

	local function __FUNC_42F0_(arg0, arg1, arg2)
		local registerVal3 = IsDisabled(arg0, arg2)
		registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "demo.showFilmOptionsSidebar")
		registerVal3 = IsTimelineEditorInMoveState(arg2)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "DEMO_CUT_SEGMENT")
			return true
		else
			registerVal3 = IsDisabled(arg0, arg2)
			registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "demo.showFilmOptionsSidebar")
			registerVal3 = IsTimelineEditorInMoveState(arg2)
			if not registerVal3 and not registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "DEMO_PASTE_SEGMENT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_40D2_, __FUNC_42F0_, false)
	local function __FUNC_4575_(arg0, arg1, arg2, arg3)
		local registerVal4 = SegmentCountGreaterThan(arg2, 0.000000)
		registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "demo.showFilmOptionsSidebar")
		registerVal4 = IsTimelineEditorInMoveState(arg2)
		if registerVal4 and not registerVal4 and not registerVal4 then
			TimelineEditorFilmOptions(registerVal1, arg0, arg2)
			SetGlobalModelValueTrue("demo.showFilmOptionsSidebar")
			return true
		end
	end

	local function __FUNC_46E4_(arg0, arg1, arg2)
		local registerVal3 = SegmentCountGreaterThan(arg2, 0.000000)
		registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "demo.showFilmOptionsSidebar")
		registerVal3 = IsTimelineEditorInMoveState(arg2)
		if registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_4575_, __FUNC_46E4_, false)
	local function __FUNC_48BD_(arg0, arg1, arg2, arg3)
		local registerVal4 = SegmentCountGreaterThan(arg2, 0.000000)
		registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "demo.showFilmOptionsSidebar")
		registerVal4 = IsTimelineEditorInMoveState(arg2)
		if registerVal4 and not registerVal4 and not registerVal4 then
			TimelineEditorPreviewClip(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_49FF_(arg0, arg1, arg2)
		local registerVal3 = SegmentCountGreaterThan(arg2, 0.000000)
		registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "demo.showFilmOptionsSidebar")
		registerVal3 = IsTimelineEditorInMoveState(arg2)
		if registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_PREVIEW_CLIP")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "P", __FUNC_48BD_, __FUNC_49FF_, false)
	local function __FUNC_4BE1_(arg0, arg1, arg2, arg3)
		local registerVal4 = SegmentCountGreaterThan(arg2, 0.000000)
		registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "demo.showFilmOptionsSidebar")
		registerVal4 = CanChangeSegmentTransition(arg0, arg2)
		registerVal4 = IsSegmentTransition(arg0, arg2, Enum.demoClipTransition.DEMO_CLIP_TRANSITION_NONE)
		registerVal4 = IsTimelineEditorInMoveState(arg2)
		if registerVal4 and not registerVal4 and registerVal4 and registerVal4 and not registerVal4 then
			TimelineEditorChangeTransition(registerVal1, arg0, arg2)
			UpdateAllMenuButtonPrompts(arg1, arg2)
			return true
		else
			registerVal4 = SegmentCountGreaterThan(arg2, 0.000000)
			registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "demo.showFilmOptionsSidebar")
			registerVal4 = CanChangeSegmentTransition(arg0, arg2)
			registerVal4 = IsSegmentTransition(arg0, arg2, Enum.demoClipTransition.DEMO_CLIP_TRANSITION_FADE)
			registerVal4 = IsTimelineEditorInMoveState(arg2)
			if registerVal4 and not registerVal4 and registerVal4 and registerVal4 and not registerVal4 then
				TimelineEditorChangeTransition(registerVal1, arg0, arg2)
				UpdateAllMenuButtonPrompts(arg1, arg2)
				return true
			end
		end
	end

	local function __FUNC_4F1D_(arg0, arg1, arg2)
		local registerVal3 = SegmentCountGreaterThan(arg2, 0.000000)
		registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "demo.showFilmOptionsSidebar")
		registerVal3 = CanChangeSegmentTransition(arg0, arg2)
		registerVal3 = IsSegmentTransition(arg0, arg2, Enum.demoClipTransition.DEMO_CLIP_TRANSITION_NONE)
		registerVal3 = IsTimelineEditorInMoveState(arg2)
		if registerVal3 and not registerVal3 and registerVal3 and registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "DEMO_TRANSITION_CUT")
			return true
		else
			registerVal3 = SegmentCountGreaterThan(arg2, 0.000000)
			registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "demo.showFilmOptionsSidebar")
			registerVal3 = CanChangeSegmentTransition(arg0, arg2)
			registerVal3 = IsSegmentTransition(arg0, arg2, Enum.demoClipTransition.DEMO_CLIP_TRANSITION_FADE)
			registerVal3 = IsTimelineEditorInMoveState(arg2)
			if registerVal3 and not registerVal3 and registerVal3 and registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "DEMO_TRANSITION_FADE")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "T", __FUNC_4BE1_, __FUNC_4F1D_, false)
	local function __FUNC_52F6_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_5328_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_PCKEY_0, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_PCKEY_0, "M", __FUNC_52F6_, __FUNC_5328_, false)
	registerVal1:addElement(registerVal5)
	registerVal1.SegmentButtonList = registerVal5
	registerVal6 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal6.titleLabel:setText(LocalizeToUpperString("MENU_DEMO_MANAGE_SEGMENTS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(LocalizeToUpperString("MENU_DEMO_MANAGE_SEGMENTS"))
	registerVal1:addElement(registerVal6)
	registerVal1.GenericMenuFrame0 = registerVal6
	registerVal7 = CoD.TextWithBg.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 95.000000, 154.000000)
	registerVal7:setTopBottom(false, true, -100.000000, -80.000000)
	registerVal7.Text:setRGB(1.000000, 0.410000, 0.000000)
	registerVal7.Text:setText(Engine.Localize("00:00"))
	registerVal7.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal1:addElement(registerVal7)
	registerVal1.ClipStartTime = registerVal7
	registerVal8 = CoD.TextWithBg.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, true, -154.000000, -95.000000)
	registerVal8:setTopBottom(false, true, -100.000000, -80.000000)
	registerVal8.Text:setRGB(1.000000, 0.410000, 0.000000)
	registerVal8.Text:setText(Engine.Localize("00:00"))
	registerVal8.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal1:addElement(registerVal8)
	registerVal1.ClipEndTime = registerVal8
	registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal9:setText(Engine.Localize("DEMO_EMPTY_TIMELINE_EDITOR"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.EmptyTimelineEditorText = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -546.000000, 546.000000)
	registerVal10:setTopBottom(false, false, 257.500000, 282.000000)
	registerVal10:setAlpha(0.500000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal10:setShaderVector(0.000000, 0.003663, 0.163265, 0.000000, 0.000000)
	registerVal10:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.Image = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, 547.000000, 583.000000)
	registerVal11:setTopBottom(false, false, 258.000000, 262.000000)
	registerVal11:setAlpha(0.500000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.Pixel2011 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, 547.000000, 583.000000)
	registerVal12:setTopBottom(false, false, 279.000000, 283.000000)
	registerVal12:setAlpha(0.500000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.Image0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, -582.000000, -546.000000)
	registerVal13:setTopBottom(false, false, 257.000000, 261.000000)
	registerVal13:setAlpha(0.500000)
	registerVal13:setZRot(180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.Image1 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, -582.000000, -546.000000)
	registerVal14:setTopBottom(false, false, 278.000000, 282.000000)
	registerVal14:setAlpha(0.500000)
	registerVal14:setZRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.Image2 = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_5417_()
		registerVal1:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal1.ClipStartTime:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.ClipEndTime:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.EmptyTimelineEditorText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
	end

	registerVal16.DefaultClip = __FUNC_5417_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_55DC_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal1.SegmentButtonList:setAlpha(0.400000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal1.ClipStartTime:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.ClipEndTime:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.EmptyTimelineEditorText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
	end

	registerVal16.DefaultClip = __FUNC_55DC_
	registerVal15.Empty = registerVal16
	registerVal1.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Empty"
	local function __FUNC_5808_(arg1, arg2, arg3)
		local registerVal3 = SegmentCountGreaterThan(arg0, 0.000000)
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_5808_
	registerVal17 = {registerVal18}
	registerVal1:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetGlobalModel()
	registerVal17 = Engine.GetModel(registerVal18, "demo.segmentCount")
	local function __FUNC_5872_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.segmentCount"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal17, __FUNC_5872_)
	registerVal18 = Engine.GetGlobalModel()
	registerVal17 = Engine.GetModel(registerVal18, "demo.showFilmOptionsSidebar")
	local function __FUNC_5997_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.showFilmOptionsSidebar"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal1:subscribeToModel(registerVal17, __FUNC_5997_)
	local function __FUNC_5B64_(arg0, arg1)
		TimelineEditorRefresh("")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_5B64_)
	local function __FUNC_5C06_(arg1, arg2)
		TimelineEditorKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_5C06_)
	local function __FUNC_5CB1_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsTimelineEditorInMoveState(arg2)
		if not registerVal4 then
			GoBack(registerVal1, arg2)
			ResetThumbnailViewer(arg2)
			return true
		else
			registerVal4 = IsTimelineEditorInMoveState(arg2)
			if registerVal4 then
				TimelineEditorPlaceSegment(registerVal1, arg0, arg2, "false", arg1)
				UpdateAllMenuButtonPrompts(arg1, arg2)
				return true
			end
		end
	end

	local function __FUNC_5E0A_(arg0, arg1, arg2)
		local registerVal3 = IsTimelineEditorInMoveState(arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
			return true
		else
			registerVal3 = IsTimelineEditorInMoveState(arg2)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
				return false
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_5CB1_, __FUNC_5E0A_, false)
	local function __FUNC_5FB4_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "demo.showFilmOptionsSidebar")
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_6049_(arg0, arg1, arg2)
		local registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "demo.showFilmOptionsSidebar")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_5FB4_, __FUNC_6049_, false)
	registerVal5.id = "SegmentButtonList"
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	registerVal15 = registerVal1:restoreState()
	if not registerVal15 then
		registerVal17 = {}
		registerVal17.name = "gain_focus"
		registerVal17.controller = arg0
		registerVal1.SegmentButtonList:processEvent(registerVal17)
	end
	local function __FUNC_61AF_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.SegmentButtonList:close()
		arg1.GenericMenuFrame0:close()
		arg1.ClipStartTime:close()
		arg1.ClipEndTime:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "TimelineEditor.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_61AF_)
	if __FUNC_15AC_ then
		__FUNC_15AC_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.TimelineEditor = __FUNC_173C_
