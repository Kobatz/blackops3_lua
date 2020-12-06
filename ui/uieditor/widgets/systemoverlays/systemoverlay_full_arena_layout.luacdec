-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Full_BasicFrame")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_alertStatusBar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_Full_Arena_Layout = registerVal1
function CoD.systemOverlay_Full_Arena_Layout.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_Full_Arena_Layout)
	registerVal2.id = "systemOverlay_Full_Arena_Layout"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 2.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -20.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.850000)
	registerVal2:addElement(registerVal3)
	registerVal2.darkbg = registerVal3
	local registerVal4 = CoD.scorestreakVignetteContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 2.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.scorestreakVignetteContainer = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 180.000000, 538.000000)
	registerVal5:setRGB(0.070000, 0.070000, 0.080000)
	registerVal5:setAlpha(0.800000)
	registerVal2:addElement(registerVal5)
	registerVal2.backing = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal6:setTopBottom(true, false, 184.000000, 506.070000)
	registerVal6:setRGB(0.630000, 0.610000, 0.610000)
	registerVal6:setAlpha(0.500000)
	registerVal6:setImage(RegisterImage("uie_t7_icon_master_overlays_bkg"))
	registerVal2:addElement(registerVal6)
	registerVal2.Smokebkg = registerVal6
	local registerVal7 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, false)
	registerVal7:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal7:setTopBottom(true, false, 184.000000, 504.000000)
	local function __FUNC_E51_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_E51_)
	local function __FUNC_EA2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:changeFrameWidget(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal2, "frameWidget", true, __FUNC_EA2_)
	registerVal2:addElement(registerVal7)
	registerVal2.frameWidget = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(false, true, -214.000000, -182.000000)
	registerVal8:setRGB(0.130000, 0.110000, 0.120000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.buttonBacking = registerVal8
	local registerVal9 = CoD.fe_LeftContainer_NOTLobby.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 64.000000, 496.000000)
	registerVal9:setTopBottom(false, true, -214.000000, -182.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.buttons = registerVal9
	local registerVal10 = CoD.systemOverlay_alertStatusBar.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 180.000000, 184.000000)
	local function __FUNC_F3E_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_F3E_)
	registerVal2:addElement(registerVal10)
	registerVal2.alertStatusBar = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(false, true, -216.000000, -211.850000)
	registerVal11:setAlpha(0.900000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_featuredframeum"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.LineLeft = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_F8E_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_1400_(arg0, arg1)
			local function __FUNC_157B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.850000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_157B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.750000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_157B_)
		end

		registerVal3:completeAnimation()
		registerVal2.darkbg:setAlpha(0.000000)
		__FUNC_1400_(registerVal3, {})
		local function __FUNC_172D_(arg0, arg1)
			local function __FUNC_18A7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_18A7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18A7_)
		end

		registerVal4:completeAnimation()
		registerVal2.scorestreakVignetteContainer:setAlpha(0.000000)
		__FUNC_172D_(registerVal4, {})
		local function __FUNC_1A59_(arg0, arg1)
			local function __FUNC_1BB0_(arg0, arg1)
				local function __FUNC_1D2B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(true, false, 180.000000, 540.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1D2B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, true, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D2B_)
			end

			if arg1.interrupted then
				__FUNC_1BB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BB0_)
		end

		registerVal5:completeAnimation()
		registerVal2.backing:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.backing:setTopBottom(true, false, 180.000000, 540.000000)
		registerVal2.backing:setAlpha(0.000000)
		__FUNC_1A59_(registerVal5, {})
		local function __FUNC_1F48_(arg0, arg1)
			local function __FUNC_20C3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.750000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_20C3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20C3_)
		end

		registerVal6:completeAnimation()
		registerVal2.Smokebkg:setAlpha(0.000000)
		__FUNC_1F48_(registerVal6, {})
		local function __FUNC_2275_(arg0, arg1)
			local function __FUNC_23CC_(arg0, arg1)
				local function __FUNC_2524_(arg0, arg1)
					local function __FUNC_269F_(arg0, arg1)
						local function __FUNC_2817_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 9.000000, true, true, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2817_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, true, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2817_)
					end

					if arg1.interrupted then
						__FUNC_269F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, true, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_269F_)
				end

				if arg1.interrupted then
					__FUNC_2524_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2524_)
			end

			if arg1.interrupted then
				__FUNC_23CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23CC_)
		end

		registerVal7:completeAnimation()
		registerVal2.frameWidget:setAlpha(0.000000)
		__FUNC_2275_(registerVal7, {})
		local function __FUNC_29C9_(arg0, arg1)
			local function __FUNC_2B20_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2B20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B20_)
		end

		registerVal8:completeAnimation()
		registerVal2.buttonBacking:setAlpha(0.000000)
		__FUNC_29C9_(registerVal8, {})
		local function __FUNC_2CD5_(arg0, arg1)
			local function __FUNC_2E2C_(arg0, arg1)
				local function __FUNC_2FA7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2FA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FA7_)
			end

			if arg1.interrupted then
				__FUNC_2E2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E2C_)
		end

		registerVal9:completeAnimation()
		registerVal2.buttons:setAlpha(0.000000)
		__FUNC_2CD5_(registerVal9, {})
		local function __FUNC_3159_(arg0, arg1)
			local function __FUNC_330B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 0.000000, 0.000000)
				arg0:setTopBottom(true, false, 180.000000, 184.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_330B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, true, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 180.000000, 184.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_330B_)
		end

		registerVal10:completeAnimation()
		registerVal2.alertStatusBar:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.alertStatusBar:setTopBottom(true, false, -12.000000, -8.000000)
		registerVal2.alertStatusBar:setAlpha(0.000000)
		__FUNC_3159_(registerVal10, {})
		local function __FUNC_3528_(arg0, arg1)
			local function __FUNC_3680_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3680_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3680_)
		end

		registerVal11:completeAnimation()
		registerVal2.LineLeft:setAlpha(0.000000)
		__FUNC_3528_(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_F8E_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	registerVal7.id = "frameWidget"
	local function __FUNC_3835_(arg0, arg1)
		local registerVal2 = arg0.frameWidget:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_3835_)
	local function __FUNC_393B_(arg0)
		arg0.scorestreakVignetteContainer:close()
		arg0.buttons:close()
		arg0.alertStatusBar:close()
		arg0.frameWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_393B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

