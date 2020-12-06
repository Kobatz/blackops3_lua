-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BumperButtonWithKeyMouse")
require("ui.uieditor.widgets.Lobby.Common.FE_FeaturedCardsContainerControllerIndicator")
local function __FUNC_29A_(arg0, arg1, arg2)
	if not CoD.isPC then
		return 
	end
	arg0:setForceMouseEventDispatch(true)
end

local function __FUNC_32B_(arg0, arg1, arg2)
	__FUNC_29A_(arg0, arg1, arg2)
end

local function __FUNC_368_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "liveEventViewer.stream")
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.FE_FeaturedCardsContainerController = registerVal4
local function __FUNC_41D_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Right)
	if __FUNC_368_ then
		__FUNC_368_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_FeaturedCardsContainerController)
	registerVal2.id = "FE_FeaturedCardsContainerController"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 131.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 35.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -46.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -14.500000, 15.500000)
	registerVal3.KeyMouseImage:setImage(RegisterImage("uie_bumperright"))
	local function __FUNC_F2B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_F2B_)
	registerVal2:addElement(registerVal3)
	registerVal2.RightBumperImage = registerVal3
	local registerVal4 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 2.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:setLeftRight(false, true, -244.000000, -46.000000)
	registerVal4:setTopBottom(false, false, -3.500000, 4.500000)
	registerVal4:setWidgetType(CoD.FE_FeaturedCardsContainerControllerIndicator)
	registerVal4:setHorizontalCount(20.000000)
	registerVal4:setDataSource("FeaturedCardTicks")
	local function __FUNC_1001_(arg0)
		UpdateDataSource(registerVal2, registerVal4, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "FeaturedCardsRoot", "Update", __FUNC_1001_)
	local function __FUNC_105E_(arg0)
		UpdateDataSource(registerVal2, registerVal4, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "MarketingRoot", "Updated", __FUNC_105E_)
	local function __FUNC_10BA_(arg0)
		UpdateDataSource(registerVal2, registerVal4, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_10BA_)
	registerVal2:addElement(registerVal4)
	registerVal2.IndicatorsGrid = registerVal4
	local registerVal5 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -289.000000, -244.000000)
	registerVal5:setTopBottom(false, false, -14.500000, 15.500000)
	local function __FUNC_1116_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_1116_)
	registerVal2:addElement(registerVal5)
	registerVal2.LeftBumperImage = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_11ED_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.RightBumperImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.IndicatorsGrid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LeftBumperImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_11ED_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_13AD_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.RightBumperImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.IndicatorsGrid:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LeftBumperImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_13AD_
	registerVal6.Visible = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_156D_(arg0, arg2, arg3)
		return FeaturedWidgetControllerVisible(arg1)
	end

	registerVal9.condition = __FUNC_156D_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "liveEventViewer.stream")
	local function __FUNC_15D1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "liveEventViewer.stream"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_15D1_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "autoevents.cycled")
	local function __FUNC_16FC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_16FC_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyNav")
	local function __FUNC_1823_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_1823_)
	local function __FUNC_1948_(arg0)
		arg0.RightBumperImage:close()
		arg0.IndicatorsGrid:close()
		arg0.LeftBumperImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1948_)
	if __FUNC_32B_ then
		__FUNC_32B_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FE_FeaturedCardsContainerController.new = __FUNC_41D_
