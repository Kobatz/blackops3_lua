-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_Humiliation_Skull")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_HumiliationWidget = registerVal1
function CoD.CallingCards_HumiliationWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_HumiliationWidget)
	registerVal2.id = "CallingCards_HumiliationWidget"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_humiliation_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_humiliation_flame1"))
	registerVal2:addElement(registerVal4)
	registerVal2.Flame1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_humiliation_flame2"))
	registerVal2:addElement(registerVal5)
	registerVal2.Flame2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 376.750000, 480.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal6:setRGB(0.880000, 0.380000, 0.040000)
	registerVal2:addElement(registerVal6)
	registerVal2.orangeBOX = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 288.000000, 480.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_humiliation_flame3"))
	registerVal2:addElement(registerVal7)
	registerVal2.Burst = registerVal7
	local registerVal8 = CoD.CallingCards_Humiliation_Skull.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 288.000000, 480.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.CallingCardsHumiliationSkull = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_999_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_D2C_(arg0, arg1)
			local function __FUNC_EBC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 0.000000, 480.000000)
				arg0:setTopBottom(true, false, 0.000000, 120.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_EBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -24.000000, 456.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBC_)
		end

		registerVal4:completeAnimation()
		registerVal2.Flame1:setLeftRight(true, false, 0.000000, 480.000000)
		registerVal2.Flame1:setTopBottom(true, false, 0.000000, 120.000000)
		__FUNC_D2C_(registerVal4, {})
		local function __FUNC_10B9_(arg0, arg1)
			local function __FUNC_1248_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 0.000000, 480.000000)
				arg0:setTopBottom(true, false, 0.000000, 120.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1248_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -28.000000, 452.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1248_)
		end

		registerVal5:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
		registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_10B9_)
		local function __FUNC_1445_(arg0, arg1)
			local function __FUNC_159C_(arg0, arg1)
				local function __FUNC_1717_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 260.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1717_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(1.100000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1717_)
			end

			if arg1.interrupted then
				__FUNC_159C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_159C_)
		end

		registerVal7:completeAnimation()
		registerVal2.Burst:setScale(1.000000)
		__FUNC_1445_(registerVal7, {})
		local function __FUNC_18C9_(arg0, arg1)
			local function __FUNC_1A43_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1A43_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A43_)
		end

		registerVal8:completeAnimation()
		registerVal2.CallingCardsHumiliationSkull:setAlpha(1.000000)
		registerVal2.CallingCardsHumiliationSkull:setScale(1.000000)
		__FUNC_18C9_(registerVal8, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal10.DefaultClip = __FUNC_999_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_1C13_(arg0)
		arg0.CallingCardsHumiliationSkull:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C13_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

