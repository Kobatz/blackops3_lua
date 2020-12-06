-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteBack")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
require("ui.uieditor.widgets.LoadingAnimation.StatsLoadingWidget")
local function __FUNC_282_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "OtherPlayerStats.InProgress")
	if registerVal2 then
		Engine.SetModelValue(registerVal2, true)
	end
end

local function __FUNC_39B_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Social_InspectPlayerPopupLoading")
	if __FUNC_282_ then
		__FUNC_282_(registerVal1, arg0)
	end
	registerVal1.soundSet = "MultiplayerMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Social_InspectPlayerPopupLoading.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.VehicleGround_VignetteBack.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.750000)
	registerVal1:addElement(registerVal3)
	registerVal1.VignetteBack = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.120000, 0.120000, 0.120000)
	registerVal4:setAlpha(0.700000)
	registerVal1:addElement(registerVal4)
	registerVal1.darkbg = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 105.000000, -107.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.900000)
	registerVal1:addElement(registerVal5)
	registerVal1.Black = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 13.500000, 1294.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal6:setAlpha(0.250000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_welcome_bg2"))
	registerVal1:addElement(registerVal6)
	registerVal1.TextureBackground = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, -21.000000, 25.000000)
	registerVal7:setTopBottom(false, false, -254.000000, -246.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.700000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal7:setShaderVector(0.000000, 0.003017, 0.500000, 0.000000, 0.000000)
	registerVal7:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.FEFocusBarSolid = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal8:setTopBottom(false, false, -257.000000, -249.000000)
	registerVal8:setRGB(1.000000, 0.900000, 0.800000)
	registerVal8:setAlpha(0.990000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal8:setShaderVector(0.000000, 0.003010, 0.500000, 0.000000, 0.000000)
	registerVal8:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.FEFocusBarAdd = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -21.000000, 25.000000)
	registerVal9:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.700000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal9:setShaderVector(0.000000, 0.003017, 0.500000, 0.000000, 0.000000)
	registerVal9:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.FEFocusBarSolid0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -24.000000, 25.000000)
	registerVal10:setTopBottom(false, false, 248.500000, 256.500000)
	registerVal10:setRGB(1.000000, 0.900000, 0.800000)
	registerVal10:setAlpha(0.990000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal10:setShaderVector(0.000000, 0.003010, 0.500000, 0.000000, 0.000000)
	registerVal10:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.FEFocusBarAdd0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(false, true, -147.500000, -111.500000)
	registerVal11:setRGB(0.130000, 0.110000, 0.120000)
	registerVal11:setAlpha(0.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.buttonBacking = registerVal11
	local registerVal12 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 53.000000, 485.000000)
	registerVal12:setTopBottom(false, true, -153.500000, -121.500000)
	registerVal1:addElement(registerVal12)
	registerVal1.buttons = registerVal12
	local registerVal13 = CoD.StatsLoadingWidget.new(registerVal1, arg0)
	registerVal13:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal13:setTopBottom(false, false, -119.000000, 50.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.StatsLoadingWidget = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, true, 64.000000, -64.000000)
	registerVal14:setTopBottom(true, false, 346.500000, 371.500000)
	registerVal14:setText(Engine.Localize("MENU_ERROR_DOWNLOADING_STATS"))
	registerVal14:setTTF("fonts/default.ttf")
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal14)
	registerVal1.ErrorMessage = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_171E_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal13:completeAnimation()
		registerVal1.StatsLoadingWidget:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.ErrorMessage:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_171E_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_1885_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal13:completeAnimation()
		registerVal1.StatsLoadingWidget:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.ErrorMessage:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_1885_
	registerVal15.Error = registerVal16
	registerVal1.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Error"
	local function __FUNC_19ED_(arg1, arg2, arg3)
		local registerVal3 = IsGlobalModelValueTrue(arg2, arg0, "OtherPlayerStats.InProgress")
		if not registerVal3 then
			registerVal3 = IsGlobalModelValueTrue(arg2, arg0, "OtherPlayerStats.Success")
		else
		end
		return true
	end

	registerVal18.condition = __FUNC_19ED_
	registerVal17 = {registerVal18}
	registerVal1:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetGlobalModel()
	registerVal17 = Engine.GetModel(registerVal18, "OtherPlayerStats.InProgress")
	local function __FUNC_1AC3_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "OtherPlayerStats.InProgress"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal17, __FUNC_1AC3_)
	registerVal18 = Engine.GetGlobalModel()
	registerVal17 = Engine.GetModel(registerVal18, "OtherPlayerStats.Success")
	local function __FUNC_1BF1_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "OtherPlayerStats.Success"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal17, __FUNC_1BF1_)
	local function __FUNC_1D1E_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1D70_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1D1E_, __FUNC_1D70_, false)
	local function __FUNC_1E6D_(arg1)
		local registerVal2 = IsGlobalModelValueTrue(registerVal1, arg0, "OtherPlayerStats.Success")
		registerVal2 = IsGlobalModelValueTrue(registerVal1, arg0, "OtherPlayerStats.InProgress")
		if registerVal2 and not registerVal2 then
			CombatRecordGoBackAndOpenOverlayForPostStatsLoad(registerVal1, arg0)
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "OtherPlayerStats", "InProgress", __FUNC_1E6D_)
	registerVal12:setModel(registerVal1.buttonModel, arg0)
	registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	local function __FUNC_1F85_(arg1)
		arg1.VignetteBack:close()
		arg1.buttons:close()
		arg1.StatsLoadingWidget:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Social_InspectPlayerPopupLoading.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1F85_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Social_InspectPlayerPopupLoading = __FUNC_39B_
