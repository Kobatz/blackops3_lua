-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ZMInventory.ZMMapSelection.ZMLobbyEEWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ZMLobbyEEWidgetSmall = registerVal1
function CoD.ZMLobbyEEWidgetSmall.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ZMLobbyEEWidgetSmall)
	registerVal2.id = "ZMLobbyEEWidgetSmall"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 42.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 42.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ZMLobbyEEWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_8D7_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_8D7_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "AllCompleteSummoningKey"
	local function __FUNC_926_(arg0, arg2, arg3)
		local registerVal3 = IsZombies()
		registerVal3 = IsSelfModelValueTrue(arg2, arg1, "visible")
		registerVal3 = IsSelfModelValueTrue(arg2, arg1, "completed")
		registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "eeGateworm.allComplete")
		registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "mapRef", "ZM_ZOD")
		registerVal3 = IsSelfModelValueTrue(arg2, arg1, "showingAll")
		if registerVal3 and registerVal3 and registerVal3 and registerVal3 and registerVal3 and registerVal3 then
			registerVal3 = ShouldShowLobbyEE()
		end
		return registerVal3
	end

	registerVal7.condition = __FUNC_926_
	local registerVal8 = {}
	registerVal8.stateName = "AllCompleteGateworm"
	local function __FUNC_B01_(arg0, arg2, arg3)
		local registerVal3 = IsZombies()
		registerVal3 = IsSelfModelValueTrue(arg2, arg1, "visible")
		registerVal3 = IsSelfModelValueTrue(arg2, arg1, "completed")
		registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "eeGateworm.allComplete")
		registerVal3 = IsSelfModelValueTrue(arg2, arg1, "showingAll")
		if registerVal3 and registerVal3 and registerVal3 and registerVal3 and registerVal3 then
			registerVal3 = ShouldShowLobbyEE()
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_B01_
	local registerVal9 = {}
	registerVal9.stateName = "VisibleGateworm"
	local function __FUNC_C7C_(arg0, arg2, arg3)
		local registerVal3 = IsZombies()
		registerVal3 = IsSelfModelValueTrue(arg2, arg1, "visible")
		if registerVal3 and registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "completed")
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "mapRef", "ZM_ZOD")
			if not registerVal3 and not registerVal3 then
				registerVal3 = ShouldShowLobbyEE()
			else
			end
		end
		return true
	end

	registerVal9.condition = __FUNC_C7C_
	local registerVal10 = {}
	registerVal10.stateName = "CompleteGateworm"
	local function __FUNC_DD9_(arg0, arg2, arg3)
		local registerVal3 = IsZombies()
		registerVal3 = IsSelfModelValueTrue(arg2, arg1, "visible")
		registerVal3 = IsSelfModelValueTrue(arg2, arg1, "completed")
		if registerVal3 and registerVal3 and registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "mapRef", "ZM_ZOD")
			if not registerVal3 then
				registerVal3 = ShouldShowLobbyEE()
			else
			end
		end
		return true
	end

	registerVal10.condition = __FUNC_DD9_
	local registerVal11 = {}
	registerVal11.stateName = "VisibleSummoningKey"
	local function __FUNC_F35_(arg0, arg2, arg3)
		local registerVal3 = IsZombies()
		registerVal3 = IsSelfModelValueTrue(arg2, arg1, "visible")
		if registerVal3 and registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "completed")
			if not registerVal3 then
				registerVal3 = ShouldShowLobbyEE()
			else
			end
		end
		return true
	end

	registerVal11.condition = __FUNC_F35_
	local registerVal12 = {}
	registerVal12.stateName = "CompleteSummoningKey"
	local function __FUNC_1030_(arg0, arg2, arg3)
		local registerVal3 = IsZombies()
		registerVal3 = IsSelfModelValueTrue(arg2, arg1, "visible")
		registerVal3 = IsSelfModelValueTrue(arg2, arg1, "completed")
		if registerVal3 and registerVal3 and registerVal3 then
			registerVal3 = ShouldShowLobbyEE()
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_1030_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_1120_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1120_)
	local function __FUNC_1248_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "visible"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "visible", true, __FUNC_1248_)
	local function __FUNC_1365_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "completed"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "completed", true, __FUNC_1365_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "eeGateworm.allComplete")
	local function __FUNC_1483_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "eeGateworm.allComplete"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1483_)
	local function __FUNC_15AC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "mapRef"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "mapRef", true, __FUNC_15AC_)
	local function __FUNC_16C8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "showingAll"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "showingAll", true, __FUNC_16C8_)
	registerVal2:addElement(registerVal3)
	registerVal2.ZMLobbyEEWidget0 = registerVal3
	local function __FUNC_17E8_(arg0)
		arg0.ZMLobbyEEWidget0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_17E8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

