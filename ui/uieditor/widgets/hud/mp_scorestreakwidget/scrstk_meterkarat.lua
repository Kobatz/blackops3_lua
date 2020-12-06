-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_MeterKaratInner")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScrStk_MeterKarat = registerVal1
function CoD.ScrStk_MeterKarat.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScrStk_MeterKarat)
	registerVal2.id = "ScrStk_MeterKarat"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -4.000000, 4.000000)
	registerVal3:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_focusmeterbit"))
	registerVal2:addElement(registerVal3)
	registerVal2.FocusMeterFillWhite0 = registerVal3
	local registerVal4 = CoD.ScrStk_MeterKaratInner.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -5.400000, 6.600000)
	registerVal4:setTopBottom(false, false, -12.500000, 14.500000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.ScrStkMeterKaratInner0 = registerVal4
	local registerVal5 = CoD.ScrStk_MeterKaratInner.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -5.400000, 6.600000)
	registerVal5:setTopBottom(false, false, -13.500000, 13.500000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.ScrStkMeterKaratInner00 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -11.400000, 12.600000)
	registerVal6:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image0 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_948_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_948_
	local function __FUNC_A46_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_BB8_(arg0, arg1)
			local function __FUNC_DA3_(arg0, arg1)
				local function __FUNC_F8B_(arg0, arg1)
					local function __FUNC_1173_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Bounce)
						end
						arg0:setLeftRight(false, false, -63.400000, 68.600000)
						arg0:setTopBottom(false, false, -2.000000, 2.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1173_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -57.800000, 59.310000)
					arg0:setTopBottom(false, false, -3.420000, 3.420000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1173_)
				end

				if arg1.interrupted then
					__FUNC_F8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -56.620000, 57.370000)
				arg0:setTopBottom(false, false, -3.720000, 3.720000)
				arg0:setAlpha(0.490000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F8B_)
			end

			if arg1.interrupted then
				__FUNC_DA3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -55.710000, 55.840000)
			arg0:setTopBottom(false, false, -3.950000, 3.950000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA3_)
		end

		registerVal6:completeAnimation()
		registerVal2.Image0:setLeftRight(false, false, -55.500000, 55.500000)
		registerVal2.Image0:setTopBottom(false, false, -4.000000, 4.000000)
		registerVal2.Image0:setAlpha(0.000000)
		__FUNC_BB8_(registerVal6, {})
	end

	registerVal8.ScoreAdded = __FUNC_A46_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_1395_(arg0)
		arg0.ScrStkMeterKaratInner0:close()
		arg0.ScrStkMeterKaratInner00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1395_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

