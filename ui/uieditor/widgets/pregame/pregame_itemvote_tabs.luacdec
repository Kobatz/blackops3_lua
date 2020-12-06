-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Pregame.Pregame_ItemVote_TabList")
require("ui.uieditor.widgets.Pregame.Pregame_ItemVote_TabItem")
local function __FUNC_26B_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "Pregame")
	registerVal4 = Engine.CreateModel(registerVal3, "voteFilter")
	local function __FUNC_377_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		arg0.Tabs:setActiveIndex(1.000000, (registerVal1 + 1.000000))
	end

	arg0:subscribeToModel(registerVal4, __FUNC_377_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Pregame_ItemVote_Tabs = registerVal2
local function __FUNC_42A_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_ItemVote_Tabs)
	registerVal2.id = "Pregame_ItemVote_Tabs"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1327.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 4.000000, -6.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.CategoryListPanel = registerVal3
	local registerVal4 = CoD.Pregame_ItemVote_TabList.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -663.500000, 663.500000)
	registerVal4:setTopBottom(true, false, 5.000000, 45.000000)
	registerVal4.grid:setDataSource("PregameItemVoteTabs")
	registerVal4.grid:setWidgetType(CoD.Pregame_ItemVote_TabItem)
	registerVal4.grid:setHorizontalCount(11.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Tabs = registerVal4
	local function __FUNC_921_(arg0)
		arg0.Tabs:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_921_)
	if __FUNC_26B_ then
		__FUNC_26B_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Pregame_ItemVote_Tabs.new = __FUNC_42A_
