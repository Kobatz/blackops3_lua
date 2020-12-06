-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Zm_BGB_LiquidDivGlow = registerVal1
function CoD.Zm_BGB_LiquidDivGlow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Zm_BGB_LiquidDivGlow)
	registerVal2.id = "Zm_BGB_LiquidDivGlow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 113.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 112.570000)
	registerVal3:setTopBottom(true, false, 0.000000, 100.040000)
	registerVal3:setRGB(0.000000, 0.890000, 1.000000)
	registerVal3:setAlpha(0.750000)
	registerVal3:setZRot(-84.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Glow = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_664_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_664_
	local function __FUNC_760_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_86B_(arg0, arg1)
			local function __FUNC_9E3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 910.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.100000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9E3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E3_)
		end

		registerVal3:completeAnimation()
		registerVal2.Glow:setAlpha(0.100000)
		__FUNC_86B_(registerVal3, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal5.Focus = __FUNC_760_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

