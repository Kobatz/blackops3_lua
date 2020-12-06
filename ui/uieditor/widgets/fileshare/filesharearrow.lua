-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C7_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
end

local function __FUNC_214_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_1C7_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.FileshareArrow = registerVal3
local function __FUNC_287_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareArrow)
	registerVal2.id = "FileshareArrow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 60.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 60.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal3:setScale(1.200000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_menu_options_arrow"))
	registerVal2:addElement(registerVal3)
	registerVal2.ArrowR = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_64D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ArrowR:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ArrowR:setAlpha(0.200000)
		registerVal2.ArrowR:setScale(0.800000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_64D_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7B1_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_8C8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ArrowR:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ArrowR:setAlpha(0.000000)
		__FUNC_8C8_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7B1_
	registerVal4.Hide = registerVal5
	registerVal5 = {}
	local function __FUNC_AA6_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_BEF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ArrowR:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ArrowR:setAlpha(0.200000)
		registerVal2.ArrowR:setScale(0.800000)
		__FUNC_BEF_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_AA6_
	local function __FUNC_DE8_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_F3D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.460000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ArrowR:setRGB(1.000000, 0.460000, 0.000000)
		registerVal2.ArrowR:setAlpha(0.200000)
		registerVal2.ArrowR:setScale(0.800000)
		__FUNC_F3D_(registerVal3, {})
	end

	registerVal5.Over = __FUNC_DE8_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	if __FUNC_214_ then
		__FUNC_214_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FileshareArrow.new = __FUNC_287_
