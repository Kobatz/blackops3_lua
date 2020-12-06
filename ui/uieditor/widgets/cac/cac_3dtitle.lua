-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleLine")
require("ui.uieditor.widgets.Lobby.Common.FE_3dTitleInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_3dTitle = registerVal1
function CoD.cac_3dTitle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_3dTitle)
	registerVal2.id = "cac_3dTitle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1000.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 51.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_TitleLine.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 1.000000, -31.000000)
	registerVal3:setTopBottom(false, false, 23.000000, 27.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETitleLineL = registerVal3
	local registerVal4 = CoD.FE_3dTitleInternal.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -7.380000, 931.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 56.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.070000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4.Label0:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	local function __FUNC_B56_(arg0, arg1)
		ScaleParentWidgetToLabel(registerVal2, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_B56_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "LogoVisible"
	local function __FUNC_BBB_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueNonEmptyString(arg2, arg1, "lobbyRoot.lobbyTitle")
		if not registerVal3 then
			registerVal3 = IsCurrentMenu(arg0, "ModeSelect")
		else
		end
		return true
	end

	registerVal8.condition = __FUNC_BBB_
	local registerVal9 = {}
	registerVal9.stateName = "Playlist"
	local function __FUNC_C93_(arg0, arg1, arg2)
		local registerVal3 = ShouldShowPlaylistName()
		if registerVal3 then
			registerVal3 = IsCurrentMenu(arg0, "ModeSelect")
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_C93_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyTitle")
	local function __FUNC_D2B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyTitle"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_D2B_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNav")
	local function __FUNC_E52_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_E52_)
	if registerVal4.m_eventHandlers.menu_loaded then
		local function __FUNC_F78_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal4.m_eventHandlers.menu_loaded(arg1, arg2)
		end

		registerVal4:registerEventHandler("menu_loaded", __FUNC_F78_)
	else
		registerVal4:registerEventHandler("menu_loaded", LUI.UIElement.updateState)
	end
	registerVal2:addElement(registerVal4)
	registerVal2.TextBox1 = registerVal4
	local registerVal5 = CoD.FE_TitleLine.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 1.000000, -31.000000)
	registerVal5:setTopBottom(false, false, -25.000000, -21.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FETitleLineU = registerVal5
	local function __FUNC_1003_(arg0)
		arg0.FETitleLineL:close()
		arg0.TextBox1:close()
		arg0.FETitleLineU:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1003_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

