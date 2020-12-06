-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C2_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
	local function __FUNC_27E_(arg0, arg1)
		arg0:playClip("GainOver")
		arg0.nextClip = "Over"
	end

	arg0:registerEventHandler("mouseenter", __FUNC_27E_)
	local function __FUNC_2FC_(arg0, arg1)
		arg0:playClip("LoseOver")
		arg0.nextClip = "DefaultClip"
	end

	arg0:registerEventHandler("mouseleave", __FUNC_2FC_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.OverClipContainer = registerVal2
local function __FUNC_383_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.OverClipContainer)
	registerVal2.id = "OverClipContainer"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 306.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 87.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -94.000000, 134.000000)
	registerVal3:setTopBottom(true, true, -35.210000, 45.210000)
	registerVal3:setRGB(0.910000, 1.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Glow2 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_A27_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A27_
	local function __FUNC_B21_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.Over = __FUNC_B21_
	local function __FUNC_C18_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_CFB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		__FUNC_CFB_(registerVal3, {})
	end

	registerVal5.GainOver = __FUNC_C18_
	local function __FUNC_EAD_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_F8A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		__FUNC_F8A_(registerVal3, {})
	end

	registerVal5.LoseOver = __FUNC_EAD_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_113D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_113D_
	registerVal4.HIdden = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "HIdden"
	local function __FUNC_1239_(arg0, arg2, arg3)
		return IsGamepad(arg1)
	end

	registerVal7.condition = __FUNC_1239_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_1287_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_1287_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "LastInput")
	local function __FUNC_130F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_130F_)
	if __FUNC_1C2_ then
		__FUNC_1C2_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.OverClipContainer.new = __FUNC_383_
