-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_StatusPanelLeftContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_EVModeIndicator = registerVal1
function CoD.AmmoWidget_EVModeIndicator.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_EVModeIndicator)
	registerVal2.id = "AmmoWidget_EVModeIndicator"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 51.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidget_StatusPanelLeftContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 1.250000, 49.250000)
	registerVal3:setTopBottom(true, false, -4.230000, 43.770000)
	registerVal3:setRGB(0.790000, 0.820000, 0.850000)
	registerVal3:setYRot(180.000000)
	registerVal3:setZoom(-5.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.AmmoWidgetStatusPanelLeftContainer = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 1.250000, 49.250000)
	registerVal4:setTopBottom(true, false, -4.230000, 43.770000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setYRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_ammowidget_statuspanelline"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Outline = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, -7.000000, 58.000000)
	registerVal5:setTopBottom(true, false, 4.000000, 18.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZRot(-28.000000)
	registerVal5:setText(Engine.Localize("ev mode"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.tacModePlaceholder = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 1.250000, 49.250000)
	registerVal6:setTopBottom(true, false, -4.230000, 43.770000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setYRot(180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_ammowidget_statuspanelactivefill"))
	registerVal2:addElement(registerVal6)
	registerVal2.ActiveFill = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 18.000000, 33.000000)
	registerVal7:setTopBottom(true, false, 5.500000, 20.500000)
	registerVal7:setAlpha(0.150000)
	registerVal7:setZoom(-20.000000)
	registerVal7:setImage(RegisterImage("uie_t7_core_hud_ammowidget_statustac"))
	registerVal2:addElement(registerVal7)
	registerVal2.Icon0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 18.000000, 33.000000)
	registerVal8:setTopBottom(true, false, 5.500000, 20.500000)
	registerVal8:setImage(RegisterImage("uie_t7_core_hud_ammowidget_statustac"))
	registerVal2:addElement(registerVal8)
	registerVal2.Icon = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_F7C_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.AmmoWidgetStatusPanelLeftContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Outline:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.tacModePlaceholder:setRGB(0.350000, 0.350000, 0.350000)
		registerVal2.tacModePlaceholder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ActiveFill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Icon0:setRGB(0.430000, 0.430000, 0.430000)
		registerVal2.Icon0:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Icon:setRGB(0.670000, 0.670000, 0.670000)
		registerVal2.Icon:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_F7C_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_12E7_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.AmmoWidgetStatusPanelLeftContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Outline:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.tacModePlaceholder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ActiveFill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_12E7_
	registerVal9.Hidden = registerVal10
	registerVal10 = {}
	local function __FUNC_15B0_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.AmmoWidgetStatusPanelLeftContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Outline:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.tacModePlaceholder:setRGB(0.980000, 1.000000, 0.190000)
		registerVal2.tacModePlaceholder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ActiveFill:setAlpha(0.850000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_15B0_
	registerVal9.Activated = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Hidden"
	local function __FUNC_18ED_(arg0, arg2, arg3)
		local registerVal3 = HideCyberCoreWidget(arg1)
		if registerVal3 then
			registerVal3 = AlwaysFalse()
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_18ED_
	local registerVal13 = {}
	registerVal13.stateName = "Activated"
	local function __FUNC_196A_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.tacticalModeActivated", 1.000000)
	end

	registerVal13.condition = __FUNC_196A_
	registerVal11 = {registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "hudItems.tacticalModeActivated")
	local function __FUNC_19F6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.tacticalModeActivated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_19F6_)
	local function __FUNC_1B28_(arg0)
		arg0.AmmoWidgetStatusPanelLeftContainer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1B28_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

