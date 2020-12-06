-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_ButtonInternal")
require("ui.uieditor.widgets.HUD.core_MapWidget.MapWidget_BarTop")
require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_UpDownArrow")
local function __FUNC_2C9_(arg0, arg1)
	arg0.m_focusable = true
	local function __FUNC_382_(arg0, arg2)
		if arg0.gridInfoTable then
			local registerVal3 = arg0:hasClip("Focus")
			if registerVal3 then
				local registerVal5 = {}
				registerVal5.name = "gain_focus"
				registerVal5.controller = arg1
				arg0:processEvent(registerVal5)
			else
				if arg0.gridInfoTable.parentGrid.activeWidget == arg0 then
					arg0.gridInfoTable.parentGrid:getFirstSelectableItem(true)
				end
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_382_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ScrStk_Button = registerVal2
local function __FUNC_4F5_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScrStk_Button)
	registerVal2.id = "ScrStk_Button"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 69.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 52.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -29.500000, 25.000000)
	registerVal3:setTopBottom(false, false, -18.000000, 17.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_boxfill"))
	registerVal2:addElement(registerVal3)
	registerVal2.PanelDarken = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 7.000000, 59.000000)
	registerVal4:setTopBottom(true, false, 8.000000, 44.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZoom(-10.000000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_boxcrss"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.StrokeInner = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 5.000000, 61.000000)
	registerVal5:setTopBottom(true, false, 8.000000, 44.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZoom(-10.000000)
	registerVal5:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_boxstrk"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Stroke = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -9.180000, 75.180000)
	registerVal6:setTopBottom(true, false, -5.500000, 56.500000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal6)
	registerVal2.DarkGlow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 10.000000, 55.000000)
	registerVal7:setTopBottom(true, false, 11.000000, 42.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_boxglow"))
	registerVal2:addElement(registerVal7)
	registerVal2.innerGlow = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -12.310000, 78.310000)
	registerVal8:setTopBottom(true, false, -10.660000, 60.660000)
	registerVal8:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Glow = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 4.000000, 61.000000)
	registerVal9:setTopBottom(true, false, 7.000000, 43.000000)
	registerVal9:setRGB(0.950000, 0.580000, 0.190000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(20.000000)
	registerVal9:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_box_fill"))
	registerVal2:addElement(registerVal9)
	registerVal2.fill = registerVal9
	local registerVal10 = CoD.ScrStk_ButtonInternal.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 2.000000, 71.000000)
	registerVal10:setTopBottom(true, false, -6.000000, 57.000000)
	registerVal10:setRGB(1.000000, 0.970000, 0.350000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(20.000000)
	registerVal10:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal10:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_2A73_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.Icon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "rewardImage", true, __FUNC_2A73_)
	registerVal2:addElement(registerVal10)
	registerVal2.ButtonContainer = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -25.750000, 21.250000)
	registerVal11:setTopBottom(false, false, -24.500000, 21.500000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.400000)
	registerVal11:setZoom(20.000000)
	registerVal11:setScale(0.900000)
	local function __FUNC_2B3E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "rewardImage", true, __FUNC_2B3E_)
	registerVal2:addElement(registerVal11)
	registerVal2.IconDuplicateShadow = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -26.000000, 22.000000)
	registerVal12:setTopBottom(false, false, -25.000000, 22.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(20.000000)
	registerVal12:setScale(0.900000)
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
	registerVal12:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_2BF0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "rewardImage", true, __FUNC_2BF0_)
	registerVal2:addElement(registerVal12)
	registerVal2.Icon = registerVal12
	local registerVal13 = CoD.MapWidget_BarTop.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, -7.000000, 8.000000)
	registerVal13:setTopBottom(true, false, 24.500000, 32.500000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setYRot(-180.000000)
	registerVal13:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal13:setShaderVector(0.000000, 0.150000, 1.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.BarBase = registerVal13
	local registerVal14 = CoD.ScrStk_UpDownArrow.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 28.000000, 36.000000)
	registerVal14:setTopBottom(true, false, -2.000000, 14.000000)
	registerVal14:setRGB(1.000000, 0.970000, 0.350000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setZoom(20.000000)
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Shown"
	local function __FUNC_2CA4_(arg0, arg2, arg3)
		return HigherKillstreakHasAmmo(arg1, arg2)
	end

	registerVal18.condition = __FUNC_2CA4_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, "killstreaks.killstreak0.rewardAmmo")
	local function __FUNC_2D05_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "killstreaks.killstreak0.rewardAmmo"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_2D05_)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, "killstreaks.killstreak1.rewardAmmo")
	local function __FUNC_2E3C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "killstreaks.killstreak1.rewardAmmo"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_2E3C_)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, "killstreaks.killstreak2.rewardAmmo")
	local function __FUNC_2F74_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "killstreaks.killstreak2.rewardAmmo"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_2F74_)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, "killstreaks.killstreak3.rewardAmmo")
	local function __FUNC_30AC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "killstreaks.killstreak3.rewardAmmo"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_30AC_)
	registerVal2:addElement(registerVal14)
	registerVal2.ScrStkUpArrow = registerVal14
	local registerVal15 = CoD.ScrStk_ButtonInternal.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 2.000000, 71.000000)
	registerVal15:setTopBottom(true, false, -6.000000, 57.000000)
	registerVal15:setRGB(1.000000, 0.970000, 0.350000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZoom(20.000000)
	registerVal15:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal15:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_31E4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.Icon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal15:linkToElementModel(registerVal2, "rewardImage", true, __FUNC_31E4_)
	registerVal2:addElement(registerVal15)
	registerVal2.ButtonContainer0 = registerVal15
	local registerVal16 = CoD.ScrStk_UpDownArrow.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 28.000000, 36.000000)
	registerVal16:setTopBottom(true, false, 37.000000, 53.000000)
	registerVal16:setRGB(1.000000, 0.970000, 0.350000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setZRot(180.000000)
	registerVal16:setZoom(20.000000)
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Shown"
	local function __FUNC_32B2_(arg0, arg2, arg3)
		return LowerKillstreakHasAmmo(arg1, arg2)
	end

	registerVal20.condition = __FUNC_32B2_
	registerVal19 = {registerVal20}
	registerVal16:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "killstreaks.killstreak0.rewardAmmo")
	local function __FUNC_3310_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "killstreaks.killstreak0.rewardAmmo"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_3310_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "killstreaks.killstreak1.rewardAmmo")
	local function __FUNC_3448_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "killstreaks.killstreak1.rewardAmmo"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_3448_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "killstreaks.killstreak2.rewardAmmo")
	local function __FUNC_3580_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "killstreaks.killstreak2.rewardAmmo"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_3580_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "killstreaks.killstreak3.rewardAmmo")
	local function __FUNC_36B8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "killstreaks.killstreak3.rewardAmmo"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_36B8_)
	registerVal2:addElement(registerVal16)
	registerVal2.ScrStkDownArrow = registerVal16
	registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -26.000000, 22.000000)
	registerVal17:setTopBottom(false, false, -25.500000, 22.500000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setZoom(20.000000)
	registerVal17:setScale(0.900000)
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_37F0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal2, "rewardImage", true, __FUNC_37F0_)
	registerVal2:addElement(registerVal17)
	registerVal2.IconDuplicateAdd = registerVal17
	registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 4.000000, 61.000000)
	registerVal18:setTopBottom(true, false, 7.000000, 44.000000)
	registerVal18:setRGB(1.000000, 0.970000, 0.350000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setZoom(20.000000)
	registerVal18:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_box2"))
	registerVal2:addElement(registerVal18)
	registerVal2.stroke = registerVal18
	registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 4.000000, 61.000000)
	registerVal19:setTopBottom(true, false, 7.000000, 44.000000)
	registerVal19:setRGB(1.000000, 0.970000, 0.350000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setZoom(20.000000)
	registerVal19:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_box2"))
	registerVal2:addElement(registerVal19)
	registerVal2.stroke0 = registerVal19
	registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 2.000000, 63.170000)
	registerVal20:setTopBottom(true, false, 5.000000, 46.000000)
	registerVal20:setRGB(0.950000, 0.580000, 0.190000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setZoom(20.000000)
	registerVal20:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_box3"))
	registerVal2:addElement(registerVal20)
	registerVal2.line3 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 2.000000, 65.580000)
	registerVal21:setTopBottom(true, false, 5.000000, 45.880000)
	registerVal21:setAlpha(0.000000)
	registerVal21:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_boxglow2"))
	registerVal2:addElement(registerVal21)
	registerVal2.glow = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(false, false, -26.000000, 22.000000)
	registerVal22:setTopBottom(false, false, -25.000000, 22.000000)
	registerVal22:setAlpha(0.000000)
	registerVal22:setZoom(20.000000)
	registerVal22:setScale(0.900000)
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
	registerVal22:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_38A4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal22:linkToElementModel(registerVal2, "rewardImage", true, __FUNC_38A4_)
	registerVal2:addElement(registerVal22)
	registerVal2.Icon0 = registerVal22
	local registerVal23 = {}
	local registerVal24 = {}
	local function __FUNC_3958_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelDarken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Stroke:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setLeftRight(true, false, -9.180000, 75.180000)
		registerVal2.DarkGlow:setTopBottom(true, false, -5.500000, 56.500000)
		registerVal2.DarkGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setLeftRight(true, false, 10.000000, 55.000000)
		registerVal2.innerGlow:setTopBottom(true, false, 11.000000, 42.000000)
		registerVal2.innerGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.innerGlow:setAlpha(0.000000)
		registerVal2.innerGlow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fill:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.fill:setTopBottom(true, false, 7.000000, 43.000000)
		registerVal2.fill:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.fill:setAlpha(0.000000)
		registerVal2.fill:setZoom(20.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(0.510000, 0.550000, 0.640000)
		registerVal2.ButtonContainer:setAlpha(0.000000)
		registerVal2.ButtonContainer:setZoom(0.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setLeftRight(false, false, -25.750000, 21.250000)
		registerVal2.IconDuplicateShadow:setTopBottom(false, false, -24.500000, 21.500000)
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		registerVal2.IconDuplicateShadow:setZoom(20.000000)
		registerVal2.IconDuplicateShadow:setScale(0.900000)
		registerVal2.IconDuplicateShadow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Icon:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.Icon:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(0.000000)
		registerVal2.Icon:setZoom(0.000000)
		registerVal2.Icon:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.Icon:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BarBase:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ScrStkUpArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkUpArrow:setTopBottom(true, false, -2.000000, 14.000000)
		registerVal2.ScrStkUpArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkUpArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ButtonContainer0:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ButtonContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ScrStkDownArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkDownArrow:setTopBottom(true, false, 37.000000, 53.000000)
		registerVal2.ScrStkDownArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkDownArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.IconDuplicateAdd:setTopBottom(false, false, -25.500000, 22.500000)
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		registerVal2.IconDuplicateAdd:setZoom(20.000000)
		registerVal2.IconDuplicateAdd:setScale(0.900000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.stroke:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.stroke:setTopBottom(true, false, 7.000000, 44.000000)
		registerVal2.stroke:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.stroke:setAlpha(0.000000)
		registerVal2.stroke:setZoom(20.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.stroke0:setAlpha(0.000000)
		registerVal2.stroke0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.line3:setLeftRight(true, false, 2.000000, 63.170000)
		registerVal2.line3:setTopBottom(true, false, 5.000000, 46.000000)
		registerVal2.line3:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.line3:setAlpha(0.000000)
		registerVal2.line3:setZoom(20.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glow:setLeftRight(true, false, 2.000000, 65.580000)
		registerVal2.glow:setTopBottom(true, false, 5.000000, 45.880000)
		registerVal2.glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glow:setAlpha(0.000000)
		registerVal2.glow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.Icon0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_3958_
	local function __FUNC_4A9B_()
		registerVal2:setupElementClipCounter(20.000000)
		local function __FUNC_5BC0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.PanelDarken:setAlpha(0.000000)
		__FUNC_5BC0_(registerVal3, {})
		local function __FUNC_5D75_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.400000)
		__FUNC_5D75_(registerVal4, {})
		local function __FUNC_5F29_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Stroke:setAlpha(0.400000)
		__FUNC_5F29_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setLeftRight(true, false, -9.180000, 75.180000)
		registerVal2.DarkGlow:setTopBottom(true, false, -5.500000, 56.500000)
		registerVal2.DarkGlow:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setLeftRight(true, false, 10.000000, 55.000000)
		registerVal2.innerGlow:setTopBottom(true, false, 11.000000, 42.000000)
		registerVal2.innerGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.innerGlow:setAlpha(0.000000)
		registerVal2.innerGlow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_60DD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_60DD_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fill:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.fill:setTopBottom(true, false, 7.000000, 43.000000)
		registerVal2.fill:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.fill:setAlpha(0.000000)
		registerVal2.fill:setZoom(20.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_6345_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0.ArrowSide:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.510000, 0.550000, 0.640000)
			arg0:setAlpha(0.800000)
			arg0:setZoom(0.000000)
			arg0.ArrowSide:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(0.510000, 0.550000, 0.640000)
		registerVal2.ButtonContainer:setAlpha(0.000000)
		registerVal2.ButtonContainer:setZoom(0.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(0.000000)
		__FUNC_6345_(registerVal10, {})
		local function __FUNC_65CE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -25.750000, 21.250000)
			arg0:setTopBottom(false, false, -24.500000, 21.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(20.000000)
			arg0:setScale(0.900000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setLeftRight(false, false, -25.750000, 21.250000)
		registerVal2.IconDuplicateShadow:setTopBottom(false, false, -24.500000, 21.500000)
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		registerVal2.IconDuplicateShadow:setZoom(20.000000)
		registerVal2.IconDuplicateShadow:setScale(0.900000)
		registerVal2.IconDuplicateShadow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_65CE_(registerVal11, {})
		local function __FUNC_68C3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -26.000000, 22.000000)
			arg0:setTopBottom(false, false, -25.000000, 22.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.900000)
			arg0:setZoom(0.000000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
			arg0:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Icon:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.Icon:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(0.000000)
		registerVal2.Icon:setZoom(0.000000)
		registerVal2.Icon:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.Icon:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_68C3_(registerVal12, {})
		local function __FUNC_6BF9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.BarBase:setAlpha(0.000000)
		__FUNC_6BF9_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ScrStkUpArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkUpArrow:setTopBottom(true, false, -2.000000, 14.000000)
		registerVal2.ScrStkUpArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkUpArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ButtonContainer0:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ButtonContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ScrStkDownArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkDownArrow:setTopBottom(true, false, 37.000000, 53.000000)
		registerVal2.ScrStkDownArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkDownArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.IconDuplicateAdd:setTopBottom(false, false, -25.500000, 22.500000)
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		registerVal2.IconDuplicateAdd:setZoom(20.000000)
		registerVal2.IconDuplicateAdd:setScale(0.900000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.stroke:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.stroke:setTopBottom(true, false, 7.000000, 44.000000)
		registerVal2.stroke:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.stroke:setAlpha(0.000000)
		registerVal2.stroke:setZoom(20.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.stroke0:setAlpha(0.000000)
		registerVal2.stroke0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.line3:setLeftRight(true, false, 2.000000, 63.170000)
		registerVal2.line3:setTopBottom(true, false, 5.000000, 46.000000)
		registerVal2.line3:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.line3:setAlpha(0.000000)
		registerVal2.line3:setZoom(20.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glow:setLeftRight(true, false, 2.000000, 65.580000)
		registerVal2.glow:setTopBottom(true, false, 5.000000, 45.880000)
		registerVal2.glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glow:setAlpha(0.000000)
		registerVal2.glow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.Icon0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.Charging = __FUNC_4A9B_
	local function __FUNC_6DAD_()
		registerVal2:setupElementClipCounter(15.000000)
		local function __FUNC_741A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.PanelDarken:setAlpha(0.000000)
		__FUNC_741A_(registerVal3, {})
		local function __FUNC_75CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.400000)
		__FUNC_75CD_(registerVal4, {})
		local function __FUNC_7781_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Stroke:setAlpha(0.400000)
		__FUNC_7781_(registerVal5, {})
		local function __FUNC_7935_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setAlpha(0.000000)
		__FUNC_7935_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_7AE9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_7AE9_(registerVal8, {})
		local function __FUNC_7C9D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0.ArrowSide:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.970000, 0.350000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			arg0.ArrowSide:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(0.510000, 0.550000, 0.640000)
		registerVal2.ButtonContainer:setAlpha(0.000000)
		registerVal2.ButtonContainer:setZoom(0.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(0.000000)
		__FUNC_7C9D_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.stroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.stroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.line3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.ReadyMiddle = __FUNC_6DAD_
	local function __FUNC_7F21_()
		registerVal2:setupElementClipCounter(20.000000)
		local function __FUNC_9033_(arg0, arg1)
			local function __FUNC_91AB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_91AB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91AB_)
		end

		registerVal3:completeAnimation()
		registerVal2.PanelDarken:setAlpha(0.000000)
		__FUNC_9033_(registerVal3, {})
		local function __FUNC_935D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.400000)
		__FUNC_935D_(registerVal4, {})
		local function __FUNC_9511_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Stroke:setAlpha(0.400000)
		__FUNC_9511_(registerVal5, {})
		local function __FUNC_96C5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -9.180000, 75.180000)
			arg0:setTopBottom(true, false, -5.500000, 56.500000)
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setLeftRight(true, false, -9.180000, 75.180000)
		registerVal2.DarkGlow:setTopBottom(true, false, -5.500000, 56.500000)
		registerVal2.DarkGlow:setAlpha(0.000000)
		__FUNC_96C5_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setLeftRight(true, false, 10.000000, 55.000000)
		registerVal2.innerGlow:setTopBottom(true, false, 11.000000, 42.000000)
		registerVal2.innerGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.innerGlow:setAlpha(0.000000)
		registerVal2.innerGlow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_98E9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_98E9_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fill:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.fill:setTopBottom(true, false, 7.000000, 43.000000)
		registerVal2.fill:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.fill:setAlpha(0.000000)
		registerVal2.fill:setZoom(20.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_9B51_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0.ArrowSide:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.510000, 0.550000, 0.640000)
			arg0:setAlpha(0.800000)
			arg0:setZoom(0.000000)
			arg0.ArrowSide:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(0.510000, 0.550000, 0.640000)
		registerVal2.ButtonContainer:setAlpha(0.000000)
		registerVal2.ButtonContainer:setZoom(0.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(0.000000)
		__FUNC_9B51_(registerVal10, {})
		local function __FUNC_9DDA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -25.750000, 21.250000)
			arg0:setTopBottom(false, false, -24.500000, 21.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			arg0:setScale(0.900000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setLeftRight(false, false, -25.750000, 21.250000)
		registerVal2.IconDuplicateShadow:setTopBottom(false, false, -24.500000, 21.500000)
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		registerVal2.IconDuplicateShadow:setZoom(0.000000)
		registerVal2.IconDuplicateShadow:setScale(0.900000)
		registerVal2.IconDuplicateShadow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_9DDA_(registerVal11, {})
		local function __FUNC_A0CA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -26.000000, 22.000000)
			arg0:setTopBottom(false, false, -25.000000, 22.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.900000)
			arg0:setZoom(0.000000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
			arg0:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Icon:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.Icon:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(0.000000)
		registerVal2.Icon:setZoom(0.000000)
		registerVal2.Icon:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.Icon:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_A0CA_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BarBase:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ScrStkUpArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkUpArrow:setTopBottom(true, false, -2.000000, 14.000000)
		registerVal2.ScrStkUpArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkUpArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ButtonContainer0:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.ButtonContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ScrStkDownArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkDownArrow:setTopBottom(true, false, 37.000000, 53.000000)
		registerVal2.ScrStkDownArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkDownArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_A401_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -26.000000, 22.000000)
			arg0:setTopBottom(false, false, -25.500000, 22.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(20.000000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.IconDuplicateAdd:setTopBottom(false, false, -25.500000, 22.500000)
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		registerVal2.IconDuplicateAdd:setZoom(20.000000)
		registerVal2.IconDuplicateAdd:setScale(0.900000)
		__FUNC_A401_(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.stroke:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.stroke:setTopBottom(true, false, 7.000000, 44.000000)
		registerVal2.stroke:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.stroke:setAlpha(0.000000)
		registerVal2.stroke:setZoom(20.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.stroke0:setAlpha(0.000000)
		registerVal2.stroke0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_A66A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 2.000000, 63.170000)
			arg0:setTopBottom(true, false, 5.000000, 46.000000)
			arg0:setRGB(0.950000, 0.580000, 0.190000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(20.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.line3:setLeftRight(true, false, 2.000000, 63.170000)
		registerVal2.line3:setTopBottom(true, false, 5.000000, 46.000000)
		registerVal2.line3:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.line3:setAlpha(0.000000)
		registerVal2.line3:setZoom(20.000000)
		__FUNC_A66A_(registerVal20, {})
		local function __FUNC_A8E2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 2.000000, 65.580000)
			arg0:setTopBottom(true, false, 5.000000, 45.880000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.glow:setLeftRight(true, false, 2.000000, 65.580000)
		registerVal2.glow:setTopBottom(true, false, 5.000000, 45.880000)
		registerVal2.glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glow:setAlpha(0.000000)
		registerVal2.glow:setZoom(0.000000)
		__FUNC_A8E2_(registerVal21, {})
		local function __FUNC_AB4B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(20.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.Icon0:setZoom(20.000000)
		__FUNC_AB4B_(registerVal22, {})
	end

	registerVal24.Inactive = __FUNC_7F21_
	registerVal23.DefaultState = registerVal24
	registerVal24 = {}
	local function __FUNC_AD1F_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelDarken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Stroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setLeftRight(true, false, -9.180000, 75.180000)
		registerVal2.DarkGlow:setTopBottom(true, false, -5.500000, 56.500000)
		registerVal2.DarkGlow:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setLeftRight(true, false, 10.000000, 55.000000)
		registerVal2.innerGlow:setTopBottom(true, false, 11.000000, 42.000000)
		registerVal2.innerGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.innerGlow:setAlpha(0.000000)
		registerVal2.innerGlow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fill:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.fill:setTopBottom(true, false, 7.000000, 43.000000)
		registerVal2.fill:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.fill:setAlpha(0.000000)
		registerVal2.fill:setZoom(20.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(0.510000, 0.550000, 0.640000)
		registerVal2.ButtonContainer:setAlpha(0.800000)
		registerVal2.ButtonContainer:setZoom(0.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setLeftRight(false, false, -25.750000, 21.250000)
		registerVal2.IconDuplicateShadow:setTopBottom(false, false, -24.500000, 21.500000)
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		registerVal2.IconDuplicateShadow:setZoom(0.000000)
		registerVal2.IconDuplicateShadow:setScale(0.900000)
		registerVal2.IconDuplicateShadow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Icon:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.Icon:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(0.900000)
		registerVal2.Icon:setZoom(0.000000)
		registerVal2.Icon:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.Icon:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BarBase:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ScrStkUpArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkUpArrow:setTopBottom(true, false, -2.000000, 14.000000)
		registerVal2.ScrStkUpArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkUpArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ButtonContainer0:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.ButtonContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ScrStkDownArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkDownArrow:setTopBottom(true, false, 37.000000, 53.000000)
		registerVal2.ScrStkDownArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkDownArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.IconDuplicateAdd:setTopBottom(false, false, -25.500000, 22.500000)
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		registerVal2.IconDuplicateAdd:setZoom(20.000000)
		registerVal2.IconDuplicateAdd:setScale(0.900000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.stroke:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.stroke:setTopBottom(true, false, 7.000000, 44.000000)
		registerVal2.stroke:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.stroke:setAlpha(0.000000)
		registerVal2.stroke:setZoom(20.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.stroke0:setAlpha(0.000000)
		registerVal2.stroke0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.line3:setLeftRight(true, false, 2.000000, 63.170000)
		registerVal2.line3:setTopBottom(true, false, 5.000000, 46.000000)
		registerVal2.line3:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.line3:setAlpha(0.000000)
		registerVal2.line3:setZoom(20.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glow:setLeftRight(true, false, 2.000000, 65.580000)
		registerVal2.glow:setTopBottom(true, false, 5.000000, 45.880000)
		registerVal2.glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glow:setAlpha(0.000000)
		registerVal2.glow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.Icon0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_AD1F_
	local function __FUNC_BE64_()
		registerVal2:setupElementClipCounter(16.000000)
		local function __FUNC_C6C7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.PanelDarken:setAlpha(0.300000)
		__FUNC_C6C7_(registerVal3, {})
		local function __FUNC_C879_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.000000)
		__FUNC_C879_(registerVal4, {})
		local function __FUNC_CA2D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Stroke:setAlpha(0.000000)
		__FUNC_CA2D_(registerVal5, {})
		local function __FUNC_CBE1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setAlpha(0.300000)
		__FUNC_CBE1_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_CD95_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_CD95_(registerVal8, {})
		local function __FUNC_CF49_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0.ArrowSide:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.510000, 0.550000, 0.640000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			arg0.ArrowSide:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(0.510000, 0.550000, 0.640000)
		registerVal2.ButtonContainer:setAlpha(0.800000)
		registerVal2.ButtonContainer:setZoom(0.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(0.000000)
		__FUNC_CF49_(registerVal10, {})
		local function __FUNC_D1CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		__FUNC_D1CD_(registerVal11, {})
		local function __FUNC_D381_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -26.000000, 22.000000)
			arg0:setTopBottom(false, false, -25.000000, 22.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
			arg0:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Icon:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.Icon:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(0.600000)
		registerVal2.Icon:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.Icon:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_D381_(registerVal12, {})
		local function __FUNC_D697_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.BarBase:setAlpha(0.000000)
		__FUNC_D697_(registerVal13, {})
		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.stroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.stroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.line3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultState = __FUNC_BE64_
	local function __FUNC_D849_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelDarken:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_DFBA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.000000)
		__FUNC_DFBA_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Stroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_E16D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setAlpha(0.300000)
		__FUNC_E16D_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_E321_(arg0, arg1)
			local function __FUNC_E4CE_(arg0, arg1)
				local function __FUNC_E67A_(arg0, arg1)
					local function __FUNC_E821_(arg0, arg1)
						local function __FUNC_E9AB_(arg0, arg1)
							local function __FUNC_EB56_(arg0, arg1)
								local function __FUNC_ECDF_(arg0, arg1)
									local function __FUNC_EE8A_(arg0, arg1)
										local function __FUNC_F036_(arg0, arg1)
											local function __FUNC_F1E2_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 249.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setRGB(1.000000, 0.270000, 0.000000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_F1E2_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setRGB(0.980000, 0.740000, 0.000000)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F1E2_)
										end

										if arg1.interrupted then
											__FUNC_F036_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setRGB(0.980000, 0.760000, 0.000000)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F036_)
									end

									if arg1.interrupted then
										__FUNC_EE8A_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setRGB(0.980000, 0.790000, 0.000000)
									arg0:setAlpha(0.540000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE8A_)
								end

								if arg1.interrupted then
									__FUNC_ECDF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:setRGB(0.980000, 0.810000, 0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ECDF_)
							end

							if arg1.interrupted then
								__FUNC_EB56_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setRGB(0.970000, 0.870000, 0.000000)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB56_)
						end

						if arg1.interrupted then
							__FUNC_E9AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(0.970000, 0.890000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9AB_)
					end

					if arg1.interrupted then
						__FUNC_E821_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(0.970000, 0.930000, 0.000000)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E821_)
				end

				if arg1.interrupted then
					__FUNC_E67A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.970000, 0.940000, 0.000000)
				arg0:setAlpha(0.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E67A_)
			end

			if arg1.interrupted then
				__FUNC_E4CE_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.970000, 0.980000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E4CE_)
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(0.970000, 1.000000, 0.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_E321_(registerVal8, {})
		local function __FUNC_F3C3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Bounce)
				arg0.ArrowSide:beginAnimation("subkeyframe", 180.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.970000, 0.350000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			arg0.ArrowSide:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(0.510000, 0.550000, 0.640000)
		registerVal2.ButtonContainer:setAlpha(0.800000)
		registerVal2.ButtonContainer:setZoom(0.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(0.000000)
		__FUNC_F3C3_(registerVal10, {})
		local function __FUNC_F645_(arg0, arg1)
			local function __FUNC_F7BF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.400000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F7BF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F7BF_)
		end

		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		registerVal2.IconDuplicateShadow:setZoom(0.000000)
		__FUNC_F645_(registerVal11, {})
		local function __FUNC_F993_(arg0, arg1)
			local function __FUNC_FB27_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(0.900000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
				arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_FB27_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB27_)
		end

		registerVal12:completeAnimation()
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(0.900000)
		registerVal2.Icon:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.Icon:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_F993_(registerVal12, {})
		local function __FUNC_FDD5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.BarBase:setAlpha(0.000000)
		__FUNC_FDD5_(registerVal13, {})
		registerVal18:completeAnimation()
		registerVal2.stroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal20:completeAnimation()
		registerVal2.line3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.ReadyMiddle = __FUNC_D849_
	registerVal23.Inactive = registerVal24
	registerVal24 = {}
	local function __FUNC_FF89_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelDarken:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Stroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setLeftRight(true, false, -9.180000, 75.180000)
		registerVal2.DarkGlow:setTopBottom(true, false, -5.500000, 56.500000)
		registerVal2.DarkGlow:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setLeftRight(true, false, 10.000000, 55.000000)
		registerVal2.innerGlow:setTopBottom(true, false, 11.000000, 42.000000)
		registerVal2.innerGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.innerGlow:setAlpha(0.000000)
		registerVal2.innerGlow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fill:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.fill:setTopBottom(true, false, 7.000000, 43.000000)
		registerVal2.fill:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.fill:setAlpha(0.000000)
		registerVal2.fill:setZoom(20.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(0.510000, 0.550000, 0.640000)
		registerVal2.ButtonContainer:setAlpha(0.800000)
		registerVal2.ButtonContainer:setZoom(0.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setLeftRight(false, false, -25.750000, 21.250000)
		registerVal2.IconDuplicateShadow:setTopBottom(false, false, -24.500000, 21.500000)
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		registerVal2.IconDuplicateShadow:setZoom(20.000000)
		registerVal2.IconDuplicateShadow:setScale(0.900000)
		registerVal2.IconDuplicateShadow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Icon:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.Icon:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(0.900000)
		registerVal2.Icon:setZoom(0.000000)
		registerVal2.Icon:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.Icon:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BarBase:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ScrStkUpArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkUpArrow:setTopBottom(true, false, -2.000000, 14.000000)
		registerVal2.ScrStkUpArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkUpArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ButtonContainer0:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ButtonContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ScrStkDownArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkDownArrow:setTopBottom(true, false, 37.000000, 53.000000)
		registerVal2.ScrStkDownArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkDownArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.IconDuplicateAdd:setTopBottom(false, false, -25.500000, 22.500000)
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		registerVal2.IconDuplicateAdd:setZoom(20.000000)
		registerVal2.IconDuplicateAdd:setScale(0.900000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.stroke:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.stroke:setTopBottom(true, false, 7.000000, 44.000000)
		registerVal2.stroke:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.stroke:setAlpha(0.000000)
		registerVal2.stroke:setZoom(20.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.stroke0:setAlpha(0.000000)
		registerVal2.stroke0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.line3:setLeftRight(true, false, 2.000000, 63.170000)
		registerVal2.line3:setTopBottom(true, false, 5.000000, 46.000000)
		registerVal2.line3:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.line3:setAlpha(0.000000)
		registerVal2.line3:setZoom(20.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glow:setLeftRight(true, false, 2.000000, 65.580000)
		registerVal2.glow:setTopBottom(true, false, 5.000000, 45.880000)
		registerVal2.glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glow:setAlpha(0.000000)
		registerVal2.glow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.Icon0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_FF89_
	local function __FUNC_110D5_()
		registerVal2:setupElementClipCounter(20.000000)
		local function __FUNC_121FD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.PanelDarken:setAlpha(0.300000)
		__FUNC_121FD_(registerVal3, {})
		local function __FUNC_123B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.000000)
		__FUNC_123B1_(registerVal4, {})
		local function __FUNC_12565_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Stroke:setAlpha(0.000000)
		__FUNC_12565_(registerVal5, {})
		local function __FUNC_12719_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -9.180000, 75.180000)
			arg0:setTopBottom(true, false, -5.500000, 56.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setLeftRight(true, false, -9.180000, 75.180000)
		registerVal2.DarkGlow:setTopBottom(true, false, -5.500000, 56.500000)
		registerVal2.DarkGlow:setAlpha(0.300000)
		__FUNC_12719_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setLeftRight(true, false, 10.000000, 55.000000)
		registerVal2.innerGlow:setTopBottom(true, false, 11.000000, 42.000000)
		registerVal2.innerGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.innerGlow:setAlpha(0.000000)
		registerVal2.innerGlow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_1293D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_1293D_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fill:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.fill:setTopBottom(true, false, 7.000000, 43.000000)
		registerVal2.fill:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.fill:setAlpha(0.000000)
		registerVal2.fill:setZoom(20.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_12BA5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0.ArrowSide:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.510000, 0.550000, 0.640000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			arg0.ArrowSide:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(0.510000, 0.550000, 0.640000)
		registerVal2.ButtonContainer:setAlpha(0.800000)
		registerVal2.ButtonContainer:setZoom(0.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(0.000000)
		__FUNC_12BA5_(registerVal10, {})
		local function __FUNC_12E29_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -25.750000, 21.250000)
			arg0:setTopBottom(false, false, -24.500000, 21.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(20.000000)
			arg0:setScale(0.900000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setLeftRight(false, false, -25.750000, 21.250000)
		registerVal2.IconDuplicateShadow:setTopBottom(false, false, -24.500000, 21.500000)
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		registerVal2.IconDuplicateShadow:setZoom(20.000000)
		registerVal2.IconDuplicateShadow:setScale(0.900000)
		registerVal2.IconDuplicateShadow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_12E29_(registerVal11, {})
		local function __FUNC_1311F_(arg0, arg1)
			local function __FUNC_13297_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -26.000000, 22.000000)
				arg0:setTopBottom(false, false, -25.000000, 22.000000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(0.000000)
				arg0:setZoom(0.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
				arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_13297_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.790000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13297_)
		end

		registerVal12:completeAnimation()
		registerVal2.Icon:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.Icon:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(0.900000)
		registerVal2.Icon:setZoom(0.000000)
		registerVal2.Icon:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.Icon:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_1311F_(registerVal12, {})
		local function __FUNC_135C8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.BarBase:setAlpha(0.700000)
		__FUNC_135C8_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ScrStkUpArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkUpArrow:setTopBottom(true, false, -2.000000, 14.000000)
		registerVal2.ScrStkUpArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkUpArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ButtonContainer0:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ButtonContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ScrStkDownArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkDownArrow:setTopBottom(true, false, 37.000000, 53.000000)
		registerVal2.ScrStkDownArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkDownArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.IconDuplicateAdd:setTopBottom(false, false, -25.500000, 22.500000)
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		registerVal2.IconDuplicateAdd:setZoom(20.000000)
		registerVal2.IconDuplicateAdd:setScale(0.900000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.stroke:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.stroke:setTopBottom(true, false, 7.000000, 44.000000)
		registerVal2.stroke:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.stroke:setAlpha(0.000000)
		registerVal2.stroke:setZoom(20.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.stroke0:setAlpha(0.000000)
		registerVal2.stroke0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.line3:setLeftRight(true, false, 2.000000, 63.170000)
		registerVal2.line3:setTopBottom(true, false, 5.000000, 46.000000)
		registerVal2.line3:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.line3:setAlpha(0.000000)
		registerVal2.line3:setZoom(20.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glow:setLeftRight(true, false, 2.000000, 65.580000)
		registerVal2.glow:setTopBottom(true, false, 5.000000, 45.880000)
		registerVal2.glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glow:setAlpha(0.000000)
		registerVal2.glow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.Icon0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultState = __FUNC_110D5_
	local function __FUNC_1377D_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelDarken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_14809_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 180.000000, false, true, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.000000)
		__FUNC_14809_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Stroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_149BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -7.820000, 72.460000)
			arg0:setTopBottom(true, false, -3.500000, 55.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setLeftRight(true, false, -7.820000, 72.460000)
		registerVal2.DarkGlow:setTopBottom(true, false, -3.500000, 55.500000)
		registerVal2.DarkGlow:setAlpha(0.300000)
		__FUNC_149BD_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setLeftRight(true, false, 10.000000, 55.000000)
		registerVal2.innerGlow:setTopBottom(true, false, 11.000000, 42.000000)
		registerVal2.innerGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.innerGlow:setAlpha(0.000000)
		registerVal2.innerGlow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_14BE1_(arg0, arg1)
			local function __FUNC_14D8E_(arg0, arg1)
				local function __FUNC_14F35_(arg0, arg1)
					local function __FUNC_150DD_(arg0, arg1)
						local function __FUNC_15267_(arg0, arg1)
							local function __FUNC_15412_(arg0, arg1)
								local function __FUNC_1559B_(arg0, arg1)
									local function __FUNC_15746_(arg0, arg1)
										local function __FUNC_158F2_(arg0, arg1)
											local function __FUNC_15A9E_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 249.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_15A9E_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setRGB(0.980000, 0.880000, 0.000000)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A9E_)
										end

										if arg1.interrupted then
											__FUNC_158F2_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setRGB(0.980000, 0.880000, 0.000000)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_158F2_)
									end

									if arg1.interrupted then
										__FUNC_15746_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setRGB(0.980000, 0.900000, 0.000000)
									arg0:setAlpha(0.540000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15746_)
								end

								if arg1.interrupted then
									__FUNC_1559B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:setRGB(0.980000, 0.910000, 0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1559B_)
							end

							if arg1.interrupted then
								__FUNC_15412_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setRGB(0.970000, 0.940000, 0.000000)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15412_)
						end

						if arg1.interrupted then
							__FUNC_15267_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(0.970000, 0.950000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15267_)
					end

					if arg1.interrupted then
						__FUNC_150DD_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(0.970000, 0.960000, 0.000000)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_150DD_)
				end

				if arg1.interrupted then
					__FUNC_14F35_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.970000, 0.970000, 0.000000)
				arg0:setAlpha(0.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14F35_)
			end

			if arg1.interrupted then
				__FUNC_14D8E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.970000, 0.990000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D8E_)
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(0.970000, 1.000000, 0.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_14BE1_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fill:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.fill:setTopBottom(true, false, 7.000000, 43.000000)
		registerVal2.fill:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.fill:setAlpha(1.000000)
		registerVal2.fill:setZoom(20.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_15D05_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 180.000000, false, true, CoD.TweenType.Bounce)
				arg0.ArrowSide:beginAnimation("subkeyframe", 180.000000, false, true, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 0.970000, 0.350000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			arg0.ArrowSide:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(0.510000, 0.550000, 0.640000)
		registerVal2.ButtonContainer:setAlpha(0.800000)
		registerVal2.ButtonContainer:setZoom(0.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(0.000000)
		__FUNC_15D05_(registerVal10, {})
		local function __FUNC_15F89_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -26.000000, 22.000000)
			arg0:setTopBottom(false, false, -25.000000, 22.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(20.000000)
			arg0:setScale(0.900000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.IconDuplicateShadow:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		registerVal2.IconDuplicateShadow:setZoom(20.000000)
		registerVal2.IconDuplicateShadow:setScale(0.900000)
		registerVal2.IconDuplicateShadow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_15F89_(registerVal11, {})
		local function __FUNC_1627A_(arg0, arg1)
			local function __FUNC_16432_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 120.000000, false, true, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(false, false, -26.000000, 22.000000)
				arg0:setTopBottom(false, false, -25.000000, 22.000000)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
				arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_16432_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.980000)
			arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16432_)
		end

		registerVal12:completeAnimation()
		registerVal2.Icon:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.Icon:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(0.900000)
		registerVal2.Icon:setZoom(0.000000)
		registerVal2.Icon:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.Icon:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_1627A_(registerVal12, {})
		local function __FUNC_16764_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.BarBase:setAlpha(0.700000)
		__FUNC_16764_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ScrStkUpArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkUpArrow:setTopBottom(true, false, -2.000000, 14.000000)
		registerVal2.ScrStkUpArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkUpArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ButtonContainer0:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.ButtonContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ScrStkDownArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkDownArrow:setTopBottom(true, false, 37.000000, 53.000000)
		registerVal2.ScrStkDownArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkDownArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.IconDuplicateAdd:setTopBottom(false, false, -25.500000, 22.500000)
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		registerVal2.IconDuplicateAdd:setZoom(20.000000)
		registerVal2.IconDuplicateAdd:setScale(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.stroke:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.stroke:setTopBottom(true, false, 7.000000, 44.000000)
		registerVal2.stroke:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.stroke:setAlpha(1.000000)
		registerVal2.stroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.stroke0:setAlpha(0.000000)
		registerVal2.stroke0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.line3:setLeftRight(true, false, 2.000000, 63.170000)
		registerVal2.line3:setTopBottom(true, false, 5.000000, 46.000000)
		registerVal2.line3:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.line3:setAlpha(0.000000)
		registerVal2.line3:setZoom(20.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glow:setLeftRight(true, false, 2.000000, 65.580000)
		registerVal2.glow:setTopBottom(true, false, 5.000000, 45.880000)
		registerVal2.glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glow:setAlpha(0.000000)
		registerVal2.glow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.Icon0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.ReadyMiddle = __FUNC_1377D_
	registerVal23.Charging = registerVal24
	registerVal24 = {}
	local function __FUNC_16919_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelDarken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Stroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setLeftRight(true, false, -7.820000, 72.460000)
		registerVal2.DarkGlow:setTopBottom(true, false, -3.500000, 55.500000)
		registerVal2.DarkGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setLeftRight(true, false, 10.000000, 55.000000)
		registerVal2.innerGlow:setTopBottom(true, false, 11.000000, 42.000000)
		registerVal2.innerGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.innerGlow:setAlpha(0.000000)
		registerVal2.innerGlow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fill:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.fill:setTopBottom(true, false, 7.000000, 43.000000)
		registerVal2.fill:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.fill:setAlpha(1.000000)
		registerVal2.fill:setZoom(20.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ButtonContainer:setAlpha(1.000000)
		registerVal2.ButtonContainer:setZoom(0.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.IconDuplicateShadow:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		registerVal2.IconDuplicateShadow:setZoom(20.000000)
		registerVal2.IconDuplicateShadow:setScale(0.900000)
		registerVal2.IconDuplicateShadow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Icon:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.Icon:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.Icon:setZoom(0.000000)
		registerVal2.Icon:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.Icon:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BarBase:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ScrStkUpArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkUpArrow:setTopBottom(true, false, -2.000000, 14.000000)
		registerVal2.ScrStkUpArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkUpArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ButtonContainer0:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.ButtonContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ScrStkDownArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkDownArrow:setTopBottom(true, false, 37.000000, 53.000000)
		registerVal2.ScrStkDownArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkDownArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.IconDuplicateAdd:setTopBottom(false, false, -25.500000, 22.500000)
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		registerVal2.IconDuplicateAdd:setZoom(20.000000)
		registerVal2.IconDuplicateAdd:setScale(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.stroke:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.stroke:setTopBottom(true, false, 7.000000, 44.000000)
		registerVal2.stroke:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.stroke:setAlpha(1.000000)
		registerVal2.stroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.stroke0:setAlpha(0.000000)
		registerVal2.stroke0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.line3:setLeftRight(true, false, 2.000000, 63.170000)
		registerVal2.line3:setTopBottom(true, false, 5.000000, 46.000000)
		registerVal2.line3:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.line3:setAlpha(0.000000)
		registerVal2.line3:setZoom(20.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glow:setLeftRight(true, false, 2.000000, 65.580000)
		registerVal2.glow:setTopBottom(true, false, 5.000000, 45.880000)
		registerVal2.glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glow:setAlpha(0.000000)
		registerVal2.glow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.Icon0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_16919_
	local function __FUNC_17A33_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelDarken:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Stroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setLeftRight(true, false, -2.490000, 67.740000)
		registerVal2.DarkGlow:setTopBottom(true, false, 1.000000, 52.000000)
		registerVal2.DarkGlow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setLeftRight(true, false, 7.000000, 57.000000)
		registerVal2.innerGlow:setTopBottom(true, false, 9.000000, 43.000000)
		registerVal2.innerGlow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.innerGlow:setAlpha(1.000000)
		registerVal2.innerGlow:setZoom(20.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
		registerVal2.Glow:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fill:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.fill:setTopBottom(true, false, 7.000000, 43.000000)
		registerVal2.fill:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.fill:setAlpha(1.000000)
		registerVal2.fill:setZoom(20.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ButtonContainer:setAlpha(1.000000)
		registerVal2.ButtonContainer:setZoom(20.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setLeftRight(false, false, -25.750000, 21.250000)
		registerVal2.IconDuplicateShadow:setTopBottom(false, false, -24.500000, 21.500000)
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		registerVal2.IconDuplicateShadow:setZoom(20.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Icon:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.Icon:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.Icon:setZoom(20.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.ScrStkUpArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkUpArrow:setTopBottom(true, false, -2.000000, 14.000000)
		registerVal2.ScrStkUpArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkUpArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ButtonContainer0:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ButtonContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ScrStkDownArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkDownArrow:setTopBottom(true, false, 37.000000, 53.000000)
		registerVal2.ScrStkDownArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkDownArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.IconDuplicateAdd:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		registerVal2.IconDuplicateAdd:setZoom(20.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.stroke:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.stroke:setTopBottom(true, false, 7.000000, 44.000000)
		registerVal2.stroke:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.stroke:setAlpha(1.000000)
		registerVal2.stroke:setZoom(20.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal20:completeAnimation()
		registerVal2.line3:setLeftRight(true, false, 2.000000, 63.000000)
		registerVal2.line3:setTopBottom(true, false, 5.000000, 46.000000)
		registerVal2.line3:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.line3:setAlpha(1.000000)
		registerVal2.line3:setZoom(20.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glow:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.glow:setTopBottom(true, false, 7.000000, 44.000000)
		registerVal2.glow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.glow:setAlpha(1.000000)
		registerVal2.glow:setZoom(20.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(1.000000)
		registerVal2.Icon0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.Focus = __FUNC_17A33_
	local function __FUNC_188F4_()
		registerVal2:setupElementClipCounter(12.000000)
		local function __FUNC_190CE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.000000)
		__FUNC_190CE_(registerVal4, {})
		local function __FUNC_1927F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.250000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setAlpha(0.000000)
		__FUNC_1927F_(registerVal6, {})
		local function __FUNC_19431_(arg0, arg1)
			local function __FUNC_19588_(arg0, arg1)
				local function __FUNC_19703_(arg0, arg1)
					local function __FUNC_198AE_(arg0, arg1)
						local function __FUNC_19A5A_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setRGB(1.000000, 0.930000, 0.000000)
							arg0:setAlpha(0.350000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_19A5A_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Bounce)
						arg0:setRGB(1.000000, 0.960000, 0.500000)
						arg0:setAlpha(0.550000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19A5A_)
					end

					if arg1.interrupted then
						__FUNC_198AE_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Bounce)
					arg0:setRGB(1.000000, 0.990000, 0.870000)
					arg0:setAlpha(0.250000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_198AE_)
				end

				if arg1.interrupted then
					__FUNC_19703_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19703_)
			end

			if arg1.interrupted then
				__FUNC_19588_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19588_)
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_19431_(registerVal8, {})
		local function __FUNC_19C40_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 7.000000, 57.500000)
			arg0:setTopBottom(true, false, 9.000000, 41.500000)
			arg0:setRGB(1.000000, 0.970000, 0.350000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(20.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.fill:setLeftRight(true, false, 7.000000, 57.500000)
		registerVal2.fill:setTopBottom(true, false, 9.000000, 41.500000)
		registerVal2.fill:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.fill:setAlpha(0.750000)
		registerVal2.fill:setZoom(20.000000)
		__FUNC_19C40_(registerVal9, {})
		local function __FUNC_19EB5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Back)
				arg0.ArrowSide:beginAnimation("subkeyframe", 109.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 0.970000, 0.350000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(20.000000)
			arg0.ArrowSide:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ButtonContainer:setAlpha(1.000000)
		registerVal2.ButtonContainer:setZoom(0.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(0.000000)
		__FUNC_19EB5_(registerVal10, {})
		local function __FUNC_1A137_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -26.000000, 22.000000)
			arg0:setTopBottom(false, false, -25.000000, 22.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(20.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setLeftRight(false, false, -25.000000, 23.000000)
		registerVal2.IconDuplicateShadow:setTopBottom(false, false, -26.000000, 21.000000)
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		registerVal2.IconDuplicateShadow:setZoom(20.000000)
		__FUNC_1A137_(registerVal11, {})
		local function __FUNC_1A376_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -26.000000, 22.000000)
			arg0:setTopBottom(false, false, -25.000000, 22.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(20.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Icon:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.Icon:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(0.900000)
		registerVal2.Icon:setZoom(0.000000)
		__FUNC_1A376_(registerVal12, {})
		local function __FUNC_1A5D8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.970000, 0.350000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.ButtonContainer0:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ButtonContainer0:setAlpha(0.000000)
		__FUNC_1A5D8_(registerVal15, {})
		local function __FUNC_1A7BB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		__FUNC_1A7BB_(registerVal17, {})
		local function __FUNC_1A96D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.970000, 0.350000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(20.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.stroke:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.stroke:setAlpha(0.000000)
		registerVal2.stroke:setZoom(0.000000)
		__FUNC_1A96D_(registerVal18, {})
		local function __FUNC_1AB71_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setZoom(20.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.stroke0:setZoom(0.000000)
		__FUNC_1AB71_(registerVal19, {})
		local function __FUNC_1AD24_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(20.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.line3:setAlpha(0.000000)
		registerVal2.line3:setZoom(0.000000)
		__FUNC_1AD24_(registerVal20, {})
	end

	registerVal24.GainFocus = __FUNC_188F4_
	local function __FUNC_1AEFB_()
		registerVal2:setupElementClipCounter(17.000000)
		local function __FUNC_1B87F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.000000)
		__FUNC_1B87F_(registerVal4, {})
		local function __FUNC_1BA31_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setAlpha(0.250000)
		__FUNC_1BA31_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_1BBE5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.930000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.930000, 0.000000)
		registerVal2.Glow:setAlpha(0.180000)
		__FUNC_1BBE5_(registerVal8, {})
		local function __FUNC_1BDC7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 5.000000, 60.390000)
			arg0:setTopBottom(true, false, 6.500000, 43.500000)
			arg0:setRGB(0.950000, 0.580000, 0.190000)
			arg0:setAlpha(0.750000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.fill:setLeftRight(true, false, 5.000000, 60.390000)
		registerVal2.fill:setTopBottom(true, false, 6.500000, 43.500000)
		registerVal2.fill:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.fill:setAlpha(1.000000)
		registerVal2.fill:setZoom(20.000000)
		__FUNC_1BDC7_(registerVal9, {})
		local function __FUNC_1C03E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
				arg0.ArrowSide:beginAnimation("subkeyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.970000, 0.350000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			arg0.ArrowSide:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.ButtonContainer:setAlpha(1.000000)
		registerVal2.ButtonContainer:setZoom(20.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(1.000000)
		__FUNC_1C03E_(registerVal10, {})
		local function __FUNC_1C2C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -26.000000, 22.000000)
			arg0:setTopBottom(false, false, -24.000000, 22.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.IconDuplicateShadow:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.IconDuplicateShadow:setAlpha(0.400000)
		registerVal2.IconDuplicateShadow:setZoom(20.000000)
		__FUNC_1C2C1_(registerVal11, {})
		local function __FUNC_1C4FD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -26.000000, 22.000000)
			arg0:setTopBottom(false, false, -25.000000, 22.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.900000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Icon:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.Icon:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.Icon:setZoom(20.000000)
		__FUNC_1C4FD_(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal2.ScrStkUpArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_1C767_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.ButtonContainer0:setAlpha(1.000000)
		__FUNC_1C767_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ScrStkDownArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_1C919_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		__FUNC_1C919_(registerVal17, {})
		local function __FUNC_1CACD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.970000, 0.350000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.stroke:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.stroke:setAlpha(1.000000)
		__FUNC_1CACD_(registerVal18, {})
		local function __FUNC_1CCB4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.stroke0:setAlpha(0.000000)
		registerVal2.stroke0:setZoom(20.000000)
		__FUNC_1CCB4_(registerVal19, {})
		local function __FUNC_1CE86_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.line3:setAlpha(1.000000)
		registerVal2.line3:setZoom(20.000000)
		__FUNC_1CE86_(registerVal20, {})
		local function __FUNC_1D056_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.glow:setAlpha(1.000000)
		__FUNC_1D056_(registerVal21, {})
		local function __FUNC_1D209_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(1.000000)
		__FUNC_1D209_(registerVal22, {})
	end

	registerVal24.LoseFocus = __FUNC_1AEFB_
	local function __FUNC_1D3BD_()
		registerVal2:setupElementClipCounter(20.000000)
		local function __FUNC_1E4D5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.PanelDarken:setAlpha(0.300000)
		__FUNC_1E4D5_(registerVal3, {})
		local function __FUNC_1E689_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.000000)
		__FUNC_1E689_(registerVal4, {})
		local function __FUNC_1E83D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Stroke:setAlpha(0.000000)
		__FUNC_1E83D_(registerVal5, {})
		local function __FUNC_1E9F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -9.180000, 75.180000)
			arg0:setTopBottom(true, false, -5.500000, 56.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setLeftRight(true, false, -9.180000, 75.180000)
		registerVal2.DarkGlow:setTopBottom(true, false, -5.500000, 56.500000)
		registerVal2.DarkGlow:setAlpha(0.400000)
		__FUNC_1E9F1_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setLeftRight(true, false, 10.000000, 55.000000)
		registerVal2.innerGlow:setTopBottom(true, false, 11.000000, 42.000000)
		registerVal2.innerGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.innerGlow:setAlpha(0.000000)
		registerVal2.innerGlow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_1EC15_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_1EC15_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fill:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.fill:setTopBottom(true, false, 7.000000, 43.000000)
		registerVal2.fill:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.fill:setAlpha(0.000000)
		registerVal2.fill:setZoom(20.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_1EE7D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0.ArrowSide:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.510000, 0.550000, 0.640000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			arg0.ArrowSide:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ButtonContainer:setAlpha(1.000000)
		registerVal2.ButtonContainer:setZoom(0.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(0.000000)
		__FUNC_1EE7D_(registerVal10, {})
		local function __FUNC_1F101_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -25.750000, 21.250000)
			arg0:setTopBottom(false, false, -24.500000, 21.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(20.000000)
			arg0:setScale(0.900000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setLeftRight(false, false, -25.750000, 21.250000)
		registerVal2.IconDuplicateShadow:setTopBottom(false, false, -24.500000, 21.500000)
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		registerVal2.IconDuplicateShadow:setZoom(20.000000)
		registerVal2.IconDuplicateShadow:setScale(0.900000)
		registerVal2.IconDuplicateShadow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_1F101_(registerVal11, {})
		local function __FUNC_1F3F7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -26.000000, 22.000000)
			arg0:setTopBottom(false, false, -25.000000, 22.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
			arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Icon:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.Icon:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(0.900000)
		registerVal2.Icon:setZoom(0.000000)
		registerVal2.Icon:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.Icon:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_1F3F7_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BarBase:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ScrStkUpArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkUpArrow:setTopBottom(true, false, -2.000000, 14.000000)
		registerVal2.ScrStkUpArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkUpArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ButtonContainer0:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ButtonContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ScrStkDownArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkDownArrow:setTopBottom(true, false, 37.000000, 53.000000)
		registerVal2.ScrStkDownArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkDownArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.IconDuplicateAdd:setTopBottom(false, false, -25.500000, 22.500000)
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		registerVal2.IconDuplicateAdd:setZoom(20.000000)
		registerVal2.IconDuplicateAdd:setScale(0.900000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.stroke:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.stroke:setTopBottom(true, false, 7.000000, 44.000000)
		registerVal2.stroke:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.stroke:setAlpha(0.000000)
		registerVal2.stroke:setZoom(20.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.stroke0:setAlpha(0.000000)
		registerVal2.stroke0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.line3:setLeftRight(true, false, 2.000000, 63.170000)
		registerVal2.line3:setTopBottom(true, false, 5.000000, 46.000000)
		registerVal2.line3:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.line3:setAlpha(0.000000)
		registerVal2.line3:setZoom(20.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glow:setLeftRight(true, false, 2.000000, 65.580000)
		registerVal2.glow:setTopBottom(true, false, 5.000000, 45.880000)
		registerVal2.glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glow:setAlpha(0.000000)
		registerVal2.glow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.Icon0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultState = __FUNC_1D3BD_
	local function __FUNC_1F728_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelDarken:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_20841_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.000000)
		__FUNC_20841_(registerVal4, {})
		local function __FUNC_209F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Stroke:setAlpha(0.000000)
		__FUNC_209F5_(registerVal5, {})
		local function __FUNC_20BA9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -9.180000, 75.180000)
			arg0:setTopBottom(true, false, -5.500000, 56.500000)
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setLeftRight(true, false, -9.180000, 75.180000)
		registerVal2.DarkGlow:setTopBottom(true, false, -5.500000, 56.500000)
		registerVal2.DarkGlow:setAlpha(0.400000)
		__FUNC_20BA9_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setLeftRight(true, false, 10.000000, 55.000000)
		registerVal2.innerGlow:setTopBottom(true, false, 11.000000, 42.000000)
		registerVal2.innerGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.innerGlow:setAlpha(0.000000)
		registerVal2.innerGlow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_20DCD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_20DCD_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fill:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.fill:setTopBottom(true, false, 7.000000, 43.000000)
		registerVal2.fill:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.fill:setAlpha(0.000000)
		registerVal2.fill:setZoom(20.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_21035_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0.ArrowSide:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.510000, 0.550000, 0.640000)
			arg0:setAlpha(0.800000)
			arg0:setZoom(0.000000)
			arg0.ArrowSide:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ButtonContainer:setAlpha(1.000000)
		registerVal2.ButtonContainer:setZoom(0.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(0.000000)
		__FUNC_21035_(registerVal10, {})
		local function __FUNC_212BE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -25.750000, 21.250000)
			arg0:setTopBottom(false, false, -24.500000, 21.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(20.000000)
			arg0:setScale(0.900000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setLeftRight(false, false, -25.750000, 21.250000)
		registerVal2.IconDuplicateShadow:setTopBottom(false, false, -24.500000, 21.500000)
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		registerVal2.IconDuplicateShadow:setZoom(20.000000)
		registerVal2.IconDuplicateShadow:setScale(0.900000)
		registerVal2.IconDuplicateShadow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_212BE_(registerVal11, {})
		local function __FUNC_215B3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -26.000000, 22.000000)
			arg0:setTopBottom(false, false, -25.000000, 22.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.900000)
			arg0:setZoom(0.000000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
			arg0:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Icon:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.Icon:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(0.900000)
		registerVal2.Icon:setZoom(0.000000)
		registerVal2.Icon:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.Icon:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_215B3_(registerVal12, {})
		local function __FUNC_218E9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.BarBase:setAlpha(0.000000)
		__FUNC_218E9_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ScrStkUpArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkUpArrow:setTopBottom(true, false, -2.000000, 14.000000)
		registerVal2.ScrStkUpArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkUpArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ButtonContainer0:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ButtonContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ScrStkDownArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkDownArrow:setTopBottom(true, false, 37.000000, 53.000000)
		registerVal2.ScrStkDownArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkDownArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.IconDuplicateAdd:setTopBottom(false, false, -25.500000, 22.500000)
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		registerVal2.IconDuplicateAdd:setZoom(20.000000)
		registerVal2.IconDuplicateAdd:setScale(0.900000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.stroke:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.stroke:setTopBottom(true, false, 7.000000, 44.000000)
		registerVal2.stroke:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.stroke:setAlpha(0.000000)
		registerVal2.stroke:setZoom(20.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.stroke0:setAlpha(0.000000)
		registerVal2.stroke0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.line3:setLeftRight(true, false, 2.000000, 63.170000)
		registerVal2.line3:setTopBottom(true, false, 5.000000, 46.000000)
		registerVal2.line3:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.line3:setAlpha(0.000000)
		registerVal2.line3:setZoom(20.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glow:setLeftRight(true, false, 2.000000, 65.580000)
		registerVal2.glow:setTopBottom(true, false, 5.000000, 45.880000)
		registerVal2.glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glow:setAlpha(0.000000)
		registerVal2.glow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.Icon0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.Charging = __FUNC_1F728_
	local function __FUNC_21A9D_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.PanelDarken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_22BB4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.StrokeInner:setAlpha(0.000000)
		__FUNC_22BB4_(registerVal4, {})
		local function __FUNC_22D69_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Stroke:setAlpha(0.000000)
		__FUNC_22D69_(registerVal5, {})
		local function __FUNC_22F1D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -9.180000, 75.180000)
			arg0:setTopBottom(true, false, -5.500000, 56.500000)
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.DarkGlow:setLeftRight(true, false, -9.180000, 75.180000)
		registerVal2.DarkGlow:setTopBottom(true, false, -5.500000, 56.500000)
		registerVal2.DarkGlow:setAlpha(0.400000)
		__FUNC_22F1D_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.innerGlow:setLeftRight(true, false, 10.000000, 55.000000)
		registerVal2.innerGlow:setTopBottom(true, false, 11.000000, 42.000000)
		registerVal2.innerGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.innerGlow:setAlpha(0.000000)
		registerVal2.innerGlow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_23141_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(ColorSet.CoreControl.r, ColorSet.CoreControl.g, ColorSet.CoreControl.b)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_23141_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fill:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.fill:setTopBottom(true, false, 7.000000, 43.000000)
		registerVal2.fill:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.fill:setAlpha(0.000000)
		registerVal2.fill:setZoom(20.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_233A9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				arg0.ArrowSide:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.510000, 0.550000, 0.640000)
			arg0:setAlpha(0.800000)
			arg0:setZoom(0.000000)
			arg0.ArrowSide:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal10.ArrowSide:completeAnimation()
		registerVal2.ButtonContainer:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ButtonContainer:setAlpha(1.000000)
		registerVal2.ButtonContainer:setZoom(0.000000)
		registerVal2.ButtonContainer.ArrowSide:setAlpha(0.000000)
		__FUNC_233A9_(registerVal10, {})
		local function __FUNC_23632_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -25.750000, 21.250000)
			arg0:setTopBottom(false, false, -24.500000, 21.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			arg0:setScale(0.900000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.IconDuplicateShadow:setLeftRight(false, false, -25.750000, 21.250000)
		registerVal2.IconDuplicateShadow:setTopBottom(false, false, -24.500000, 21.500000)
		registerVal2.IconDuplicateShadow:setAlpha(0.000000)
		registerVal2.IconDuplicateShadow:setZoom(0.000000)
		registerVal2.IconDuplicateShadow:setScale(0.900000)
		registerVal2.IconDuplicateShadow:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_23632_(registerVal11, {})
		local function __FUNC_23922_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -26.000000, 22.000000)
			arg0:setTopBottom(false, false, -25.000000, 22.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.900000)
			arg0:setZoom(0.000000)
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
			arg0:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Icon:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.Icon:setTopBottom(false, false, -25.000000, 22.000000)
		registerVal2.Icon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Icon:setAlpha(0.900000)
		registerVal2.Icon:setZoom(0.000000)
		registerVal2.Icon:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.Icon:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_23922_(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BarBase:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ScrStkUpArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkUpArrow:setTopBottom(true, false, -2.000000, 14.000000)
		registerVal2.ScrStkUpArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkUpArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ButtonContainer0:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.ButtonContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ScrStkDownArrow:setLeftRight(true, false, 28.000000, 36.000000)
		registerVal2.ScrStkDownArrow:setTopBottom(true, false, 37.000000, 53.000000)
		registerVal2.ScrStkDownArrow:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.ScrStkDownArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconDuplicateAdd:setLeftRight(false, false, -26.000000, 22.000000)
		registerVal2.IconDuplicateAdd:setTopBottom(false, false, -25.500000, 22.500000)
		registerVal2.IconDuplicateAdd:setAlpha(0.000000)
		registerVal2.IconDuplicateAdd:setZoom(20.000000)
		registerVal2.IconDuplicateAdd:setScale(0.900000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.stroke:setLeftRight(true, false, 4.000000, 61.000000)
		registerVal2.stroke:setTopBottom(true, false, 7.000000, 44.000000)
		registerVal2.stroke:setRGB(1.000000, 0.970000, 0.350000)
		registerVal2.stroke:setAlpha(0.000000)
		registerVal2.stroke:setZoom(20.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.stroke0:setAlpha(0.000000)
		registerVal2.stroke0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.line3:setLeftRight(true, false, 2.000000, 63.170000)
		registerVal2.line3:setTopBottom(true, false, 5.000000, 46.000000)
		registerVal2.line3:setRGB(0.950000, 0.580000, 0.190000)
		registerVal2.line3:setAlpha(0.000000)
		registerVal2.line3:setZoom(20.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.glow:setLeftRight(true, false, 2.000000, 65.580000)
		registerVal2.glow:setTopBottom(true, false, 5.000000, 45.880000)
		registerVal2.glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.glow:setAlpha(0.000000)
		registerVal2.glow:setZoom(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Icon0:setAlpha(0.000000)
		registerVal2.Icon0:setZoom(20.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.Inactive = __FUNC_21A9D_
	registerVal23.ReadyMiddle = registerVal24
	registerVal2.clipsPerState = registerVal23
	local registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "Inactive"
	local function __FUNC_23C59_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "rewardImage")
		registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "rewardAmmo", 0.000000)
		if registerVal3 and registerVal3 then
			registerVal3 = EarningTowardsThisKillstreak(arg1, arg2)
		end
		return (not registerVal3)
	end

	registerVal26.condition = __FUNC_23C59_
	local registerVal27 = {}
	registerVal27.stateName = "Charging"
	local function __FUNC_23D75_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "rewardImage")
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "rewardAmmo", 0.000000)
		end
		return registerVal3
	end

	registerVal27.condition = __FUNC_23D75_
	local registerVal28 = {}
	registerVal28.stateName = "ReadyMiddle"
	local function __FUNC_23E4F_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThan(arg2, arg1, "rewardAmmo", 0.000000)
	end

	registerVal28.condition = __FUNC_23E4F_
	registerVal25 = {registerVal26, registerVal27, registerVal28}
	registerVal2:mergeStateConditions(registerVal25)
	local function __FUNC_23ED2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardImage"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rewardImage", true, __FUNC_23ED2_)
	local function __FUNC_23FF1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardAmmo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rewardAmmo", true, __FUNC_23FF1_)
	registerVal26 = Engine.GetModelForController(arg1)
	registerVal25 = Engine.GetModel(registerVal26, "rewardMomentum")
	local function __FUNC_24110_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardMomentum"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal25, __FUNC_24110_)
	local function __FUNC_24234_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDpadButton(arg3)
		if registerVal4 then
			HandleScoreStreakDpadRight(registerVal2, arg2)
			return true
		end
	end

	local function __FUNC_242C6_(arg0, arg1, arg2)
		local registerVal4 = IsDpadButton(nil)
		if registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RIGHT, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_RIGHT, nil, __FUNC_24234_, __FUNC_242C6_, false)
	local function __FUNC_243E7_(arg0)
		arg0.ButtonContainer:close()
		arg0.BarBase:close()
		arg0.ScrStkUpArrow:close()
		arg0.ButtonContainer0:close()
		arg0.ScrStkDownArrow:close()
		arg0.IconDuplicateShadow:close()
		arg0.Icon:close()
		arg0.IconDuplicateAdd:close()
		arg0.Icon0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_243E7_)
	if __FUNC_2C9_ then
		__FUNC_2C9_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ScrStk_Button.new = __FUNC_4F5_
