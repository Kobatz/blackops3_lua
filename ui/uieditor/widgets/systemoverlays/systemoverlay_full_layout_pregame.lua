-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteBack")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Full_BasicFrame")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_alertStatusBar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_Full_Layout_Pregame = registerVal1
function CoD.systemOverlay_Full_Layout_Pregame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_Full_Layout_Pregame)
	registerVal2.id = "systemOverlay_Full_Layout_Pregame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBackground = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setupUIStreamedImage(0.000000)
	local function __FUNC_FD2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "MapInfo", "mapImage", __FUNC_FD2_)
	registerVal2:addElement(registerVal4)
	registerVal2.MapImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.470000)
	registerVal2:addElement(registerVal5)
	registerVal2.Darken = registerVal5
	local registerVal6 = CoD.VehicleGround_VignetteBack.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.VignetteBack = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 180.000000, 538.000000)
	registerVal7:setRGB(0.070000, 0.070000, 0.080000)
	registerVal7:setAlpha(0.800000)
	registerVal2:addElement(registerVal7)
	registerVal2.backing = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal8:setTopBottom(true, false, 184.000000, 552.000000)
	registerVal8:setRGB(0.630000, 0.610000, 0.610000)
	registerVal8:setAlpha(0.500000)
	registerVal8:setImage(RegisterImage("uie_t7_icon_master_overlays_bkg"))
	registerVal2:addElement(registerVal8)
	registerVal2.Smokebkg = registerVal8
	local registerVal9 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, false)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, false, 184.000000, 552.000000)
	local function __FUNC_1084_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_1084_)
	local function __FUNC_10D6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:changeFrameWidget(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal2, "frameWidget", true, __FUNC_10D6_)
	registerVal2:addElement(registerVal9)
	registerVal2.frameWidget = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(false, true, -183.000000, -151.000000)
	registerVal10:setRGB(0.130000, 0.110000, 0.120000)
	registerVal2:addElement(registerVal10)
	registerVal2.buttonBacking = registerVal10
	local registerVal11 = CoD.fe_LeftContainer_NOTLobby.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 408.000000, 840.000000)
	registerVal11:setTopBottom(false, true, -183.000000, -151.000000)
	local function __FUNC_1172_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_1172_)
	registerVal2:addElement(registerVal11)
	registerVal2.buttons = registerVal11
	local registerVal12 = CoD.systemOverlay_alertStatusBar.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, false, 180.000000, 184.000000)
	local function __FUNC_11C2_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_11C2_)
	registerVal2:addElement(registerVal12)
	registerVal2.alertStatusBar = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(false, true, -185.000000, -180.850000)
	registerVal13:setAlpha(0.900000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_featuredframeum"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.LineLeft = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1212_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_15CE_(arg0, arg1)
			local function __FUNC_1724_(arg0, arg1)
				local function __FUNC_189F_(arg0, arg1)
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
					__FUNC_189F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, true, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_189F_)
			end

			if arg1.interrupted then
				__FUNC_1724_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1724_)
		end

		registerVal7:completeAnimation()
		registerVal2.backing:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.backing:setTopBottom(true, false, 180.000000, 540.000000)
		registerVal2.backing:setAlpha(0.000000)
		__FUNC_15CE_(registerVal7, {})
		local function __FUNC_1ABC_(arg0, arg1)
			local function __FUNC_1C37_(arg0, arg1)
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
				__FUNC_1C37_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C37_)
		end

		registerVal8:completeAnimation()
		registerVal2.Smokebkg:setAlpha(0.000000)
		__FUNC_1ABC_(registerVal8, {})
		local function __FUNC_1DE9_(arg0, arg1)
			local function __FUNC_1F40_(arg0, arg1)
				local function __FUNC_2098_(arg0, arg1)
					local function __FUNC_2213_(arg0, arg1)
						local function __FUNC_238B_(arg0, arg1)
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
							__FUNC_238B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, true, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_238B_)
					end

					if arg1.interrupted then
						__FUNC_2213_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, true, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2213_)
				end

				if arg1.interrupted then
					__FUNC_2098_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2098_)
			end

			if arg1.interrupted then
				__FUNC_1F40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F40_)
		end

		registerVal9:completeAnimation()
		registerVal2.frameWidget:setAlpha(0.000000)
		__FUNC_1DE9_(registerVal9, {})
		local function __FUNC_253D_(arg0, arg1)
			local function __FUNC_2694_(arg0, arg1)
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
				__FUNC_2694_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2694_)
		end

		registerVal10:completeAnimation()
		registerVal2.buttonBacking:setAlpha(0.000000)
		__FUNC_253D_(registerVal10, {})
		local function __FUNC_2849_(arg0, arg1)
			local function __FUNC_29A0_(arg0, arg1)
				local function __FUNC_2B1B_(arg0, arg1)
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
					__FUNC_2B1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B1B_)
			end

			if arg1.interrupted then
				__FUNC_29A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29A0_)
		end

		registerVal11:completeAnimation()
		registerVal2.buttons:setAlpha(0.000000)
		__FUNC_2849_(registerVal11, {})
		local function __FUNC_2CCD_(arg0, arg1)
			local function __FUNC_2E7F_(arg0, arg1)
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
				__FUNC_2E7F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, true, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 180.000000, 184.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E7F_)
		end

		registerVal12:completeAnimation()
		registerVal2.alertStatusBar:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.alertStatusBar:setTopBottom(true, false, -12.000000, -8.000000)
		registerVal2.alertStatusBar:setAlpha(0.000000)
		__FUNC_2CCD_(registerVal12, {})
		local function __FUNC_309C_(arg0, arg1)
			local function __FUNC_31F4_(arg0, arg1)
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
				__FUNC_31F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31F4_)
		end

		registerVal13:completeAnimation()
		registerVal2.LineLeft:setAlpha(0.000000)
		__FUNC_309C_(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1212_
	registerVal14.DefaultState = registerVal15
	registerVal2.clipsPerState = registerVal14
	registerVal9.id = "frameWidget"
	local function __FUNC_33A9_(arg0, arg1)
		local registerVal2 = arg0.frameWidget:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_33A9_)
	local function __FUNC_34AF_(arg0)
		arg0.VignetteBack:close()
		arg0.buttons:close()
		arg0.alertStatusBar:close()
		arg0.MapImage:close()
		arg0.frameWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_34AF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

