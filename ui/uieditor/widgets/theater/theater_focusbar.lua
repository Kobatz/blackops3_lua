-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Theater_FocusBar = registerVal1
function CoD.Theater_FocusBar.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Theater_FocusBar)
	registerVal2.id = "Theater_FocusBar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 8.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 1.000000, -2.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_barfocussolidfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.050000, 0.400000, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(2.000000, 2.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEFocusBarSolid = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -8.000000, 8.000000)
	registerVal4:setTopBottom(true, false, -1.100000, 9.100000)
	registerVal4:setRGB(1.000000, 0.990000, 0.000000)
	registerVal4:setAlpha(0.700000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 1.000000, -2.000000)
	registerVal5:setRGB(1.000000, 0.900000, 0.800000)
	registerVal5:setAlpha(0.990000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_barfocusfull"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal5:setShaderVector(0.000000, 0.050000, 0.400000, 0.000000, 0.000000)
	registerVal5:setupNineSliceShader(2.000000, 2.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FEFocusBarAdd = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_8CA_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_9DA_(arg0, arg1)
			local function __FUNC_B53_(arg0, arg1)
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
				__FUNC_B53_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.840000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B53_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow2:setAlpha(0.690000)
		__FUNC_9DA_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal7.DefaultClip = __FUNC_8CA_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

