-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_IconGlowPanel")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_NumbersInternal")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_Dot")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_BackLine")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Pregame_MainTimer = registerVal1
function CoD.Pregame_MainTimer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_MainTimer)
	registerVal2.id = "Pregame_MainTimer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 383.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 148.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PrematchCountdown_IconGlowPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 62.000000, 336.500000)
	registerVal3:setTopBottom(true, false, -56.750000, 217.750000)
	registerVal2:addElement(registerVal3)
	registerVal2.GlowPanel = registerVal3
	local registerVal4 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -72.000000, 68.000000)
	registerVal4:setTopBottom(false, false, -39.500000, 25.500000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.PanelAmmo = registerVal4
	local registerVal5 = CoD.PrematchCountdown_NumbersInternal.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 129.500000, 249.500000)
	registerVal5:setTopBottom(true, false, 33.500000, 103.500000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 7.720000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, -50.000000, -100.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 6.890000, 9.870000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.020000, 0.000000, 0.000000)
	local function __FUNC_1485_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.Numbers:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "PregameGlobal", "timeleft", __FUNC_1485_)
	registerVal2:addElement(registerVal5)
	registerVal2.Numbers = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 164.500000, 218.500000)
	registerVal6:setTopBottom(true, false, 41.500000, 95.500000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_mp_icons_gamemode_graphic_logowhite"))
	registerVal2:addElement(registerVal6)
	registerVal2.Check = registerVal6
	local registerVal7 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 121.500000, 125.500000)
	registerVal7:setTopBottom(true, false, 112.500000, 116.500000)
	registerVal7:setZoom(5.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Dot61 = registerVal7
	local registerVal8 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 254.500000, 258.500000)
	registerVal8:setTopBottom(true, false, 112.500000, 116.500000)
	registerVal8:setZoom(5.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Dot600 = registerVal8
	local registerVal9 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 121.500000, 125.500000)
	registerVal9:setTopBottom(true, false, 8.500000, 12.500000)
	registerVal9:setZoom(5.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.Dot62 = registerVal9
	local registerVal10 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 254.500000, 258.500000)
	registerVal10:setTopBottom(true, false, 8.500000, 12.500000)
	registerVal10:setZoom(5.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.Dot601 = registerVal10
	local registerVal11 = CoD.AmmoWidget_BackLine.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 173.500000, 205.500000)
	registerVal11:setTopBottom(true, false, -12.860000, -9.860000)
	registerVal11:setZRot(-90.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.LineTop = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 124.500000, 252.500000)
	registerVal12:setTopBottom(true, false, 8.000000, 136.000000)
	registerVal12:setRGB(0.200000, 0.230000, 0.300000)
	registerVal12:setAlpha(0.680000)
	registerVal12:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Image0 = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 0.000000, 383.000000)
	registerVal13:setTopBottom(true, false, 0.140000, 22.140000)
	registerVal13:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_155B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "PregameGlobal", "status", __FUNC_155B_)
	registerVal2:addElement(registerVal13)
	registerVal2.TimerStatus = registerVal13
	local registerVal14 = CoD.AmmoWidget_BackLine.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -18.000000, 14.000000)
	registerVal14:setTopBottom(false, false, 55.640000, 58.640000)
	registerVal14:setZRot(-90.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.LineTop0 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 159.580000, 219.500000)
	registerVal15:setTopBottom(true, false, 42.820000, 94.180000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_icon_pregame_ready"))
	registerVal2:addElement(registerVal15)
	registerVal2.ready = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_1612_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.Numbers:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Check:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal14:completeAnimation()
		registerVal2.LineTop0:setLeftRight(false, false, -16.000000, 16.000000)
		registerVal2.LineTop0:setTopBottom(false, false, 125.140000, 128.140000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ready:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_1612_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_1884_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.Numbers:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Check:setLeftRight(true, false, 164.500000, 218.500000)
		registerVal2.Check:setTopBottom(true, false, 42.000000, 96.000000)
		registerVal2.Check:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Check:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal15:completeAnimation()
		registerVal2.ready:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_1884_
	registerVal16.PostStage = registerVal17
	registerVal2.clipsPerState = registerVal16
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "PostStage"
	local function __FUNC_1AF2_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg1, "lobbyRoot.Pregame.stage", 3.000000)
	end

	registerVal19.condition = __FUNC_1AF2_
	registerVal18 = {registerVal19}
	registerVal2:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.GetModel(registerVal19, "lobbyRoot.Pregame.stage")
	local function __FUNC_1B81_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.stage"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal18, __FUNC_1B81_)
	local function __FUNC_1CAD_(arg0)
		arg0.GlowPanel:close()
		arg0.PanelAmmo:close()
		arg0.Numbers:close()
		arg0.Dot61:close()
		arg0.Dot600:close()
		arg0.Dot62:close()
		arg0.Dot601:close()
		arg0.LineTop:close()
		arg0.LineTop0:close()
		arg0.TimerStatus:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1CAD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

