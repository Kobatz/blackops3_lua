-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
require("ui.uieditor.widgets.StartMenu.StartMenu_lineGraphics")
require("ui.uieditor.widgets.StartMenu.StartMenu_lineGraphics2")
require("ui.uieditor.widgets.playercard.IdentityBadge")
require("ui.uieditor.widgets.Demo.SegmentButton")
require("ui.uieditor.widgets.Demo.SegmentInformation")
CoD.ManageSegments_SegmentButtonWidth = 140.000000
CoD.ManageSegments_SegmentButtonHeight = 80.000000
CoD.ManageSegments_SegmentButtonSpacing = 5.000000
CoD.ManageSegments_MaxSegments = 20.000000
CoD.ManageSegments_MaxSegmentsPerRow = 4.000000
CoD.ManageSegments_NumRows = (CoD.ManageSegments_MaxSegments / CoD.ManageSegments_MaxSegmentsPerRow)
CoD.ManageSegments_TotalWidth = ((CoD.ManageSegments_MaxSegmentsPerRow * CoD.ManageSegments_SegmentButtonWidth) + ((CoD.ManageSegments_MaxSegmentsPerRow - 1.000000) * CoD.ManageSegments_SegmentButtonSpacing))
CoD.ManageSegments_TotalHeight = ((CoD.ManageSegments_SegmentButtonHeight * CoD.ManageSegments_NumRows) + (CoD.ManageSegments_SegmentButtonSpacing * (CoD.ManageSegments_NumRows - 1.000000)))
CoD.ManageSegments_TimelineHeight = 8.000000
CoD.ManageSegments_TimelineToButtonGridSpacing = 25.000000
CoD.ManageSegments_TimelineBlockSpacing = 3.000000
CoD.ManageSegments_TimelineTop = (((CoD.ManageSegments_TotalHeight / 2.000000) + CoD.ManageSegments_TimelineToButtonGridSpacing) - CoD.ManageSegments_TimelineHeight)
CoD.ManageSegments_TimelineMarkerWidth = 1.000000
CoD.ManageSegments_TimelineMarkerHeight = 20.000000
local function __FUNC_A70_(arg0)
	local registerVal1 = Engine.GetDemoSegmentCount()
	local registerVal2 = Engine.GetDemoSegmentInformation(0.000000, "totalClipDuration")
	if registerVal1 <= 0.000000 then
		return 
	end
	local registerVal6 = LUI.UIContainer.new()
	arg0.timelineContainer = registerVal6
	arg0.timelineContainer:setLeftRight(true, false, 125.000000, (CoD.ManageSegments_TotalWidth + 125.000000))
	arg0:addElement(arg0.timelineContainer)
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, CoD.ManageSegments_TimelineMarkerWidth)
	registerVal6:setTopBottom(false, false, ((CoD.ManageSegments_TimelineTop + CoD.ManageSegments_TimelineHeight) - (CoD.ManageSegments_TimelineMarkerHeight / 2.000000)), ((CoD.ManageSegments_TimelineTop + CoD.ManageSegments_TimelineHeight) + (CoD.ManageSegments_TimelineMarkerHeight / 2.000000)))
	registerVal6:setRGB(1.000000, 1.000000, 1.000000)
	registerVal6:setAlpha(1.000000)
	arg0.timelineContainer:addElement(registerVal6)
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, -15.000000, 100.000000)
	registerVal8:setTopBottom(false, false, ((CoD.ManageSegments_TimelineTop + CoD.ManageSegments_TimelineHeight) + 8.000000), (((CoD.ManageSegments_TimelineTop + CoD.ManageSegments_TimelineHeight) + 8.000000) + CoD.textSize.ExtraSmall))
	registerVal8:setRGB(1.000000, 1.000000, 1.000000)
	registerVal8:setAlpha(1.000000)
	registerVal8:setFont(CoD.fonts.ExtraSmall)
	registerVal8:setText("00:00")
	arg0.timelineContainer:addElement(registerVal8)
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, CoD.ManageSegments_TotalWidth, (CoD.ManageSegments_TotalWidth + CoD.ManageSegments_TimelineMarkerWidth))
	registerVal9:setTopBottom(false, false, ((CoD.ManageSegments_TimelineTop + CoD.ManageSegments_TimelineHeight) - (CoD.ManageSegments_TimelineMarkerHeight / 2.000000)), ((CoD.ManageSegments_TimelineTop + CoD.ManageSegments_TimelineHeight) + (CoD.ManageSegments_TimelineMarkerHeight / 2.000000)))
	registerVal9:setRGB(1.000000, 1.000000, 1.000000)
	registerVal9:setAlpha(1.000000)
	arg0.timelineContainer:addElement(registerVal9)
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, (CoD.ManageSegments_TotalWidth - 15.000000), (CoD.ManageSegments_TotalWidth + 100.000000))
	registerVal10:setTopBottom(false, false, ((CoD.ManageSegments_TimelineTop + CoD.ManageSegments_TimelineHeight) + 8.000000), (((CoD.ManageSegments_TimelineTop + CoD.ManageSegments_TimelineHeight) + 8.000000) + CoD.textSize.ExtraSmall))
	registerVal10:setRGB(1.000000, 1.000000, 1.000000)
	registerVal10:setAlpha(1.000000)
	registerVal10:setFont(CoD.fonts.ExtraSmall)
	registerVal10:setText(Engine.GetDemoSegmentInformation(0.000000, "totalClipDurationTimeDisplay"))
	arg0.timelineContainer:addElement(registerVal10)
	local registerVal12 = LUI.UIHorizontalList.new()
	arg0.timelineContainer.timeline = registerVal12
	arg0.timelineContainer.timeline:setLeftRight(true, false, 0.000000, CoD.ManageSegments_TotalWidth)
	arg0.timelineContainer.timeline:setTopBottom(false, false, CoD.ManageSegments_TimelineTop, (CoD.ManageSegments_TimelineTop + CoD.ManageSegments_TimelineHeight))
	arg0.timelineContainer.timeline:setSpacing(CoD.ManageSegments_TimelineBlockSpacing)
	arg0.timelineContainer:addElement(arg0.timelineContainer.timeline)
	for index12=1.000000, registerVal1, 1.000000 do
		local registerVal16 = Engine.GetDemoSegmentInformation((index12 - 1.000000), "duration")
		local registerVal18 = LUI.UIContainer.new()
		registerVal18:setLeftRight(true, false, 0.000000, ((registerVal16 / registerVal2) * (CoD.ManageSegments_TotalWidth - (CoD.ManageSegments_TimelineBlockSpacing * (registerVal1 - 1.000000)))))
		registerVal18:setTopBottom(true, false, 0.000000, CoD.ManageSegments_TimelineHeight)
		local registerVal19 = LUI.UIImage.new()
		registerVal18.image = registerVal19
		registerVal18.image:setLeftRight(true, true, (2.000000 / 2.000000), (-2.000000 / 2.000000))
		registerVal18.image:setTopBottom(true, true, (2.000000 / 2.000000), (-2.000000 / 2.000000))
		registerVal18.image:setRGB(1.000000, 1.000000, 1.000000)
		registerVal18.image:setAlpha(1.000000)
		registerVal18:addElement(registerVal18.image)
		registerVal19 = CoD.BorderT6.new(2.000000, 0.900000, 0.500000, 0.100000)
		registerVal18.border = registerVal19
		registerVal18.border:setAlpha(0.000000)
		registerVal18:addElement(registerVal18.border)
		registerVal18.focussed = false
		arg0.timelineContainer.timeline[index12] = registerVal18
		arg0.timelineContainer.timeline:addElement(registerVal18)
	end
