-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_PanelScale")
require("ui.uieditor.widgets.HUD.Flag.PlayerFlag")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PlayerFlagStatusMP = registerVal1
function CoD.PlayerFlagStatusMP.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PlayerFlagStatusMP)
	registerVal2.id = "PlayerFlagStatusMP"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreInfo_PanelScale.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -72.000000)
	registerVal3:setTopBottom(false, false, -13.000000, 11.000000)
	registerVal3:setRGB(0.640000, 0.670000, 0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -4.000000, 79.000000)
	registerVal4:setTopBottom(true, false, -4.000000, 36.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal4)
	registerVal2.ShadowGlow = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 32.000000, 243.000000)
	registerVal5:setTopBottom(false, false, -9.000000, 7.000000)
	registerVal5:setText(Engine.Localize("OBJECTIVES_FLAG_HOME_CAPS"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setLetterSpacing(1.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FriendlyFlagStatus = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 32.000000, 243.000000)
	registerVal6:setTopBottom(false, false, -9.000000, 7.000000)
	registerVal6:setText(Engine.Localize("WWWWWWWWWWWWWWWWW"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal6:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(1.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FriendlyFlagCarrier = registerVal6
	local registerVal7 = CoD.PlayerFlag.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 3.310000, 27.130000)
	registerVal7:setTopBottom(true, false, 7.000000, 25.140000)
	registerVal7:setRGB(ColorSet.FriendlyBlue.r, ColorSet.FriendlyBlue.g, ColorSet.FriendlyBlue.b)
	registerVal7.FlagTemp:setImage(RegisterImage("uie_t7_hud_waypoints_flag_square"))
	registerVal2:addElement(registerVal7)
	registerVal2.PlayerFlag = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_DA7_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal2.FriendlyFlagStatus:setText(Engine.Localize(""))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.DefaultClip = __FUNC_DA7_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_EE8_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.FriendlyFlagStatus:setText(Engine.Localize(""))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FriendlyFlagCarrier:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_EE8_
	registerVal8.Flag_Held = registerVal9
	registerVal9 = {}
	local function __FUNC_10A4_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.FriendlyFlagStatus:setText(Engine.Localize("OBJECTIVES_FLAG_AWAY_CAPS"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FriendlyFlagCarrier:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_10A4_
	registerVal8.Flag_Away = registerVal9
	registerVal9 = {}
	local function __FUNC_1279_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.FriendlyFlagStatus:setText(Engine.Localize("OBJECTIVES_FLAG_HOME_CAPS"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FriendlyFlagCarrier:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_1279_
	registerVal8.Flag_At_Base = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_144D_(arg0)
		arg0.Panel:close()
		arg0.PlayerFlag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_144D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

