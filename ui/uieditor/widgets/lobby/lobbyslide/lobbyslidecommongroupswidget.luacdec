-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ListHeaderGlow")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleLineSingle")
require("ui.uieditor.widgets.Lobby.LobbySlide.LobbySlideCommonGroupsListWidget")
local function __FUNC_2D2_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "groups.searchGroupsInProgress", true)
end

local function __FUNC_39B_(arg0, arg1)
	local function __FUNC_4DD_()
		arg0.CommonGroupsList:updateDataSource()
	end

	arg0.CommonGroupsList:linkToElementModel(arg0, "xuid", true, __FUNC_4DD_)
	local function __FUNC_554_()
		if arg0.CommonGroupsList then
			local registerVal3 = arg0.CommonGroupsList:getDataSource()
			if registerVal3 then
				local registerVal4 = registerVal3.getCount(arg0.CommonGroupsList)
			end
			registerVal4 = IsMainModeInvalid()
			if false or 8.000000 >= registerVal4 then
				registerVal4 = IsMainModeInvalid()
				if not false or 2.000000 >= registerVal4 then
				end
			end
			if not true then
				return 
			end
			if arg0.CommonGroupsList.activeWidget and not arg0.CommonGroupsList.resetToFirst then
				registerVal4 = GetListItem(arg0, arg0.CommonGroupsList.activeWidget)
				registerVal4:navigateItemDown()
			else
				arg0.CommonGroupsList.resetToFirst = false
				arg0.CommonGroupsList:getFirstSelectableItem(true)
			end
		end
	end

	local registerVal3 = LUI.UITimer.newElementTimer(3000.000000, false, __FUNC_554_, arg0)
	arg0.scrollTimer = registerVal3
	arg0:addElement(registerVal3)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.LobbySlideCommonGroupsWidget = registerVal3
local function __FUNC_752_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_2D2_ then
		__FUNC_2D2_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbySlideCommonGroupsWidget)
	registerVal2.id = "LobbySlideCommonGroupsWidget"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 119.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ListHeaderGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 321.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 21.000000)
	registerVal3:setAlpha(0.140000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEListHeaderGlow0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -7.000000, 29.000000)
	registerVal4:setTopBottom(true, false, -0.750000, 2.750000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.pixelU = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -29.000000, 7.000000)
	registerVal5:setTopBottom(true, false, -1.750000, 1.750000)
	registerVal5:setZRot(180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.pixelU0 = registerVal5
	local registerVal6 = CoD.FE_TitleLineSingle.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 323.990000)
	registerVal6:setTopBottom(true, false, -2.000000, 2.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FETitleLineSingle0 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 2.000000, 202.000000)
	registerVal7:setTopBottom(true, false, 1.000000, 19.000000)
	registerVal7:setText(Engine.Localize("GROUPS_COMMON_GROUPS"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setLetterSpacing(0.300000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.CommonGroupsText = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 131.500000, 179.500000)
	registerVal8:setTopBottom(true, false, 2.750000, 50.750000)
	registerVal8:setupSpinner()
	registerVal2:addElement(registerVal8)
	registerVal2.Spinner = registerVal8
	local registerVal9 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, -2.000000, 200.000000, nil, nil, true, true, 0.000000, 0.000000, false, true)
	registerVal9:setLeftRight(true, false, 7.000000, 314.000000)
	registerVal9:setTopBottom(true, false, 22.500000, 168.500000)
	registerVal9:setWidgetType(CoD.LobbySlideCommonGroupsListWidget)
	registerVal9:setVerticalCount(8.000000)
	registerVal9:setSpacing(-2.000000)
	registerVal9:setDataSource("LobbyCommonGroupsList")
	registerVal2:addElement(registerVal9)
	registerVal2.CommonGroupsList = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1510_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.FEListHeaderGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.pixelU:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.pixelU0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FETitleLineSingle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CommonGroupsText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CommonGroupsList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1510_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1833_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.FEListHeaderGlow0:setAlpha(0.140000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.pixelU:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.pixelU0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FETitleLineSingle0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CommonGroupsText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CommonGroupsList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1833_
	registerVal10.Visible = registerVal11
	registerVal11 = {}
	local function __FUNC_1B5D_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.FEListHeaderGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.pixelU:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.pixelU0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FETitleLineSingle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CommonGroupsText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Spinner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CommonGroupsList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1B5D_
	registerVal10.Loading = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Visible"
	local function __FUNC_1E84_(arg0, arg2, arg3)
		local registerVal3 = SearchGroupResultsLoading(arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "quickjoinListMember")
			if registerVal3 then
				registerVal3 = IsSelfModelValueNil(arg2, arg1, "xuid")
				if not registerVal3 then
					registerVal3 = ListElementHasElements(registerVal2, "CommonGroupsList")
				else
				else
				end
			end
		end
		return true
	end

	registerVal13.condition = __FUNC_1E84_
	local registerVal14 = {}
	registerVal14.stateName = "Loading"
	local function __FUNC_1FE3_(arg0, arg2, arg3)
		local registerVal3 = SearchGroupResultsLoading(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "quickJoinListMember")
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_1FE3_
	registerVal12 = {registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "groups.searchGroupsInProgress")
	local function __FUNC_209A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.searchGroupsInProgress"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_209A_)
	local function __FUNC_21CB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "quickjoinListMember"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "quickjoinListMember", true, __FUNC_21CB_)
	local function __FUNC_22F1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "xuid"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "xuid", true, __FUNC_22F1_)
	local function __FUNC_240A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "quickJoinListMember"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "quickJoinListMember", true, __FUNC_240A_)
	local function __FUNC_2531_(arg0)
		arg0.FEListHeaderGlow0:close()
		arg0.FETitleLineSingle0:close()
		arg0.CommonGroupsList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2531_)
	if __FUNC_39B_ then
		__FUNC_39B_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.LobbySlideCommonGroupsWidget.new = __FUNC_752_
