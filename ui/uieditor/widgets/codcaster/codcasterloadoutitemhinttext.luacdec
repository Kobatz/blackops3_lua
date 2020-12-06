-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterLoadoutItemHintText = registerVal1
function CoD.CodCasterLoadoutItemHintText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterLoadoutItemHintText)
	registerVal2.id = "CodCasterLoadoutItemHintText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 260.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -7.500000, 7.500000)
	registerVal3:setTopBottom(false, false, 10.000000, 18.000000)
	registerVal3:setZRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.arrowUp = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 6.000000, 20.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_waypoints_namebg_left_mp"))
	registerVal2:addElement(registerVal4)
	registerVal2.bg = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -230.000000, 230.000000)
	registerVal5:setTopBottom(true, false, 6.000000, 20.000000)
	registerVal5:setText(Engine.Localize("MENU_NEW"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setLetterSpacing(1.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_A07_(arg0, arg1)
		ScaleWidgetToLabelCenteredWrapped(registerVal2, arg0, 4.000000, 4.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_A07_)
	registerVal2:addElement(registerVal5)
	registerVal2.text = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_A78_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.arrowUp:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_A78_
	local function __FUNC_C19_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.arrowUp:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_DB6_(arg0, arg1)
			local function __FUNC_F2F_(arg0, arg1)
				local function __FUNC_1084_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1084_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 950.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1084_)
			end

			if arg1.interrupted then
				__FUNC_F2F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F2F_)
		end

		registerVal4:completeAnimation()
		registerVal2.bg:setAlpha(0.000000)
		__FUNC_DB6_(registerVal4, {})
		local function __FUNC_1239_(arg0, arg1)
			local function __FUNC_13B3_(arg0, arg1)
				local function __FUNC_1508_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1508_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 950.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1508_)
			end

			if arg1.interrupted then
				__FUNC_13B3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13B3_)
		end

		registerVal5:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		__FUNC_1239_(registerVal5, {})
	end

	registerVal7.HintMulti = __FUNC_C19_
	local function __FUNC_16BD_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.arrowUp:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.HintSingle = __FUNC_16BD_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