end

function CoD.ManageSegments_Timeline_RefreshState(arg0, arg1, arg2)
	if not arg1 then
		return 
	end
	local registerVal3 = GetSelectedSegmentModel()
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

local function __FUNC_1B71_(arg0)
	if arg0.timelineContainer ~= nil then
		arg0.timelineContainer:close()
	end
	__FUNC_A70_(arg0)
end

local function __FUNC_1BFB_(arg0, arg1, arg2, arg3)
	if arg3 then
		__FUNC_1B71_(arg0)
		CoD.ManageSegments_Timeline_RefreshState(arg0, arg2, false)
		CoD.ManageSegments_Timeline_RefreshState(arg0, arg1, true)
	else
		local registerVal4 = Engine.GetModelValue(Engine.GetModel(arg2, "segmentNumber"))
		CoD.ManageSegments_Timeline_RefreshState(arg0, arg2, arg0.timelineContainer.timeline[registerVal4].focussed)
	end
end

CoD.ManageSegments_Timeline_RefreshStateAfterMove = __FUNC_1BFB_
CoD.SegmentsOptionsPopupHeight = 256.000000
CoD.SegmentsOptionsPopupHeightOffset = 40.000000
local function __FUNC_1DC6_(arg0, arg1)
	Engine.ExecNow(arg1.controller, ("demo_deletesegment " .. arg0.segmentIndex))
	__FUNC_1B71_(arg0.occludedMenu)
	arg0:setPreviousMenu(nil)
	arg0:goBack(arg1.controller)
	ManageSegmentsRefresh(arg0.occludedMenu)
