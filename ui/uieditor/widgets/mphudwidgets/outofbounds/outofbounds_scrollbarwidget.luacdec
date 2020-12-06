-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.outofbounds_scrollbarwidget = registerVal1
function CoD.outofbounds_scrollbarwidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.outofbounds_scrollbarwidget)
	registerVal2.id = "outofbounds_scrollbarwidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 248.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 248.380000)
	registerVal3:setTopBottom(true, false, 0.000000, 40.060000)
	registerVal3:setRGB(0.730000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_outofbounds_scrollunderbar"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image8 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 248.380000)
	registerVal4:setTopBottom(true, false, 0.000000, 40.060000)
	registerVal4:setRGB(0.730000, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_outofbounds_scrollbar"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image9 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6E8_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_850_(arg0, arg1)
			local function __FUNC_9CB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
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
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CB_)
		end

		registerVal3:completeAnimation()
		registerVal2.Image8:setAlpha(0.100000)
		__FUNC_850_(registerVal3, {})
		local function __FUNC_B7D_(arg0, arg1)
			local function __FUNC_CF7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_CF7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF7_)
		end

		registerVal4:completeAnimation()
		registerVal2.Image9:setAlpha(1.000000)
		__FUNC_B7D_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_6E8_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_EA9_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_EA9_
	registerVal5.IsOutOfBounds = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

