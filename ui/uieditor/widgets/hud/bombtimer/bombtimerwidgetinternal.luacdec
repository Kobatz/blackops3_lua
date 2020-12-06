-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_PanelScale")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BombTimerWidgetInternal = registerVal1
function CoD.BombTimerWidgetInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BombTimerWidgetInternal)
	registerVal2.id = "BombTimerWidgetInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 73.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreInfo_PanelScale.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -38.500000, 38.500000)
	registerVal3:setTopBottom(false, false, -14.000000, 14.000000)
	registerVal3:setRGB(0.640000, 0.670000, 0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 27.000000, 73.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal4)
	registerVal2.BombTimerBackground = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 25.500000)
	registerVal5:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_waypoints_snd_empty"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	local function __FUNC_E0D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "HUDItems", "colorBlindSensitiveFriendlyColor", __FUNC_E0D_)
	registerVal2:addElement(registerVal5)
	registerVal2.backgroundFriendly = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 25.500000)
	registerVal6:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_waypoints_snd_empty"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	local function __FUNC_E9F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setRGB(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "HUDItems", "colorBlindSensitiveEnemyColor", __FUNC_E9F_)
	registerVal2:addElement(registerVal6)
	registerVal2.backgroundEnemy = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 33.000000, 73.000000)
	registerVal7:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal7:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setupBombTimer(0.000000, true)
	registerVal2:addElement(registerVal7)
	registerVal2.BombTimer = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, -0.750000, 26.250000)
	registerVal8:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setText(Engine.Localize("C"))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.AOrBText = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_F2F_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_F2F_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_F8E_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.BombTimerBackground:setLeftRight(true, false, 27.000000, 73.000000)
		registerVal2.BombTimerBackground:setTopBottom(true, false, 0.000000, 24.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backgroundFriendly:setLeftRight(true, false, 0.000000, 27.000000)
		registerVal2.backgroundFriendly:setTopBottom(true, false, 0.000000, 24.000000)
		registerVal2.backgroundFriendly:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.backgroundEnemy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimer:setLeftRight(true, false, 33.000000, 73.000000)
		registerVal2.BombTimer:setTopBottom(true, false, 0.000000, 24.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AOrBText:setLeftRight(true, false, 0.000000, 27.000000)
		registerVal2.AOrBText:setTopBottom(true, false, 0.000000, 24.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_F8E_
	registerVal9.Attacking = registerVal10
	registerVal10 = {}
	local function __FUNC_1332_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.BombTimerBackground:setLeftRight(true, false, 27.000000, 73.000000)
		registerVal2.BombTimerBackground:setTopBottom(true, false, 0.000000, 24.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backgroundFriendly:setLeftRight(true, false, 0.000000, 27.000000)
		registerVal2.backgroundFriendly:setTopBottom(true, false, 0.000000, 24.000000)
		registerVal2.backgroundFriendly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.backgroundEnemy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BombTimer:setLeftRight(true, false, 33.000000, 73.000000)
		registerVal2.BombTimer:setTopBottom(true, false, 0.000000, 24.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.AOrBText:setLeftRight(true, false, 0.000000, 27.000000)
		registerVal2.AOrBText:setTopBottom(true, false, 0.000000, 24.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1332_
	registerVal9.Defending = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_16D6_(arg0)
		arg0.Panel:close()
		arg0.backgroundFriendly:close()
		arg0.backgroundEnemy:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_16D6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

