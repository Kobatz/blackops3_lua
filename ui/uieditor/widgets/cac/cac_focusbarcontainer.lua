-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_FocusBarContainer = registerVal1
function CoD.cac_FocusBarContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_FocusBarContainer)
	registerVal2.id = "cac_FocusBarContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 8.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -4.000000, 4.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.040000, 0.500000, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEFocusBarSolid = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -21.000000, 21.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal4:setAlpha(0.690000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_enemytargetbw_glow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow2 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_733_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_8A0_(arg0, arg1)
			local function __FUNC_A1B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.700000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A1B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.530000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1B_)
		end

		registerVal3:completeAnimation()
		registerVal2.FEFocusBarSolid:setAlpha(0.700000)
		__FUNC_8A0_(registerVal3, {})
		local function __FUNC_BCD_(arg0, arg1)
			local function __FUNC_D47_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.690000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_D47_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.840000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D47_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow2:setAlpha(0.690000)
		__FUNC_BCD_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_733_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