end

local function __FUNC_1F32_(arg0)
	local registerVal1 = CoD.Popup.SetupPopupChoice("NewDeleteSegment", arg0)
	registerVal1:setTopBottom(false, false, ((-CoD.SegmentsOptionsPopupHeight - CoD.SegmentsOptionsPopupHeightOffset) / 2.000000), ((CoD.SegmentsOptionsPopupHeight + CoD.SegmentsOptionsPopupHeightOffset) / 2.000000))
	registerVal1.smallPopupBackground:setTopBottom(false, false, (((-CoD.SegmentsOptionsPopupHeight / 2.000000) - CoD.SegmentsOptionsPopupHeightOffset) - 10.000000), ((CoD.SegmentsOptionsPopupHeight / 2.000000) + 10.000000))
	registerVal1.model = CoD.perController[arg0].selectedSegment
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal1.model, "segmentNumber"))
	registerVal1.segmentIndex = (registerVal2 - 1.000000)
	registerVal1.title:setText(Engine.Localize("MENU_WARNING"))
	registerVal1.msg:setText(Engine.Localize("MENU_DELETE_SEGMENT_CONFIRMATION"))
	registerVal1:addBackButton()
	registerVal1.choiceA:setLabel(Engine.Localize("MENU_YES"))
	registerVal1.choiceB:setLabel(Engine.Localize("MENU_NO"))
	registerVal1.choiceA:setActionEventName("delete_segment_accept")
	local registerVal4 = {}
	registerVal4.name = "gain_focus"
	registerVal1.choiceB:processEvent(registerVal4)
	registerVal1:registerEventHandler("delete_segment_accept", __FUNC_1DC6_)
	return registerVal1
end

LUI.createMenu.NewDeleteSegment = __FUNC_1F32_
CoD.DEMO_CLIP_TRANSITION_NONE = 0.000000
CoD.DEMO_CLIP_TRANSITION_FADE = 1.000000
local function __FUNC_24BC_(arg0, arg1)
	arg0:goBack(arg1.controller)
	ManageSegmentsRefresh(arg0.occludedMenu)
	CoD.perController[arg1.controller].selectedSegment = nil
end

local function __FUNC_25D3_(arg0)
	Engine.ExecNow(arg0.controller, ("demo_switchtransition " .. arg0.segmentIndex .. " " .. arg0.value))
	local registerVal1 = Engine.GetDemoSegmentInformation(arg0.segmentIndex, "transition")
	local registerVal2 = Engine.Localize("MENU_TRANSITION")
	local registerVal4 = Engine.GetModel(arg0.selectedSegmentModel, "transitionText")
	Engine.SetModelValue(registerVal4, (registerVal2 .. registerVal1))
end

local function __FUNC_2806_(arg0, arg1)
	local registerVal2 = Engine.GetDemoSegmentInformation(arg0.segmentIndex, "name")
	local registerVal4 = Engine.GetModel(arg0.model, "name")
	Engine.SetModelValue(registerVal4, registerVal2)
end

local function __FUNC_291F_(arg0, arg1)
	Engine.Exec(arg1.controller, ("demo_keyboard segmentName " .. arg0.segmentIndex))
end

local function __FUNC_29E8_(arg0, arg1)
	arg0:goBack(arg1.controller)
	local registerVal4 = {}
	registerVal4.name = "close_all_ingame_menus"
	registerVal4.controller = arg1.controller
	CoD.InGameMenu.CloseAllInGameMenus(arg0.occludedMenu, registerVal4)
	Engine.Exec(arg1.controller, ("demo_previewsegment " .. arg0.segmentIndex))
end

local function __FUNC_2B98_(arg0, arg1)
	arg0:openMenu("NewDeleteSegment", arg1.controller)
	arg0:close()
