-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.TitleDotsWidget")
require("ui.uieditor.widgets.Groups.Common.GroupsHQSubheader")
require("ui.uieditor.widgets.Groups.GroupEmblemWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsBackground = registerVal1
function CoD.GroupsBackground.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsBackground)
	registerVal2.id = "GroupsBackground"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -17.300000, 1302.700000)
	registerVal3:setTopBottom(true, false, -13.000000, 735.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackOverlay = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 82.670000)
	registerVal4:setImage(RegisterImage("uie_img_t7_menu_cacselection_titlebacking"))
	registerVal2:addElement(registerVal4)
	registerVal2.TitleBacking = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, true, -66.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_img_t7_menu_frontend_asset_helpbacking"))
	registerVal2:addElement(registerVal5)
	registerVal2.HelpBacking = registerVal5
	local registerVal6 = CoD.TitleDotsWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 3.000000, 528.340000)
	registerVal6:setTopBottom(true, false, -65.330000, 92.670000)
	registerVal6:setAlpha(0.490000)
	registerVal2:addElement(registerVal6)
	registerVal2.TitleDotsWidget = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 64.000000, 141.000000)
	registerVal7:setTopBottom(true, false, 28.000000, 76.000000)
	registerVal7:setRGB(0.870000, 0.880000, 0.780000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("MENU_NEW"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.titleLabel = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 132.000000, 132.000000)
	registerVal8:setTopBottom(true, false, 58.670000, 106.670000)
	registerVal8:setRGB(0.870000, 0.880000, 0.780000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setTTF("fonts/escom.ttf")
	local function __FUNC_E85_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "SelectedGroup", "name", __FUNC_E85_)
	registerVal2:addElement(registerVal8)
	registerVal2.GroupName = registerVal8
	local registerVal9 = CoD.GroupsHQSubheader.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 132.000000, 331.000000)
	registerVal9:setTopBottom(true, false, 41.000000, 61.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.GroupsHQSubheader = registerVal9
	local registerVal10 = CoD.GroupEmblemWidget.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 64.000000, 128.000000)
	registerVal10:setTopBottom(true, false, 36.000000, 100.000000)
	local function __FUNC_F3E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.GroupEmblem:setupGroupEmblem(registerVal1)
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "SelectedGroup", "groupId", __FUNC_F3E_)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "DefaultGroupEmblem"
	local function __FUNC_FFA_(arg0, arg2, arg3)
		local registerVal3 = IsGroupEmblemEmpty(arg2, arg1)
		if registerVal3 then
			registerVal3 = HasSelectedGroup(arg2, arg1)
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_FFA_
	local registerVal15 = {}
	registerVal15.stateName = "ShowGroupEmblem"
	local function __FUNC_1086_(arg0, arg2, arg3)
		local registerVal3 = IsGroupEmblemEmpty(arg2, arg1)
		if not registerVal3 then
			registerVal3 = HasSelectedGroup(arg2, arg1)
		else
		end
		return true
	end

	registerVal15.condition = __FUNC_1086_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	if registerVal10.m_eventHandlers.group_emblem_updated then
		local function __FUNC_111E_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal10.m_eventHandlers.group_emblem_updated(arg1, arg2)
		end

		registerVal10:registerEventHandler("group_emblem_updated", __FUNC_111E_)
	else
		registerVal10:registerEventHandler("group_emblem_updated", LUI.UIElement.updateState)
	end
	local function __FUNC_11A7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groupId"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "groupId", true, __FUNC_11A7_)
	registerVal2:addElement(registerVal10)
	registerVal2.GroupEmblemWidget = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_12C1_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal7:completeAnimation()
		registerVal2.titleLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.GroupName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GroupsHQSubheader:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_12C1_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_14DC_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal7:completeAnimation()
		registerVal2.titleLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.GroupName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GroupsHQSubheader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_14DC_
	registerVal11.SelectedGroup = registerVal12
	registerVal2.clipsPerState = registerVal11
	local function __FUNC_16F8_(arg0)
		arg0.TitleDotsWidget:close()
		arg0.GroupsHQSubheader:close()
		arg0.GroupEmblemWidget:close()
		arg0.GroupName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_16F8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

