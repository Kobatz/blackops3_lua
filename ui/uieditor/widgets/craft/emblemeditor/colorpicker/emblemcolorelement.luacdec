-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemColorElement = registerVal1
function CoD.EmblemColorElement.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemColorElement)
	registerVal2.id = "EmblemColorElement"
	registerVal2.soundSet = "SelectColor_ColorSwatchPicker"
	registerVal2:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(1.000000, 0.410000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal4:setTopBottom(true, true, 3.000000, -3.000000)
	local function __FUNC_6A2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "color", true, __FUNC_6A2_)
	registerVal2:addElement(registerVal4)
	registerVal2.colorElement = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_733_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.colorElement:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_733_
	local function __FUNC_891_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_AA7_(arg0, arg1)
			local function __FUNC_BFC_(arg0, arg1)
				local function __FUNC_D54_(arg0, arg1)
					local function __FUNC_ECF_(arg0, arg1)
						local function __FUNC_1024_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, true, 0.000000, 0.000000)
							arg0:setTopBottom(true, true, 0.000000, 0.000000)
							arg0:setRGB(1.000000, 0.410000, 0.000000)
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1024_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1024_)
					end

					if arg1.interrupted then
						__FUNC_ECF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.350000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ECF_)
				end

				if arg1.interrupted then
					__FUNC_D54_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D54_)
			end

			if arg1.interrupted then
				__FUNC_BFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, true, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFC_)
		end

		registerVal3:completeAnimation()
		registerVal2.background:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.background:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.background:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.background:setAlpha(0.650000)
		__FUNC_AA7_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.colorElement:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Focus = __FUNC_891_
	local function __FUNC_1263_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1472_(arg0, arg1)
			local function __FUNC_15C8_(arg0, arg1)
				local function __FUNC_1720_(arg0, arg1)
					local function __FUNC_189B_(arg0, arg1)
						local function __FUNC_19F0_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, true, 0.000000, 0.000000)
							arg0:setTopBottom(true, true, 0.000000, 0.000000)
							arg0:setRGB(1.000000, 1.000000, 1.000000)
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_19F0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19F0_)
					end

					if arg1.interrupted then
						__FUNC_189B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.350000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_189B_)
				end

				if arg1.interrupted then
					__FUNC_1720_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1720_)
			end

			if arg1.interrupted then
				__FUNC_15C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, true, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15C8_)
		end

		registerVal3:completeAnimation()
		registerVal2.background:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.background:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.background:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.background:setAlpha(0.650000)
		__FUNC_1472_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.colorElement:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Over = __FUNC_1263_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_1C2A_(arg0)
		arg0.colorElement:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C2A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