end

local function __FUNC_2C33_(arg0, arg1)
	local registerVal3 = Engine.CreateModel(arg0.model, "selected")
	Engine.SetModelValue(registerVal3, true)
	__FUNC_24BC_(arg0, arg1)
end

local function __FUNC_2D05_(arg0)
	local registerVal1 = CoD.Popup.SetupPopup("NewSegmentOptions", arg0)
	registerVal1:setTopBottom(false, false, ((-CoD.SegmentsOptionsPopupHeight - CoD.SegmentsOptionsPopupHeightOffset) / 2.000000), ((CoD.SegmentsOptionsPopupHeight + CoD.SegmentsOptionsPopupHeightOffset) / 2.000000))
	registerVal1.smallPopupBackground:setTopBottom(false, false, (((-CoD.SegmentsOptionsPopupHeight / 2.000000) - CoD.SegmentsOptionsPopupHeightOffset) - 10.000000), ((CoD.SegmentsOptionsPopupHeight / 2.000000) + 10.000000))
	registerVal1:addSelectButton()
	registerVal1:addBackButton()
	registerVal1:registerEventHandler("button_prompt_back", __FUNC_24BC_)
	registerVal1:registerEventHandler("delete_segment_confirmation", __FUNC_2B98_)
	registerVal1:registerEventHandler("preview_segment", __FUNC_29E8_)
	registerVal1:registerEventHandler("rename_segment", __FUNC_291F_)
	registerVal1:registerEventHandler("demo_keyboard_complete", __FUNC_2806_)
	registerVal1:registerEventHandler("setup_move_segment", __FUNC_2C33_)
	registerVal1.title:setText(Engine.Localize("MENU_SEGMENT_OPTIONS"))
	registerVal1.msg:setText(Engine.Localize("MENU_SEGMENT_OPTIONS_DESC"))
	registerVal1.model = CoD.perController[arg0].selectedSegment
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal1.model, "segmentNumber"))
	registerVal1.segmentIndex = (registerVal2 - 1.000000)
	registerVal2 = Engine.GetDemoSegmentCount()
	if registerVal1.segmentIndex ~= (registerVal2 - 1.000000) then
	end
	local registerVal4 = CoD.ButtonList.new({})
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	if true then
		registerVal4:setTopBottom(false, true, ((-CoD.ButtonPrompt.Height - (CoD.CoD9Button.Height * 4.000000)) - 20.000000), 0.000000)
	else
		registerVal4:setTopBottom(false, true, ((-CoD.ButtonPrompt.Height - (CoD.CoD9Button.Height * 5.000000)) - 20.000000), 0.000000)
	end
	registerVal4:setSpacing(0.000000)
	registerVal1:addElement(registerVal4)
	local registerVal5 = registerVal4:addButton(Engine.Localize("MPUI_PREVIEW"))
	registerVal5:setActionEventName("preview_segment")
	local registerVal8 = {}
	registerVal8.name = "gain_focus"
	registerVal5:processEvent(registerVal8)
	local registerVal6 = registerVal4:addButton(Engine.Localize("MENU_MOVE"))
	registerVal6:setActionEventName("setup_move_segment")
	if not true then
		local registerVal7 = tonumber(Engine.GetDemoSegmentInformation(registerVal1.segmentIndex, "transitionValue"))
		local registerVal10 = Engine.Localize("MENU_CHANGE_TRANSITION")
		registerVal8 = registerVal4:addLeftRightSelector(registerVal10, registerVal7)
		local registerVal9 = {}
		registerVal10 = Engine.Localize("MENU_DEMO_TRANSITION_CUT")
		Engine.Localize("MENU_DEMO_TRANSITION_FADE")
		registerVal9 = {}
		registerVal8.strings = registerVal9
		registerVal9 = {}
		registerVal9 = {CoD.DEMO_CLIP_TRANSITION_NONE, CoD.DEMO_CLIP_TRANSITION_FADE}
		registerVal8.values = registerVal9
		for index9=1.000000, #registerVal8.strings, 1.000000 do
			local registerVal15 = Engine.Localize(registerVal8.strings[index9])
			local registerVal17 = {}
			registerVal17.value = registerVal8.values[index9]
			registerVal17.controller = arg0
			registerVal17.parentButton = registerVal8
			registerVal17.segmentIndex = registerVal1.segmentIndex
			registerVal17.selectedSegmentModel = registerVal1.model
			registerVal8:addChoice(registerVal15, __FUNC_25D3_, registerVal17)
		end
	end
	registerVal7 = registerVal4:addButton(Engine.Localize("MENU_RENAME"))
	registerVal7:setActionEventName("rename_segment")
	registerVal8 = registerVal4:addButton(Engine.Localize("MENU_DELETE"))
	registerVal8:setActionEventName("delete_segment_confirmation")
	return registerVal1
