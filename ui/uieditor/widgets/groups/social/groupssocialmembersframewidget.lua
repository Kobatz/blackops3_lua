-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsRosterList")
require("ui.uieditor.widgets.Social.Social_InfoPane")
local function __FUNC_261_(arg0, arg1)
	local registerVal4 = {}
	registerVal4.tabId = "roster"
	SetFriendsTabName(arg0, registerVal4, arg1)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.GroupsSocialMembersFrameWidget = registerVal2
local function __FUNC_2DE_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_261_ then
		__FUNC_261_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsSocialMembersFrameWidget)
	registerVal2.id = "GroupsSocialMembersFrameWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 525.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -16.000000, 388.000000)
	registerVal3:setTopBottom(true, false, -22.000000, 560.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackTint = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 1035.000000)
	registerVal4:setTopBottom(true, false, -6.500000, 453.500000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Background = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 475.000000, 675.000000)
	registerVal5:setTopBottom(true, false, 243.500000, 268.500000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setText(Engine.Localize("MENU_THERE_ARE_NO_FRIENDS"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.noFriends = registerVal5
	local registerVal6 = CoD.GroupsRosterList.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -6.000000, 379.000000)
	registerVal6:setTopBottom(true, false, 66.500000, 482.500000)
	registerVal6.onlineList:setVerticalCount(6.000000)
	registerVal6.onlineList:setDataSource("SocialPlayersList")
	registerVal2:addElement(registerVal6)
	registerVal2.GroupsRosterList = registerVal6
	local registerVal7 = CoD.Social_InfoPane.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 413.000000, 1127.000000)
	registerVal7:setTopBottom(true, false, 7.500000, 492.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.GroupMemberInfoPane = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 1.000000, 372.000000)
	registerVal8:setTopBottom(true, false, 9.500000, 50.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.700000)
	registerVal2:addElement(registerVal8)
	registerVal2.Banner = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 100.500000, 300.500000)
	registerVal9:setTopBottom(true, false, 14.750000, 44.750000)
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_F03_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "SelectedGroup", "name", __FUNC_F03_)
	registerVal2:addElement(registerVal9)
	registerVal2.GroupName = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 1.000000, 65.520000)
	registerVal10:setTopBottom(true, false, 9.500000, 50.000000)
	local function __FUNC_FBA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setupGroupEmblem(registerVal1)
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "SelectedGroup", "groupId", __FUNC_FBA_)
	registerVal2:addElement(registerVal10)
	registerVal2.GroupEmblem = registerVal10
	local function __FUNC_1055_(arg0)
		registerVal7.presence:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal6.onlineList, nil, false, __FUNC_1055_)
	local registerVal11 = {}
	registerVal11.right = registerVal7
	registerVal6.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal6
	registerVal7.navigation = registerVal11
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal6.id = "GroupsRosterList"
	registerVal7.id = "GroupMemberInfoPane"
	local function __FUNC_10C4_(arg0, arg1)
		local registerVal2 = arg0.GroupsRosterList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_10C4_)
	local function __FUNC_11D0_(arg0)
		arg0.GroupsRosterList:close()
		arg0.GroupMemberInfoPane:close()
		arg0.GroupName:close()
		arg0.GroupEmblem:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11D0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GroupsSocialMembersFrameWidget.new = __FUNC_2DE_
