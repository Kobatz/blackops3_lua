-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_code_sea_subprop = registerVal1
function CoD.CallingCards_code_sea_subprop.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_code_sea_subprop)
	registerVal2.id = "CallingCards_code_sea_subprop"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 36.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_sea_sub_prop"))
	registerVal2:addElement(registerVal3)
	registerVal2.subprop = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_525_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_637_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 5050.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setZRot(360.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.subprop:setZRot(0.000000)
		__FUNC_637_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_525_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

