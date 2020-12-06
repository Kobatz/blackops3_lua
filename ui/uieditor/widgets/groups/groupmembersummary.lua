-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupMemberSummaryItem")
local function __FUNC_21B_(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal2, "groups")
	local registerVal4 = Engine.CreateModel(registerVal3, "selectedGroup")
	Engine.CreateModel(registerVal4, "memberCount")
	Engine.CreateModel(registerVal4, "inTitleCount")
	Engine.CreateModel(registerVal4, "onlineCount")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.GroupMemberSummary = registerVal2
local function __FUNC_393_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_21B_ then
		__FUNC_21B_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupMemberSummary)
	registerVal2.id = "GroupMemberSummary"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GroupMemberSummaryItem.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 144.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal3.Title:setText(Engine.Localize(AppendString("_CAPS", "GROUPS_MEMBERS")))
	registerVal3.Count:setText(Engine.Localize("00000"))
	registerVal2:addElement(registerVal3)
	registerVal2.MemberCount = registerVal3
	local registerVal4 = CoD.GroupMemberSummaryItem.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 152.500000, 297.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal4.Title:setText(Engine.Localize(AppendString("_CAPS", "GROUPS_PLAYING")))
	registerVal4.Count:setText(Engine.Localize("00000"))
	registerVal2:addElement(registerVal4)
	registerVal2.PlayingCount = registerVal4
	local registerVal5 = CoD.GroupMemberSummaryItem.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 218.000000, 318.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5.Title:setText(Engine.Localize(AppendString("_CAPS", "GROUPS_ONLINE")))
	registerVal5.Count:setText(Engine.Localize("00000"))
	registerVal2:addElement(registerVal5)
	registerVal2.OnlineCount = registerVal5
	local function __FUNC_9D1_(arg0)
		arg0.MemberCount:close()
		arg0.PlayingCount:close()
		arg0.OnlineCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9D1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GroupMemberSummary.new = __FUNC_393_
