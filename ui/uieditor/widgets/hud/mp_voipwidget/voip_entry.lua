-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Voip_Entry = registerVal1
function CoD.Voip_Entry.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Voip_Entry)
	registerVal2.id = "Voip_Entry"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 232.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 20.000000, 232.000000)
	registerVal3:setTopBottom(false, false, -6.000000, 8.000000)
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setLetterSpacing(0.200000)
	local function __FUNC_B19_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(registerVal1)
		end
	end

	registerVal3:linkToElementModel(registerVal2, "name", true, __FUNC_B19_)
	registerVal2:addElement(registerVal3)
	registerVal2.Entry = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 18.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_voiptemp-01"))
	registerVal2:addElement(registerVal4)
	registerVal2.talker = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 20.000000, 232.000000)
	registerVal5:setTopBottom(false, false, -6.000000, 8.000000)
	registerVal5:setRGB(ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b)
	registerVal5:setAlpha(0.000000)
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setLetterSpacing(0.200000)
	local function __FUNC_BAC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal2, "name", true, __FUNC_BAC_)
	registerVal2:addElement(registerVal5)
	registerVal2.enemyEntry = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 18.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal6:setRGB(ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_voiptemp-01"))
	registerVal2:addElement(registerVal6)
	registerVal2.enemyTalker = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 232.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.forceUI3dDraw = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_C40_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Entry:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.talker:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.enemyEntry:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.enemyTalker:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_C40_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_E47_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Entry:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.talker:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.enemyEntry:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.enemyTalker:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_E47_
	registerVal8.Invisible = registerVal9
	registerVal9 = {}
	local function __FUNC_1046_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Entry:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.talker:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.enemyEntry:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.enemyTalker:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_1046_
	registerVal8.EnemyTalking = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Invisible"
	local function __FUNC_124B_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "status", Enum.eVoipStatus.VOIP_HIDDEN)
	end

	registerVal11.condition = __FUNC_124B_
	local registerVal12 = {}
	registerVal12.stateName = "EnemyTalking"
	local function __FUNC_1315_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "status", Enum.eVoipStatus.VOIP_ENEMY_TALKING)
	end

	registerVal12.condition = __FUNC_1315_
	registerVal10 = {registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_13E8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "status"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "status", true, __FUNC_13E8_)
	local function __FUNC_1504_(arg0)
		arg0.Entry:close()
		arg0.enemyEntry:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1504_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

