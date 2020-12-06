-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_sentinel_NotificationSignalBox = registerVal1
function CoD.vhud_sentinel_NotificationSignalBox.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_sentinel_NotificationSignalBox)
	registerVal2.id = "vhud_sentinel_NotificationSignalBox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 81.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 7.000000, 23.000000)
	registerVal3:setText(Engine.Localize("MENU_HUD_VEHICLE_STRONG"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal3:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.STRONG = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 7.000000, 23.000000)
	registerVal4:setText(Engine.Localize("MENU_HUD_VEHICLE_STRONG"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.STRONG0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 7.000000, 23.000000)
	registerVal5:setRGB(1.000000, 0.000000, 0.000000)
	registerVal5:setText(Engine.Localize("MENU_HUD_VEHICLE_WEAK"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal5:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.WEAK = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 7.000000, 23.000000)
	registerVal6:setRGB(1.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setText(Engine.Localize("MENU_HUD_VEHICLE_WEAK"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.WEAK0 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 7.000000, 23.000000)
	registerVal7:setRGB(1.000000, 0.000000, 0.000000)
	registerVal7:setText(Engine.Localize("MENU_HUD_VEHICLE_WEAK"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.WEAK00 = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, false, 7.000000, 23.000000)
	registerVal8:setRGB(1.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("MENU_HUD_VEHICLE_WEAK"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.WEAK000 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -13.960000, 12.000000)
	registerVal9:setTopBottom(true, false, -19.850000, 50.850000)
	registerVal9:setRGB(1.000000, 0.000000, 0.030000)
	registerVal9:setAlpha(0.500000)
	registerVal9:setZRot(-90.000000)
	registerVal9:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.GlowOrangeOver = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_10BB_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.STRONG:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.STRONG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.WEAK:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.WEAK0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WEAK00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WEAK000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_10BB_
	local function __FUNC_13BA_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.WEAK:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.WEAK0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WEAK00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WEAK000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.StartUp = __FUNC_13BA_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_160C_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.STRONG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.STRONG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_1A3F_(arg0, arg1)
			local function __FUNC_1BB7_(arg0, arg1)
				local function __FUNC_1D0C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 199.000000, true, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1D0C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D0C_)
			end

			if arg1.interrupted then
				__FUNC_1BB7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, true, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BB7_)
		end

		registerVal5:completeAnimation()
		registerVal2.WEAK:setAlpha(0.600000)
		__FUNC_1A3F_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.WEAK0:setAlpha(0.000000)
		registerVal2.WEAK0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_font_cached"))
		registerVal2.WEAK0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_1EC1_(arg0, arg1)
			local function __FUNC_203B_(arg0, arg1)
				local function __FUNC_2190_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2190_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2190_)
			end

			if arg1.interrupted then
				__FUNC_203B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_203B_)
		end

		registerVal7:completeAnimation()
		registerVal2.WEAK00:setAlpha(0.000000)
		__FUNC_1EC1_(registerVal7, {})
		local function __FUNC_2345_(arg0, arg1)
			local function __FUNC_24BF_(arg0, arg1)
				local function __FUNC_2614_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2614_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2614_)
			end

			if arg1.interrupted then
				__FUNC_24BF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24BF_)
		end

		registerVal8:completeAnimation()
		registerVal2.WEAK000:setAlpha(0.000000)
		__FUNC_2345_(registerVal8, {})
		local function __FUNC_27C9_(arg0, arg1)
			local function __FUNC_2943_(arg0, arg1)
				local function __FUNC_2A98_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.100000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2A98_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A98_)
			end

			if arg1.interrupted then
				__FUNC_2943_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2943_)
		end

		registerVal9:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.100000)
		__FUNC_27C9_(registerVal9, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal11.DefaultClip = __FUNC_160C_
	registerVal10.OutOfRange = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "OutOfRange"
	local function __FUNC_2C4D_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "outOfRange")
	end

	registerVal13.condition = __FUNC_2C4D_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_2CC2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "outOfRange"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "outOfRange", true, __FUNC_2CC2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

