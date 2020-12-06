-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.MP.RipperLockLineWidget")
require("ui.uieditor.widgets.Reticles.MP.RipperLockArrowWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RipperLockReticle = registerVal1
function CoD.RipperLockReticle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RipperLockReticle)
	registerVal2.id = "RipperLockReticle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 180.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 180.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -18.000000, 198.000000)
	registerVal3:setTopBottom(true, false, -18.000000, 198.000000)
	registerVal3:setRGB(1.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.770000)
	registerVal3:setImage(RegisterImage("uie_ripperlock_glowlarge"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.GlowLarge = registerVal3
	local registerVal4 = CoD.RipperLockLineWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 105.000000, 201.000000)
	registerVal4:setTopBottom(false, true, -194.000000, -110.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.RipperLockLineWidgetUR = registerVal4
	local registerVal5 = CoD.RipperLockLineWidget.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -200.000000, -104.000000)
	registerVal5:setTopBottom(false, true, -194.000000, -110.000000)
	registerVal5:setZRot(90.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.RipperLockLineWidgetUL = registerVal5
	local registerVal6 = CoD.RipperLockLineWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 105.000000, 201.000000)
	registerVal6:setTopBottom(true, false, 110.000000, 194.000000)
	registerVal6:setZRot(-90.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.RipperLockLineWidgetLR = registerVal6
	local registerVal7 = CoD.RipperLockLineWidget.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -200.000000, -104.000000)
	registerVal7:setTopBottom(true, false, 110.000000, 194.000000)
	registerVal7:setZRot(180.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.RipperLockLineWidgetLL = registerVal7
	local registerVal8 = CoD.RipperLockArrowWidget.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 66.000000, 114.000000)
	registerVal8:setTopBottom(true, false, 14.000000, 53.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.RipperLockArrowWidgetTop = registerVal8
	local registerVal9 = CoD.RipperLockArrowWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 66.000000, 114.000000)
	registerVal9:setTopBottom(true, false, 129.000000, 168.000000)
	registerVal9:setZRot(180.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.RipperLockArrowWidgetBottom = registerVal9
	local registerVal10 = CoD.RipperLockArrowWidget.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 9.000000, 57.000000)
	registerVal10:setTopBottom(true, false, 71.000000, 110.000000)
	registerVal10:setZRot(90.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.RipperLockArrowWidgetLeft = registerVal10
	local registerVal11 = CoD.RipperLockArrowWidget.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 125.000000, 173.000000)
	registerVal11:setTopBottom(true, false, 71.000000, 110.000000)
	registerVal11:setZRot(-90.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.RipperLockArrowWidgetRight = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 41.000000, 140.000000)
	registerVal12:setTopBottom(true, false, 41.390000, 140.610000)
	registerVal12:setRGB(1.000000, 0.000000, 0.000000)
	registerVal12:setImage(RegisterImage("uie_ripperlock_glowsmall"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.GlowSmall = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 50.000000, 131.000000)
	registerVal13:setTopBottom(true, false, 49.000000, 131.000000)
	registerVal13:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal13:setAlpha(0.910000)
	registerVal13:setImage(RegisterImage("uie_ripperlock_glowsmall_notadd"))
	registerVal2:addElement(registerVal13)
	registerVal2.GlowSmall0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 41.000000, 140.000000)
	registerVal14:setTopBottom(true, false, 40.390000, 140.610000)
	registerVal14:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_ripperlock_glowsmall_notadd"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.GlowSmall00 = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_1221_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowLarge:setAlpha(0.000000)
		registerVal2.GlowLarge:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RipperLockLineWidgetUR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RipperLockLineWidgetUL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.RipperLockLineWidgetLR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RipperLockLineWidgetLL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RipperLockArrowWidgetTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RipperLockArrowWidgetBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RipperLockArrowWidgetLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.RipperLockArrowWidgetRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.GlowSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.GlowSmall0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.GlowSmall00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_1221_
	local function __FUNC_17F1_()
		registerVal2:setupElementClipCounter(12.000000)
		local function __FUNC_20F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.000000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowLarge:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.GlowLarge:setAlpha(0.000000)
		__FUNC_20F1_(registerVal3, {})
		local function __FUNC_22CE_(arg0, arg1)
			local function __FUNC_24B7_(arg0, arg1)
				local function __FUNC_262F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 105.000000, 201.000000)
					arg0:setTopBottom(false, true, -194.000000, -110.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_262F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_262F_)
			end

			if arg1.interrupted then
				__FUNC_24B7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 105.000000, 201.000000)
			arg0:setTopBottom(false, true, -194.000000, -110.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24B7_)
		end

		registerVal4:completeAnimation()
		registerVal2.RipperLockLineWidgetUR:setLeftRight(true, false, 120.000000, 216.000000)
		registerVal2.RipperLockLineWidgetUR:setTopBottom(false, true, -209.000000, -125.000000)
		registerVal2.RipperLockLineWidgetUR:setAlpha(0.000000)
		__FUNC_22CE_(registerVal4, {})
		local function __FUNC_2851_(arg0, arg1)
			local function __FUNC_2A3B_(arg0, arg1)
				local function __FUNC_2BB3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, true, -200.000000, -104.000000)
					arg0:setTopBottom(false, true, -194.000000, -110.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2BB3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BB3_)
			end

			if arg1.interrupted then
				__FUNC_2A3B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, true, -200.000000, -104.000000)
			arg0:setTopBottom(false, true, -194.000000, -110.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A3B_)
		end

		registerVal5:completeAnimation()
		registerVal2.RipperLockLineWidgetUL:setLeftRight(false, true, -215.000000, -119.000000)
		registerVal2.RipperLockLineWidgetUL:setTopBottom(false, true, -209.000000, -125.000000)
		registerVal2.RipperLockLineWidgetUL:setAlpha(0.000000)
		__FUNC_2851_(registerVal5, {})
		local function __FUNC_2DD5_(arg0, arg1)
			local function __FUNC_2FBF_(arg0, arg1)
				local function __FUNC_3137_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 105.000000, 201.000000)
					arg0:setTopBottom(true, false, 110.000000, 194.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3137_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3137_)
			end

			if arg1.interrupted then
				__FUNC_2FBF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 105.000000, 201.000000)
			arg0:setTopBottom(true, false, 110.000000, 194.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FBF_)
		end

		registerVal6:completeAnimation()
		registerVal2.RipperLockLineWidgetLR:setLeftRight(true, false, 120.000000, 216.000000)
		registerVal2.RipperLockLineWidgetLR:setTopBottom(true, false, 125.000000, 209.000000)
		registerVal2.RipperLockLineWidgetLR:setAlpha(0.000000)
		__FUNC_2DD5_(registerVal6, {})
		local function __FUNC_3359_(arg0, arg1)
			local function __FUNC_3543_(arg0, arg1)
				local function __FUNC_36BB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, true, -200.000000, -104.000000)
					arg0:setTopBottom(true, false, 110.000000, 194.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_36BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36BB_)
			end

			if arg1.interrupted then
				__FUNC_3543_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, true, -200.000000, -104.000000)
			arg0:setTopBottom(true, false, 110.000000, 194.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3543_)
		end

		registerVal7:completeAnimation()
		registerVal2.RipperLockLineWidgetLL:setLeftRight(false, true, -215.000000, -119.000000)
		registerVal2.RipperLockLineWidgetLL:setTopBottom(true, false, 125.000000, 209.000000)
		registerVal2.RipperLockLineWidgetLL:setAlpha(0.000000)
		__FUNC_3359_(registerVal7, {})
		local function __FUNC_38DD_(arg0, arg1)
			local function __FUNC_3A57_(arg0, arg1)
				local function __FUNC_3C07_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 66.000000, 114.000000)
					arg0:setTopBottom(true, false, 14.000000, 53.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3C07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, -1.750000, 37.250000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C07_)
			end

			if arg1.interrupted then
				__FUNC_3A57_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A57_)
		end

		registerVal8:completeAnimation()
		registerVal2.RipperLockArrowWidgetTop:setLeftRight(true, false, 66.000000, 114.000000)
		registerVal2.RipperLockArrowWidgetTop:setTopBottom(true, false, -13.000000, 26.000000)
		registerVal2.RipperLockArrowWidgetTop:setAlpha(0.000000)
		__FUNC_38DD_(registerVal8, {})
		local function __FUNC_3E29_(arg0, arg1)
			local function __FUNC_3FA3_(arg0, arg1)
				local function __FUNC_4153_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 66.000000, 114.000000)
					arg0:setTopBottom(true, false, 129.000000, 168.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_4153_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 143.580000, 182.580000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4153_)
			end

			if arg1.interrupted then
				__FUNC_3FA3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FA3_)
		end

		registerVal9:completeAnimation()
		registerVal2.RipperLockArrowWidgetBottom:setLeftRight(true, false, 66.000000, 114.000000)
		registerVal2.RipperLockArrowWidgetBottom:setTopBottom(true, false, 154.000000, 193.000000)
		registerVal2.RipperLockArrowWidgetBottom:setAlpha(0.000000)
		__FUNC_3E29_(registerVal9, {})
		local function __FUNC_4375_(arg0, arg1)
			local function __FUNC_44EF_(arg0, arg1)
				local function __FUNC_469F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 9.000000, 57.000000)
					arg0:setTopBottom(true, false, 71.000000, 110.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_469F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -6.750000, 41.250000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_469F_)
			end

			if arg1.interrupted then
				__FUNC_44EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44EF_)
		end

		registerVal10:completeAnimation()
		registerVal2.RipperLockArrowWidgetLeft:setLeftRight(true, false, -18.000000, 30.000000)
		registerVal2.RipperLockArrowWidgetLeft:setTopBottom(true, false, 71.000000, 110.000000)
		registerVal2.RipperLockArrowWidgetLeft:setAlpha(0.000000)
		__FUNC_4375_(registerVal10, {})
		local function __FUNC_48C1_(arg0, arg1)
			local function __FUNC_4A3B_(arg0, arg1)
				local function __FUNC_4BEB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 125.000000, 173.000000)
					arg0:setTopBottom(true, false, 71.000000, 110.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_4BEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 139.580000, 187.580000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BEB_)
			end

			if arg1.interrupted then
				__FUNC_4A3B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A3B_)
		end

		registerVal11:completeAnimation()
		registerVal2.RipperLockArrowWidgetRight:setLeftRight(true, false, 150.000000, 198.000000)
		registerVal2.RipperLockArrowWidgetRight:setTopBottom(true, false, 71.000000, 110.000000)
		registerVal2.RipperLockArrowWidgetRight:setAlpha(0.000000)
		__FUNC_48C1_(registerVal11, {})
		local function __FUNC_4E0D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setXRot(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.GlowSmall:setAlpha(0.000000)
		registerVal2.GlowSmall:setXRot(0.000000)
		__FUNC_4E0D_(registerVal12, {})
		local function __FUNC_4FE3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.GlowSmall0:setAlpha(0.000000)
		__FUNC_4FE3_(registerVal13, {})
		local function __FUNC_5195_(arg0, arg1)
			local function __FUNC_530F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_530F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.930000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_530F_)
		end

		registerVal14:completeAnimation()
		registerVal2.GlowSmall00:setAlpha(0.000000)
		registerVal2.GlowSmall00:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_5195_(registerVal14, {})
	end

	registerVal16.Locked = __FUNC_17F1_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_554B_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal4:completeAnimation()
		registerVal2.RipperLockLineWidgetUR:setLeftRight(true, false, 105.000000, 201.000000)
		registerVal2.RipperLockLineWidgetUR:setTopBottom(false, true, -194.000000, -110.000000)
		registerVal2.RipperLockLineWidgetUR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RipperLockLineWidgetUL:setLeftRight(false, true, -200.000000, -104.000000)
		registerVal2.RipperLockLineWidgetUL:setTopBottom(false, true, -194.000000, -110.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.RipperLockLineWidgetLR:setLeftRight(true, false, 105.000000, 201.000000)
		registerVal2.RipperLockLineWidgetLR:setTopBottom(true, false, 110.000000, 194.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RipperLockLineWidgetLL:setLeftRight(false, true, -200.000000, -104.000000)
		registerVal2.RipperLockLineWidgetLL:setTopBottom(true, false, 110.000000, 194.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RipperLockArrowWidgetTop:setLeftRight(true, false, 66.000000, 114.000000)
		registerVal2.RipperLockArrowWidgetTop:setTopBottom(true, false, 14.000000, 53.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RipperLockArrowWidgetBottom:setLeftRight(true, false, 66.000000, 114.000000)
		registerVal2.RipperLockArrowWidgetBottom:setTopBottom(true, false, 129.000000, 168.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RipperLockArrowWidgetLeft:setLeftRight(true, false, 9.000000, 57.000000)
		registerVal2.RipperLockArrowWidgetLeft:setTopBottom(true, false, 71.000000, 110.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.RipperLockArrowWidgetRight:setLeftRight(true, false, 125.000000, 173.000000)
		registerVal2.RipperLockArrowWidgetRight:setTopBottom(true, false, 71.000000, 110.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.GlowSmall:setRGB(0.840000, 0.010000, 0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.GlowSmall0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.GlowSmall00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_554B_
	local function __FUNC_5C96_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowLarge:setLeftRight(true, false, -18.000000, 198.000000)
		registerVal2.GlowLarge:setTopBottom(true, false, -18.000000, 198.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_6530_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 73.000000, 169.000000)
			arg0:setTopBottom(false, true, -162.000000, -78.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.RipperLockLineWidgetUR:setLeftRight(true, false, 105.000000, 201.000000)
		registerVal2.RipperLockLineWidgetUR:setTopBottom(false, true, -194.000000, -110.000000)
		__FUNC_6530_(registerVal4, {})
		local function __FUNC_6732_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -167.000000, -71.000000)
			arg0:setTopBottom(false, true, -162.000000, -78.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.RipperLockLineWidgetUL:setLeftRight(false, true, -200.000000, -104.000000)
		registerVal2.RipperLockLineWidgetUL:setTopBottom(false, true, -194.000000, -110.000000)
		__FUNC_6732_(registerVal5, {})
		local function __FUNC_6932_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 73.000000, 169.000000)
			arg0:setTopBottom(true, false, 80.000000, 164.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.RipperLockLineWidgetLR:setLeftRight(true, false, 105.000000, 201.000000)
		registerVal2.RipperLockLineWidgetLR:setTopBottom(true, false, 110.000000, 194.000000)
		__FUNC_6932_(registerVal6, {})
		local function __FUNC_6B32_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -167.000000, -71.000000)
			arg0:setTopBottom(true, false, 76.000000, 160.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.RipperLockLineWidgetLL:setLeftRight(false, true, -200.000000, -104.000000)
		registerVal2.RipperLockLineWidgetLL:setTopBottom(true, false, 110.000000, 194.000000)
		__FUNC_6B32_(registerVal7, {})
		local function __FUNC_6D32_(arg0, arg1)
			local function __FUNC_6EF8_(arg0, arg1)
				local function __FUNC_70E3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 67.000000, 115.000000)
					arg0:setTopBottom(true, false, 49.000000, 88.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_70E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 66.750000, 114.750000)
				arg0:setTopBottom(true, false, 40.250000, 79.250000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70E3_)
			end

			if arg1.interrupted then
				__FUNC_6EF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 66.500000, 114.500000)
			arg0:setTopBottom(true, false, 31.500000, 70.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EF8_)
		end

		registerVal8:completeAnimation()
		registerVal2.RipperLockArrowWidgetTop:setLeftRight(true, false, 66.000000, 114.000000)
		registerVal2.RipperLockArrowWidgetTop:setTopBottom(true, false, 14.000000, 53.000000)
		registerVal2.RipperLockArrowWidgetTop:setAlpha(1.000000)
		__FUNC_6D32_(registerVal8, {})
		local function __FUNC_7300_(arg0, arg1)
			local function __FUNC_7490_(arg0, arg1)
				local function __FUNC_7643_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 66.000000, 114.000000)
					arg0:setTopBottom(true, false, 93.000000, 132.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_7643_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Bounce)
				arg0:setTopBottom(true, false, 102.000000, 141.000000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7643_)
			end

			if arg1.interrupted then
				__FUNC_7490_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 111.000000, 150.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7490_)
		end

		registerVal9:completeAnimation()
		registerVal2.RipperLockArrowWidgetBottom:setLeftRight(true, false, 66.000000, 114.000000)
		registerVal2.RipperLockArrowWidgetBottom:setTopBottom(true, false, 129.000000, 168.000000)
		registerVal2.RipperLockArrowWidgetBottom:setAlpha(1.000000)
		__FUNC_7300_(registerVal9, {})
		local function __FUNC_7865_(arg0, arg1)
			local function __FUNC_7A2C_(arg0, arg1)
				local function __FUNC_7C17_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 43.000000, 91.000000)
					arg0:setTopBottom(true, false, 70.000000, 109.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_7C17_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Bounce)
				arg0:setLeftRight(true, false, 34.500000, 82.500000)
				arg0:setTopBottom(true, false, 70.250000, 109.250000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C17_)
			end

			if arg1.interrupted then
				__FUNC_7A2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 26.000000, 74.000000)
			arg0:setTopBottom(true, false, 70.500000, 109.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A2C_)
		end

		registerVal10:completeAnimation()
		registerVal2.RipperLockArrowWidgetLeft:setLeftRight(true, false, 9.000000, 57.000000)
		registerVal2.RipperLockArrowWidgetLeft:setTopBottom(true, false, 71.000000, 110.000000)
		registerVal2.RipperLockArrowWidgetLeft:setAlpha(1.000000)
		__FUNC_7865_(registerVal10, {})
		local function __FUNC_7E39_(arg0, arg1)
			local function __FUNC_8000_(arg0, arg1)
				local function __FUNC_81EB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 90.000000, 138.000000)
					arg0:setTopBottom(true, false, 72.000000, 111.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_81EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Bounce)
				arg0:setLeftRight(true, false, 98.750000, 146.750000)
				arg0:setTopBottom(true, false, 71.750000, 110.750000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81EB_)
			end

			if arg1.interrupted then
				__FUNC_8000_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 107.500000, 155.500000)
			arg0:setTopBottom(true, false, 71.500000, 110.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8000_)
		end

		registerVal11:completeAnimation()
		registerVal2.RipperLockArrowWidgetRight:setLeftRight(true, false, 125.000000, 173.000000)
		registerVal2.RipperLockArrowWidgetRight:setTopBottom(true, false, 71.000000, 110.000000)
		registerVal2.RipperLockArrowWidgetRight:setAlpha(1.000000)
		__FUNC_7E39_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.GlowSmall:setLeftRight(true, false, 50.000000, 131.000000)
		registerVal2.GlowSmall:setTopBottom(true, false, 51.000000, 132.000000)
		registerVal2.GlowSmall:setRGB(1.000000, 0.120000, 0.000000)
		registerVal2.GlowSmall:setAlpha(0.720000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.GlowSmall0:setAlpha(0.910000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.GlowSmall00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.Attack = __FUNC_5C96_
	local function __FUNC_840D_()
		registerVal2:setupElementClipCounter(12.000000)
		local function __FUNC_8C3A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowLarge:setAlpha(1.000000)
		__FUNC_8C3A_(registerVal3, {})
		local function __FUNC_8DED_(arg0, arg1)
			local function __FUNC_8F67_(arg0, arg1)
				local function __FUNC_90DF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 120.000000, 216.000000)
					arg0:setTopBottom(false, true, -209.000000, -125.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_90DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90DF_)
			end

			if arg1.interrupted then
				__FUNC_8F67_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F67_)
		end

		registerVal4:completeAnimation()
		registerVal2.RipperLockLineWidgetUR:setLeftRight(true, false, 105.000000, 201.000000)
		registerVal2.RipperLockLineWidgetUR:setTopBottom(false, true, -194.000000, -110.000000)
		registerVal2.RipperLockLineWidgetUR:setAlpha(1.000000)
		__FUNC_8DED_(registerVal4, {})
		local function __FUNC_9301_(arg0, arg1)
			local function __FUNC_947B_(arg0, arg1)
				local function __FUNC_95F3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, true, -215.000000, -119.000000)
					arg0:setTopBottom(false, true, -209.000000, -125.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_95F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95F3_)
			end

			if arg1.interrupted then
				__FUNC_947B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_947B_)
		end

		registerVal5:completeAnimation()
		registerVal2.RipperLockLineWidgetUL:setLeftRight(false, true, -200.000000, -104.000000)
		registerVal2.RipperLockLineWidgetUL:setTopBottom(false, true, -194.000000, -110.000000)
		registerVal2.RipperLockLineWidgetUL:setAlpha(1.000000)
		__FUNC_9301_(registerVal5, {})
		local function __FUNC_9815_(arg0, arg1)
			local function __FUNC_998F_(arg0, arg1)
				local function __FUNC_9B07_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 120.000000, 216.000000)
					arg0:setTopBottom(true, false, 125.000000, 209.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_9B07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B07_)
			end

			if arg1.interrupted then
				__FUNC_998F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_998F_)
		end

		registerVal6:completeAnimation()
		registerVal2.RipperLockLineWidgetLR:setLeftRight(true, false, 105.000000, 201.000000)
		registerVal2.RipperLockLineWidgetLR:setTopBottom(true, false, 110.000000, 194.000000)
		registerVal2.RipperLockLineWidgetLR:setAlpha(1.000000)
		__FUNC_9815_(registerVal6, {})
		local function __FUNC_9D29_(arg0, arg1)
			local function __FUNC_9EA3_(arg0, arg1)
				local function __FUNC_A01B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, true, -215.000000, -119.000000)
					arg0:setTopBottom(true, false, 125.000000, 209.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_A01B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A01B_)
			end

			if arg1.interrupted then
				__FUNC_9EA3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9EA3_)
		end

		registerVal7:completeAnimation()
		registerVal2.RipperLockLineWidgetLL:setLeftRight(false, true, -200.000000, -104.000000)
		registerVal2.RipperLockLineWidgetLL:setTopBottom(true, false, 110.000000, 194.000000)
		registerVal2.RipperLockLineWidgetLL:setAlpha(1.000000)
		__FUNC_9D29_(registerVal7, {})
		local function __FUNC_A23D_(arg0, arg1)
			local function __FUNC_A3EF_(arg0, arg1)
				local function __FUNC_A59F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 66.000000, 114.000000)
					arg0:setTopBottom(true, false, -13.000000, 26.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_A59F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, -13.000000, 26.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A59F_)
			end

			if arg1.interrupted then
				__FUNC_A3EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, -1.750000, 37.250000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3EF_)
		end

		registerVal8:completeAnimation()
		registerVal2.RipperLockArrowWidgetTop:setLeftRight(true, false, 66.000000, 114.000000)
		registerVal2.RipperLockArrowWidgetTop:setTopBottom(true, false, 14.000000, 53.000000)
		registerVal2.RipperLockArrowWidgetTop:setAlpha(1.000000)
		__FUNC_A23D_(registerVal8, {})
		local function __FUNC_A7C1_(arg0, arg1)
			local function __FUNC_A973_(arg0, arg1)
				local function __FUNC_AB23_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 66.000000, 114.000000)
					arg0:setTopBottom(true, false, 154.000000, 193.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_AB23_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 154.000000, 193.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB23_)
			end

			if arg1.interrupted then
				__FUNC_A973_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 143.580000, 182.580000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A973_)
		end

		registerVal9:completeAnimation()
		registerVal2.RipperLockArrowWidgetBottom:setLeftRight(true, false, 66.000000, 114.000000)
		registerVal2.RipperLockArrowWidgetBottom:setTopBottom(true, false, 129.000000, 168.000000)
		registerVal2.RipperLockArrowWidgetBottom:setAlpha(1.000000)
		__FUNC_A7C1_(registerVal9, {})
		local function __FUNC_AD45_(arg0, arg1)
			local function __FUNC_AEF7_(arg0, arg1)
				local function __FUNC_B0A7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -18.000000, 30.000000)
					arg0:setTopBottom(true, false, 71.000000, 110.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_B0A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -18.000000, 30.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0A7_)
			end

			if arg1.interrupted then
				__FUNC_AEF7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -6.750000, 41.250000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AEF7_)
		end

		registerVal10:completeAnimation()
		registerVal2.RipperLockArrowWidgetLeft:setLeftRight(true, false, 9.000000, 57.000000)
		registerVal2.RipperLockArrowWidgetLeft:setTopBottom(true, false, 71.000000, 110.000000)
		registerVal2.RipperLockArrowWidgetLeft:setAlpha(1.000000)
		__FUNC_AD45_(registerVal10, {})
		local function __FUNC_B2C4_(arg0, arg1)
			local function __FUNC_B477_(arg0, arg1)
				local function __FUNC_B627_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 150.000000, 198.000000)
					arg0:setTopBottom(true, false, 71.000000, 110.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_B627_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 150.000000, 198.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B627_)
			end

			if arg1.interrupted then
				__FUNC_B477_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 139.580000, 187.580000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B477_)
		end

		registerVal11:completeAnimation()
		registerVal2.RipperLockArrowWidgetRight:setLeftRight(true, false, 125.000000, 173.000000)
		registerVal2.RipperLockArrowWidgetRight:setTopBottom(true, false, 71.000000, 110.000000)
		registerVal2.RipperLockArrowWidgetRight:setAlpha(1.000000)
		__FUNC_B2C4_(registerVal11, {})
		local function __FUNC_B849_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setXRot(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.GlowSmall:setAlpha(1.000000)
		registerVal2.GlowSmall:setXRot(0.000000)
		__FUNC_B849_(registerVal12, {})
		local function __FUNC_BA1A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.GlowSmall0:setAlpha(1.000000)
		__FUNC_BA1A_(registerVal13, {})
		local function __FUNC_BBCD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.GlowSmall00:setAlpha(1.000000)
		__FUNC_BBCD_(registerVal14, {})
	end

	registerVal16.DefaultState = __FUNC_840D_
	registerVal15.Locked = registerVal16
	registerVal16 = {}
	local function __FUNC_BD81_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.RipperLockLineWidgetUR:setLeftRight(true, false, 73.000000, 169.000000)
		registerVal2.RipperLockLineWidgetUR:setTopBottom(false, true, -162.000000, -78.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RipperLockLineWidgetUL:setLeftRight(false, true, -167.000000, -71.000000)
		registerVal2.RipperLockLineWidgetUL:setTopBottom(false, true, -162.000000, -78.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.RipperLockLineWidgetLR:setLeftRight(true, false, 73.000000, 169.000000)
		registerVal2.RipperLockLineWidgetLR:setTopBottom(true, false, 80.000000, 164.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RipperLockLineWidgetLL:setLeftRight(false, true, -167.000000, -71.000000)
		registerVal2.RipperLockLineWidgetLL:setTopBottom(true, false, 76.000000, 160.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RipperLockArrowWidgetTop:setLeftRight(true, false, 67.000000, 115.000000)
		registerVal2.RipperLockArrowWidgetTop:setTopBottom(true, false, 49.000000, 88.000000)
		registerVal2.RipperLockArrowWidgetTop:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.RipperLockArrowWidgetBottom:setLeftRight(true, false, 66.000000, 114.000000)
		registerVal2.RipperLockArrowWidgetBottom:setTopBottom(true, false, 93.000000, 132.000000)
		registerVal2.RipperLockArrowWidgetBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RipperLockArrowWidgetLeft:setLeftRight(true, false, 43.000000, 91.000000)
		registerVal2.RipperLockArrowWidgetLeft:setTopBottom(true, false, 70.000000, 109.000000)
		registerVal2.RipperLockArrowWidgetLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.RipperLockArrowWidgetRight:setLeftRight(true, false, 90.000000, 138.000000)
		registerVal2.RipperLockArrowWidgetRight:setTopBottom(true, false, 72.000000, 111.000000)
		registerVal2.RipperLockArrowWidgetRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.GlowSmall0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal16.DefaultClip = __FUNC_BD81_
	local function __FUNC_C473_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_CC3A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowLarge:setAlpha(1.000000)
		__FUNC_CC3A_(registerVal3, {})
		local function __FUNC_CDED_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 73.000000, 169.000000)
			arg0:setTopBottom(false, true, -162.000000, -78.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.RipperLockLineWidgetUR:setLeftRight(true, false, 73.000000, 169.000000)
		registerVal2.RipperLockLineWidgetUR:setTopBottom(false, true, -162.000000, -78.000000)
		registerVal2.RipperLockLineWidgetUR:setAlpha(1.000000)
		__FUNC_CDED_(registerVal4, {})
		local function __FUNC_D011_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -167.000000, -71.000000)
			arg0:setTopBottom(false, true, -162.000000, -78.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.RipperLockLineWidgetUL:setLeftRight(false, true, -167.000000, -71.000000)
		registerVal2.RipperLockLineWidgetUL:setTopBottom(false, true, -162.000000, -78.000000)
		registerVal2.RipperLockLineWidgetUL:setAlpha(1.000000)
		__FUNC_D011_(registerVal5, {})
		local function __FUNC_D235_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 73.000000, 169.000000)
			arg0:setTopBottom(true, false, 80.000000, 164.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.RipperLockLineWidgetLR:setLeftRight(true, false, 73.000000, 169.000000)
		registerVal2.RipperLockLineWidgetLR:setTopBottom(true, false, 80.000000, 164.000000)
		registerVal2.RipperLockLineWidgetLR:setAlpha(1.000000)
		__FUNC_D235_(registerVal6, {})
		local function __FUNC_D459_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, true, -167.000000, -71.000000)
			arg0:setTopBottom(true, false, 76.000000, 160.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.RipperLockLineWidgetLL:setLeftRight(false, true, -167.000000, -71.000000)
		registerVal2.RipperLockLineWidgetLL:setTopBottom(true, false, 76.000000, 160.000000)
		registerVal2.RipperLockLineWidgetLL:setAlpha(1.000000)
		__FUNC_D459_(registerVal7, {})
		local function __FUNC_D67D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 67.000000, 115.000000)
			arg0:setTopBottom(true, false, 49.000000, 88.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.RipperLockArrowWidgetTop:setLeftRight(true, false, 67.000000, 115.000000)
		registerVal2.RipperLockArrowWidgetTop:setTopBottom(true, false, 49.000000, 88.000000)
		registerVal2.RipperLockArrowWidgetTop:setAlpha(1.000000)
		__FUNC_D67D_(registerVal8, {})
		local function __FUNC_D8A1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 66.000000, 114.000000)
			arg0:setTopBottom(true, false, 93.000000, 132.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.RipperLockArrowWidgetBottom:setLeftRight(true, false, 66.000000, 114.000000)
		registerVal2.RipperLockArrowWidgetBottom:setTopBottom(true, false, 93.000000, 132.000000)
		registerVal2.RipperLockArrowWidgetBottom:setAlpha(1.000000)
		__FUNC_D8A1_(registerVal9, {})
		local function __FUNC_DAC5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 43.000000, 91.000000)
			arg0:setTopBottom(true, false, 70.000000, 109.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.RipperLockArrowWidgetLeft:setLeftRight(true, false, 43.000000, 91.000000)
		registerVal2.RipperLockArrowWidgetLeft:setTopBottom(true, false, 70.000000, 109.000000)
		registerVal2.RipperLockArrowWidgetLeft:setAlpha(1.000000)
		__FUNC_DAC5_(registerVal10, {})
		local function __FUNC_DCE4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 90.000000, 138.000000)
			arg0:setTopBottom(true, false, 72.000000, 111.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.RipperLockArrowWidgetRight:setLeftRight(true, false, 90.000000, 138.000000)
		registerVal2.RipperLockArrowWidgetRight:setTopBottom(true, false, 72.000000, 111.000000)
		registerVal2.RipperLockArrowWidgetRight:setAlpha(1.000000)
		__FUNC_DCE4_(registerVal11, {})
		local function __FUNC_DF09_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.GlowSmall:setAlpha(1.000000)
		__FUNC_DF09_(registerVal12, {})
		local function __FUNC_E0BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.GlowSmall0:setAlpha(1.000000)
		__FUNC_E0BD_(registerVal13, {})
	end

	registerVal16.DefaultState = __FUNC_C473_
	registerVal15.Attack = registerVal16
	registerVal2.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Locked"
	local function __FUNC_E271_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "status", Enum.ArmbladeLockState.ARMBLADE_TARGETTED)
	end

	registerVal18.condition = __FUNC_E271_
	local registerVal19 = {}
	registerVal19.stateName = "Attack"
	local function __FUNC_E34A_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "status", Enum.ArmbladeLockState.ARMBLADE_ATTACKING)
	end

	registerVal19.condition = __FUNC_E34A_
	registerVal17 = {registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal17)
	local function __FUNC_E422_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "status"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "status", true, __FUNC_E422_)
	local function __FUNC_E53C_(arg0)
		arg0.RipperLockLineWidgetUR:close()
		arg0.RipperLockLineWidgetUL:close()
		arg0.RipperLockLineWidgetLR:close()
		arg0.RipperLockLineWidgetLL:close()
		arg0.RipperLockArrowWidgetTop:close()
		arg0.RipperLockArrowWidgetBottom:close()
		arg0.RipperLockArrowWidgetLeft:close()
		arg0.RipperLockArrowWidgetRight:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E53C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

