-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartLabel = registerVal1
function CoD.StartLabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.StartLabel)
	registerVal2.id = "StartLabel"
	registerVal2.soundSet = "FrontendMain"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 64.000000, 398.000000)
	registerVal3:setTopBottom(false, true, -58.000000, -36.000000)
	registerVal3:setRGB(0.850000, 0.880000, 0.910000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setText(Engine.Localize("PLATFORM_PRESS_START"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.lblPressToPlay = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6E2_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_7FB_(arg0, arg1)
			local function __FUNC_973_(arg0, arg1)
				local function __FUNC_AC8_(arg0, arg1)
					local function __FUNC_C43_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.450000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C43_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1000.000000, true, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.450000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C43_)
				end

				if arg1.interrupted then
					__FUNC_AC8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC8_)
			end

			if arg1.interrupted then
				__FUNC_973_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, true, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_973_)
		end

		registerVal3:completeAnimation()
		registerVal2.lblPressToPlay:setAlpha(0.450000)
		__FUNC_7FB_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_6E2_
	local function __FUNC_DF5_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_F09_(arg0, arg1)
			local function __FUNC_1083_(arg0, arg1)
				local function __FUNC_11D8_(arg0, arg1)
					local function __FUNC_1353_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.450000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1353_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1000.000000, true, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.450000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1353_)
				end

				if arg1.interrupted then
					__FUNC_11D8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D8_)
			end

			if arg1.interrupted then
				__FUNC_1083_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, true, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1083_)
		end

		registerVal3:completeAnimation()
		registerVal2.lblPressToPlay:setAlpha(0.450000)
		__FUNC_F09_(registerVal3, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal5.Focus = __FUNC_DF5_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

