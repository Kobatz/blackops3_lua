-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C9_(arg0, arg1)
	arg0.BombTimer:setAlignment(LUI.Alignment.Left)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CodCasterBombTimerWidget = registerVal2
local function __FUNC_27B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterBombTimerWidget)
	registerVal2.id = "CodCasterBombTimerWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 46.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -5.500000, 23.000000)
	registerVal3:setTopBottom(true, false, 7.000000, 23.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.BombTimerBackground = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -22.500000, -5.500000)
	registerVal4:setTopBottom(true, false, 7.000000, 23.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_waypoints_snd_empty"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	local function __FUNC_D83_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "HUDItems", "colorBlindSensitiveEnemyColor", __FUNC_D83_)
	registerVal2:addElement(registerVal4)
	registerVal2.backgroundEnemy = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -22.500000, -5.500000)
	registerVal5:setTopBottom(true, false, 7.000000, 23.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_waypoints_snd_empty"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	local function __FUNC_E13_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "HUDItems", "colorBlindSensitiveFriendlyColor", __FUNC_E13_)
	registerVal2:addElement(registerVal5)
	registerVal2.backgroundFriendly = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(false, false, -3.500000, 23.000000)
	registerVal6:setTopBottom(true, false, 7.000000, 23.000000)
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal6:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setupBombTimer(0.000000, true)
	registerVal2:addElement(registerVal6)
	registerVal2.BombTimer = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -22.500000, -4.000000)
	registerVal7:setTopBottom(true, false, 9.000000, 21.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setText(Engine.Localize("C"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.AOrBText = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_EA3_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BombTimerBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.backgroundEnemy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backgroundFriendly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BombTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AOrBText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_EA3_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1115_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BombTimerBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.backgroundEnemy:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backgroundFriendly:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BombTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AOrBText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1115_
	registerVal8.VisibleFriendly = registerVal9
	registerVal9 = {}
	local function __FUNC_138E_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BombTimerBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.backgroundEnemy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backgroundFriendly:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BombTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AOrBText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_138E_
	registerVal8.VisibleEnemy = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_1606_(arg0)
		arg0.backgroundEnemy:close()
		arg0.backgroundFriendly:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1606_)
	if __FUNC_1C9_ then
		__FUNC_1C9_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CodCasterBombTimerWidget.new = __FUNC_27B_
