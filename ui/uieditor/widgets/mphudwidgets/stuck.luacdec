-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Stuck = registerVal1
function CoD.Stuck.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Stuck)
	registerVal2.id = "Stuck"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal3:setTopBottom(false, false, -32.000000, 32.000000)
	registerVal3:setAlpha(0.000000)
	local function __FUNC_58C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "HUDItems", "stickyImage", __FUNC_58C_)
	registerVal2:addElement(registerVal3)
	registerVal2.stickyIcon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_640_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.stickyIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_640_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_742_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_852_(arg0, arg1)
			local function __FUNC_9CB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9CB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CB_)
		end

		registerVal3:completeAnimation()
		registerVal2.stickyIcon:setAlpha(1.000000)
		__FUNC_852_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_742_
	registerVal4.Stuck = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_B7D_(arg0)
		arg0.stickyIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B7D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