end

LUI.createMenu.NewSegmentOptions = __FUNC_2D05_
local function __FUNC_38E7_(arg0, arg1)
	Engine.ExecNow(arg1.controller, "demo_mergesegments")
	__FUNC_1B71_(arg0.occludedMenu)
	arg0:setPreviousMenu(nil)
	arg0:goBack(arg1.controller)
	ManageSegmentsRefresh(arg0.occludedMenu)
end

local function __FUNC_3A2B_(arg0)
	local registerVal1 = CoD.Popup.SetupPopupChoice("NewMergeAllSegments", arg0)
	registerVal1.title:setText(Engine.Localize("MENU_WARNING"))
	registerVal1.msg:setText(Engine.Localize("MENU_MERGE_ALL_SEGMENTS_CONFIRMATION"))
	registerVal1:addBackButton()
	registerVal1.choiceA:setLabel(Engine.Localize("MENU_YES"))
	registerVal1.choiceB:setLabel(Engine.Localize("MENU_NO"))
	registerVal1.choiceA:setActionEventName("merge_all_segments_accept")
	local registerVal4 = {}
	registerVal4.name = "gain_focus"
	registerVal1.choiceB:processEvent(registerVal4)
	registerVal1:registerEventHandler("merge_all_segments_accept", __FUNC_38E7_)
	return registerVal1
end

LUI.createMenu.NewMergeAllSegments = __FUNC_3A2B_
local function __FUNC_3D65_(arg0, arg1)
	Engine.ExecNow(arg1.controller, "demo_deleteclip")
	__FUNC_1B71_(arg0.occludedMenu)
	arg0:setPreviousMenu(nil)
	arg0:goBack(arg1.controller)
	ManageSegmentsRefresh(arg0.occludedMenu)
end

local function __FUNC_3EA8_(arg0)
	local registerVal1 = CoD.Popup.SetupPopupChoice("NewDeleteAllSegments", arg0)
	registerVal1.title:setText(Engine.Localize("MENU_WARNING"))
	registerVal1.msg:setText(Engine.Localize("MENU_DELETE_ALL_SEGMENTS_CONFIRMATION"))
	registerVal1:addBackButton()
	registerVal1.choiceA:setLabel(Engine.Localize("MENU_YES"))
	registerVal1.choiceB:setLabel(Engine.Localize("MENU_NO"))
	registerVal1.choiceA:setActionEventName("delete_all_segments_accept")
	local registerVal4 = {}
	registerVal4.name = "gain_focus"
	registerVal1.choiceB:processEvent(registerVal4)
	registerVal1:registerEventHandler("delete_all_segments_accept", __FUNC_3D65_)
	return registerVal1
end

LUI.createMenu.NewDeleteAllSegments = __FUNC_3EA8_
local function __FUNC_41E8_(arg0, arg1)
	arg0:openMenu("NewMergeAllSegments", arg1.controller)
	arg0:close()
end

local function __FUNC_4286_(arg0, arg1)
	arg0:openMenu("NewDeleteAllSegments", arg1.controller)
	arg0:close()
end

