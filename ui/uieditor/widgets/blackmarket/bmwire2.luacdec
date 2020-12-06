-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BMWire2 = registerVal1
function CoD.BMWire2.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BMWire2)
	registerVal2.id = "BMWire2"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 360.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 360.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_circuitanim_line2"))
	registerVal2:addElement(registerVal3)
	registerVal2.wires2 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -45.000000, 193.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 729.030000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_wireglowmask"))
	registerVal2:addElement(registerVal4)
	registerVal2.Mask0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_639_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.wires2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Mask0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_639_
	local function __FUNC_789_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_94B_(arg0, arg1)
			local function __FUNC_AA0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_AA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1269.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA0_)
		end

		registerVal3:completeAnimation()
		registerVal2.wires2:setAlpha(1.000000)
		__FUNC_94B_(registerVal3, {})
		local function __FUNC_C55_(arg0, arg1)
			local function __FUNC_DAC_(arg0, arg1)
				local function __FUNC_F3C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -45.000000, 193.000000)
					arg0:setTopBottom(true, false, -376.000000, 353.030000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_F3C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 930.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, -376.000000, 353.030000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3C_)
			end

			if arg1.interrupted then
				__FUNC_DAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DAC_)
		end

		registerVal4:completeAnimation()
		registerVal2.Mask0:setLeftRight(true, false, -45.000000, 193.000000)
		registerVal2.Mask0:setTopBottom(true, false, 0.000000, 729.030000)
		registerVal2.Mask0:setAlpha(1.000000)
		__FUNC_C55_(registerVal4, {})
	end

	registerVal6.circuitanim = __FUNC_789_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

