-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_Icon = registerVal1
function CoD.AbilityWheel_Icon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_Icon)
	registerVal2.id = "AbilityWheel_Icon"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 62.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 62.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 6.000000, -6.000000)
	registerVal3:setTopBottom(true, true, 6.000000, -6.000000)
	registerVal3:setAlpha(RandomAddPercent(-10.000000, 1.000000))
	registerVal3:setupUIStreamedImage(0.000000)
	local function __FUNC_5CA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_5CA_)
	registerVal2:addElement(registerVal3)
	registerVal2.IconImage = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_67C_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_7B8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(RandomAddPercent(-10.000000, 1.000000))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.IconImage:setAlpha(RandomAddPercent(-10.000000, 1.000000))
		__FUNC_7B8_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_67C_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_998_(arg0)
		arg0.IconImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_998_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