local function __FUNC_4323_(arg0)
	local registerVal1 = CoD.Menu.NewSmallPopup("NewClipOptions")
	registerVal1:setOwner(arg0)
	registerVal1:addSelectButton()
	registerVal1:addBackButton()
	registerVal1:registerEventHandler("merge_all_segments_confirmation", __FUNC_41E8_)
	registerVal1:registerEventHandler("delete_all_segments_confirmation", __FUNC_4286_)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 5.000000, (5.000000 + CoD.textSize.Big))
	registerVal3:setFont(CoD.fonts.Big)
	registerVal3:setAlignment(LUI.Alignment.Left)
	registerVal3:setText(Engine.Localize("MENU_CLIP_OPTIONS"))
	registerVal1:addElement(registerVal3)
	local registerVal4 = CoD.ButtonList.new({})
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, true, ((-CoD.ButtonPrompt.Height - (CoD.CoD9Button.Height * 3.000000)) + 10.000000), 0.000000)
	registerVal1:addElement(registerVal4)
	local registerVal5 = registerVal4:addButton(Engine.Localize("MENU_MERGE_ALL_SEGMENTS"))
	registerVal5:setActionEventName("merge_all_segments_confirmation")
	local registerVal8 = {}
	registerVal8.name = "gain_focus"
	registerVal5:processEvent(registerVal8)
	local registerVal6 = Engine.GetDemoSegmentCount()
	if registerVal6 <= 1.000000 then
		registerVal5:disable()
	end
	registerVal6 = registerVal4:addButton(Engine.Localize("MENU_DELETE_ALL_SEGMENTS"))
	registerVal6:setActionEventName("delete_all_segments_confirmation")
	return registerVal1
end

LUI.createMenu.NewClipOptions = __FUNC_4323_
local function __FUNC_492E_(arg0, arg1)
	__FUNC_A70_(arg0)
end

local function __FUNC_4964_(arg0, arg1)
	Engine.Exec(arg1, "setupThumbnailsForManageSegments")
end

