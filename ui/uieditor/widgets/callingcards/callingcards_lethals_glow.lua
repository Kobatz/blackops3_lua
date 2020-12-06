-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Lethals_Glow = registerVal1
function CoD.CallingCards_Lethals_Glow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_Lethals_Glow)
	registerVal2.id = "CallingCards_Lethals_Glow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 457.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 491.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 456.540000)
	registerVal3:setTopBottom(true, false, 0.000000, 490.540000)
	registerVal3:setRGB(1.000000, 0.630000, 0.000000)
	registerVal3:setZRot(-84.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.GlowOrangeOver = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5F2_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_706_(arg0, arg1)
			local function __FUNC_87F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1190.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_87F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.570000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87F_)
		end

		registerVal3:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(1.000000)
		__FUNC_706_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_5F2_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