local function __FUNC_49F4_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ManageSegments")
	if __FUNC_492E_ then
		__FUNC_492E_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ManageSegments.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_5F7F_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_5F7F_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, -11.000000, 1285.000000)
	registerVal4:setTopBottom(true, false, 115.910000, 733.910000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.FEButtonPanelShaderContainer0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -750.000000, 750.000000)
	registerVal5:setTopBottom(false, false, 297.000000, 360.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.FooterBacking = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -649.000000, 645.000000)
	registerVal6:setTopBottom(false, false, -361.000000, -275.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.TitleBacking0 = registerVal6
	registerVal7 = CoD.cac_3dTitleIntermediary.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, -72.000000, 537.000000)
	registerVal7:setTopBottom(true, false, -4.000000, 142.000000)
	registerVal7.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(LocalizeToUpperString("MENU_DEMO_MANAGE_SEGMENTS")))
	registerVal1:addElement(registerVal7)
	registerVal1.cac3dTitleIntermediary0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal8:setTopBottom(false, false, -276.000000, -237.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.CategoryListPanel = registerVal8
	local registerVal9 = CoD.StartMenu_lineGraphics.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 2.000000, 70.000000)
	registerVal9:setTopBottom(true, false, -13.000000, 657.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.StartMenulineGraphics0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(false, false, -336.000000, -276.000000)
	registerVal10:setRGB(0.120000, 0.130000, 0.190000)
	registerVal10:setAlpha(0.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.MenuTitleBackground = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 64.000000, 1280.000000)
	registerVal11:setTopBottom(true, false, 31.000000, 75.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setText(Engine.Localize(LocalizeToUpperString("MENU_DEMO_MANAGE_SEGMENTS")))
	registerVal11:setTTF("fonts/escom.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal11)
	registerVal1.TitleText = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -3.630000, 0.000000)
	registerVal12:setTopBottom(false, false, 302.000000, 332.000000)
	registerVal12:setRGB(0.120000, 0.130000, 0.190000)
	registerVal12:setAlpha(0.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.ButtonBarBackground = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal13:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal13:setRGB(0.900000, 0.900000, 0.900000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal13)
	registerVal1.CategoryListLine = registerVal13
	local registerVal14 = CoD.StartMenu_lineGraphics2.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 1203.000000, 1267.000000)
	registerVal14:setTopBottom(true, false, 112.000000, 698.940000)
	registerVal1:addElement(registerVal14)
	registerVal1.StartMenulineGraphics20 = registerVal14
	local registerVal15 = CoD.IdentityBadge.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 860.000000, 1205.000000)
	registerVal15:setTopBottom(true, false, 25.000000, 81.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.IdentityBadge = registerVal15
	local registerVal16 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal16:makeFocusable()
	registerVal16:setLeftRight(true, false, 70.000000, 790.000000)
	registerVal16:setTopBottom(true, false, 123.000000, 538.000000)
	registerVal16:setDataSource("DemoSegments")
	registerVal16:setWidgetType(CoD.SegmentButton)
	registerVal16:setHorizontalCount(5.000000)
	registerVal16:setVerticalCount(4.000000)
	registerVal16:setSpacing(5.000000)
	local function __FUNC_5FC6_(arg1, arg2)
		ManageSegmentsUpdateTimeline(registerVal1, arg1, arg0, "gain_focus", registerVal1)
		return nil
	end

	registerVal16:registerEventHandler("list_item_gain_focus", __FUNC_5FC6_)
	local function __FUNC_604E_(arg1, arg2)
		ManageSegmentsUpdateTimeline(registerVal1, arg1, arg0, "lose_focus", registerVal1)
		return nil
	end

	registerVal16:registerEventHandler("list_item_lose_focus", __FUNC_604E_)
	local function __FUNC_60D6_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal16:registerEventHandler("gain_focus", __FUNC_60D6_)
	local function __FUNC_6335_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("lose_focus", __FUNC_6335_)
	local function __FUNC_6406_(arg0, arg1, arg2, arg3)
		ManageSegmentsSelectAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_6470_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal16, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_6406_, __FUNC_6470_, false)
	local function __FUNC_656E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSegmentSelectedForMove(arg0, arg2)
		if not registerVal4 then
			return true
		else
			registerVal4 = IsSegmentSelectedForMove(arg0, arg2)
			if registerVal4 then
				return true
			end
		end
	end

	local function __FUNC_65FE_(arg0, arg1, arg2)
		local registerVal3 = IsSegmentSelectedForMove(arg0, arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT_CLIP")
			return true
		else
			registerVal3 = IsSegmentSelectedForMove(arg0, arg2)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_PLACE_SEGMENT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal16, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_656E_, __FUNC_65FE_, false)
	local function __FUNC_67C5_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSegmentSelectedForMove(arg0, arg2)
		if not registerVal4 then
			ManageSegmentsFilmOptions(registerVal1, arg0, arg2, "", arg1)
			return true
		end
	end

	local function __FUNC_687B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_CLIP_OPTIONS")
		local registerVal3 = IsSegmentSelectedForMove(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal16, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_67C5_, __FUNC_687B_, false)
	local function __FUNC_69C1_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSegmentSelectedForMove(arg0, arg2)
		if not registerVal4 then
			ManageSegmentsPreviewFilm(registerVal1, arg0, arg2, "", arg1)
			return true
		end
	end

	local function __FUNC_6A77_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_PREVIEW_CLIP")
		local registerVal3 = IsSegmentSelectedForMove(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal16, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_69C1_, __FUNC_6A77_, false)
	registerVal1:addElement(registerVal16)
	registerVal1.SegmentButtonList = registerVal16
	local registerVal17 = CoD.SegmentInformation.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 817.360000, 1117.360000)
	registerVal17:setTopBottom(true, false, 123.000000, 523.000000)
	registerVal1:addElement(registerVal17)
	registerVal1.SegmentInformation = registerVal17
	local function __FUNC_6BBB_(arg1)
		registerVal17:setModel(arg1, arg0)
	end

	registerVal17:linkToElementModel(registerVal16, nil, false, __FUNC_6BBB_)
	local function __FUNC_6C0A_(arg0, arg1, arg2, arg3)
		ManageSegmentsGoBack(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_6C6E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_6C0A_, __FUNC_6C6E_, false)
	registerVal16.id = "SegmentButtonList"
	local registerVal20 = {}
	registerVal20.name = "menu_loaded"
	registerVal20.controller = arg0
	registerVal1:processEvent(registerVal20)
	registerVal20 = {}
	registerVal20.name = "update_state"
	registerVal20.menu = registerVal1
	registerVal1:processEvent(registerVal20)
	local registerVal18 = registerVal1:restoreState()
	if not registerVal18 then
		registerVal20 = {}
		registerVal20.name = "gain_focus"
		registerVal20.controller = arg0
		registerVal1.SegmentButtonList:processEvent(registerVal20)
	end
	local function __FUNC_6D69_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.cac3dTitleIntermediary0:close()
		arg1.StartMenulineGraphics0:close()
		arg1.StartMenulineGraphics20:close()
		arg1.IdentityBadge:close()
		arg1.SegmentButtonList:close()
		arg1.SegmentInformation:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ManageSegments.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_6D69_)
	if __FUNC_4964_ then
		__FUNC_4964_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ManageSegments = __FUNC_49F4_
