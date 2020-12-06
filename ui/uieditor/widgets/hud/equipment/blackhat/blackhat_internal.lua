-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Equipment.BlackHat.HackingBar")
require("ui.uieditor.widgets.HUD.BlackHat.WaveformBlackHat")
require("ui.uieditor.widgets.HUD.BlackHat.blackhatEmp")
CoD.BlackhatStatus = {}
CoD.BlackhatStatus.Scanning = 0.000000
CoD.BlackhatStatus.Breaching = 1.000000
CoD.BlackhatStatus.Hacking = 2.000000
local function __FUNC_34C_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "hudItems.blackhat")
	registerVal3 = Engine.CreateModel(registerVal2, "perc")
	local registerVal4 = Engine.CreateModel(registerVal2, "offsetShaderValue")
	local registerVal5 = Engine.CreateModel(registerVal2, "status")
	Engine.SetModelValue(registerVal3, 0.000000)
	Engine.SetModelValue(registerVal4, "0 0 0 0")
	Engine.SetModelValue(registerVal5, 0.000000)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.BlackHat_Internal = registerVal2
local function __FUNC_515_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_34C_ then
		__FUNC_34C_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BlackHat_Internal)
	registerVal2.id = "BlackHat_Internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 256.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 256.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -24.000000, 26.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BLACKBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -24.000000, 26.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_blackhat_bg_scanning"))
	registerVal2:addElement(registerVal4)
	registerVal2.BgScanning = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -24.000000, 26.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_blackhat_bg_scanningdetail"))
	registerVal2:addElement(registerVal5)
	registerVal2.BgScanningDetail = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, -24.000000, 26.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_blackhat_bg_hacking"))
	registerVal2:addElement(registerVal6)
	registerVal2.BgHacking = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, -24.000000, 26.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_blackhat_bg_hackingdetail"))
	registerVal2:addElement(registerVal7)
	registerVal2.BgHackingDetail = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -24.000000, 26.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_blackhat_bg_breaching"))
	registerVal2:addElement(registerVal8)
	registerVal2.BgBreaching = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -24.000000, 26.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_blackhat_bg_breachingdetail"))
	registerVal2:addElement(registerVal9)
	registerVal2.BgBreachingDetail = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -24.000000, 282.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 256.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_blackhat_bg_error"))
	registerVal2:addElement(registerVal10)
	registerVal2.BgError = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -24.000000, 283.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 256.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_blackhat_bg_errordetail"))
	registerVal2:addElement(registerVal11)
	registerVal2.BgErrorDetail = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -24.000000, 283.000000)
	registerVal12:setTopBottom(true, false, 0.000000, 256.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_hud_blackhat_bg_error_xmarks"))
	registerVal2:addElement(registerVal12)
	registerVal2.BgErrorXmarks = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, -24.000000, 283.000000)
	registerVal13:setTopBottom(true, false, 0.000000, 256.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_hud_blackhat_bg_error_stripes"))
	registerVal2:addElement(registerVal13)
	registerVal2.BgErrorStripes = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, -24.000000, 283.000000)
	registerVal14:setTopBottom(true, false, 0.000000, 256.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_hud_blackhat_bg_error_icon"))
	registerVal2:addElement(registerVal14)
	registerVal2.BgErrorIcon = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, -24.000000, 283.000000)
	registerVal15:setTopBottom(true, false, 0.000000, 256.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_hud_blackhat_bg_error_iconglow"))
	registerVal2:addElement(registerVal15)
	registerVal2.BfErrorIconGlow = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, -6.000000, -197.000000)
	registerVal16:setTopBottom(true, true, 165.500000, 0.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setScale(0.800000)
	registerVal16:setImage(RegisterImage("uie_t7_hud_blackhat_iconscanning"))
	registerVal2:addElement(registerVal16)
	registerVal2.IconScanning = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, true, -6.000000, -197.000000)
	registerVal17:setTopBottom(true, true, 165.500000, 0.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setScale(0.800000)
	registerVal17:setImage(RegisterImage("uie_t7_hud_blackhat_iconbreaching"))
	registerVal2:addElement(registerVal17)
	registerVal2.IconBreaching = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, true, -6.000000, -197.000000)
	registerVal18:setTopBottom(true, true, 165.500000, 0.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setScale(0.800000)
	registerVal18:setImage(RegisterImage("uie_t7_hud_blackhat_iconhacking"))
	registerVal2:addElement(registerVal18)
	registerVal2.IconHacking = registerVal18
	local registerVal19 = LUI.UIText.new()
	registerVal19:setLeftRight(true, false, 16.000000, 240.000000)
	registerVal19:setTopBottom(true, false, 198.000000, 222.000000)
	registerVal19:setText(Engine.Localize(""))
	registerVal19:setTTF("fonts/default.ttf")
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal19)
	registerVal2.StatusText = registerVal19
	local registerVal20 = LUI.UIText.new()
	registerVal20:setLeftRight(true, false, 216.500000, 251.500000)
	registerVal20:setTopBottom(true, false, 197.500000, 222.500000)
	registerVal20:setTTF("fonts/default.ttf")
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal20:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2055_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20:setText(BlackhatHackingPercentage(registerVal1))
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "Blackhat", "perc", __FUNC_2055_)
	registerVal2:addElement(registerVal20)
	registerVal2.PercentText = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 5.000000, 50.000000)
	registerVal21:setTopBottom(true, false, 186.000000, 234.000000)
	registerVal21:setRGB(0.850000, 0.090000, 0.730000)
	registerVal21:setAlpha(0.000000)
	registerVal2:addElement(registerVal21)
	registerVal2.Spinner = registerVal21
	local registerVal22 = CoD.HackingBar.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 206.000000, 283.000000)
	registerVal22:setTopBottom(true, false, 41.000000, 156.000000)
	registerVal2:addElement(registerVal22)
	registerVal2.HackingBarRight = registerVal22
	local registerVal23 = CoD.HackingBar.new(arg0, arg1)
	registerVal23:setLeftRight(true, false, -26.500000, 50.500000)
	registerVal23:setTopBottom(true, false, 41.000000, 156.000000)
	registerVal23:setYRot(180.000000)
	registerVal2:addElement(registerVal23)
	registerVal2.HackingBarLeft = registerVal23
	local registerVal24 = CoD.WaveformBlackHat.new(arg0, arg1)
	registerVal24:setLeftRight(true, false, 25.000000, 231.000000)
	registerVal24:setTopBottom(true, false, 13.000000, 186.000000)
	registerVal2:addElement(registerVal24)
	registerVal2.WaveformBlackHat = registerVal24
	local registerVal25 = CoD.blackhatEmp.new(arg0, arg1)
	registerVal25:setLeftRight(false, false, -99.460000, 103.000000)
	registerVal25:setTopBottom(false, false, -84.000000, 84.000000)
	registerVal25:setAlpha(0.000000)
	registerVal25:setScale(1.500000)
	registerVal2:addElement(registerVal25)
	registerVal2.blackhatEmp0 = registerVal25
	local registerVal26 = {}
	local registerVal27 = {}
	local function __FUNC_2113_()
		registerVal2:setupElementClipCounter(22.000000)
		registerVal4:completeAnimation()
		registerVal2.BgScanning:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_2B7C_(arg0, arg1)
			local function __FUNC_2D15_(arg0, arg1)
				local function __FUNC_2E8F_(arg0, arg1)
					local function __FUNC_3007_(arg0, arg1)
						local function __FUNC_317F_(arg0, arg1)
							local function __FUNC_32F7_(arg0, arg1)
								local function __FUNC_346F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(1.000000)
									arg0:setScale(1.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_346F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_346F_)
							end

							if arg1.interrupted then
								__FUNC_32F7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32F7_)
						end

						if arg1.interrupted then
							__FUNC_317F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_317F_)
					end

					if arg1.interrupted then
						__FUNC_3007_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3007_)
				end

				if arg1.interrupted then
					__FUNC_2E8F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E8F_)
			end

			if arg1.interrupted then
				__FUNC_2D15_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, true, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D15_)
		end

		registerVal5:completeAnimation()
		registerVal2.BgScanningDetail:setAlpha(0.000000)
		registerVal2.BgScanningDetail:setScale(0.930000)
		__FUNC_2B7C_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BgHacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BgHackingDetail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BgBreaching:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BgBreachingDetail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BgError:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BgErrorDetail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BgErrorXmarks:setAlpha(0.000000)
		registerVal2.BgErrorXmarks:setScale(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BgErrorStripes:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BgErrorIcon:setAlpha(0.000000)
		registerVal2.BgErrorIcon:setScale(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BfErrorIconGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_363F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 450.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
		registerVal16:setAlpha(0.000000)
		registerVal16:setScale(0.900000)
		registerVal16:registerEventHandler("transition_complete_keyframe", __FUNC_363F_)
		registerVal17:completeAnimation()
		registerVal2.IconBreaching:setAlpha(0.000000)
		registerVal2.IconBreaching:setScale(0.800000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.IconHacking:setAlpha(0.000000)
		registerVal2.IconHacking:setScale(0.800000)
		registerVal2.clipFinished(registerVal18, {})
		local function __FUNC_380F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setText(Engine.Localize("MPUI_BLACKHAT_SCANNING"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.StatusText:setAlpha(1.000000)
		registerVal2.StatusText:setText(Engine.Localize("MPUI_BLACKHAT_SCANNING"))
		__FUNC_380F_(registerVal19, {})
		registerVal20:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
		registerVal20:setAlpha(1.000000)
		registerVal20:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal21:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.HackingBarRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.HackingBarLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.WaveformBlackHat:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.blackhatEmp0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal27.DefaultClip = __FUNC_2113_
	registerVal26.DefaultState = registerVal27
	registerVal27 = {}
	local function __FUNC_3A34_()
		registerVal2:setupElementClipCounter(22.000000)
		registerVal4:completeAnimation()
		registerVal2.BgScanning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BgScanningDetail:setAlpha(0.000000)
		registerVal2.BgScanningDetail:setScale(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_449C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BgHacking:setAlpha(0.000000)
		__FUNC_449C_(registerVal6, {})
		local function __FUNC_4651_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 730.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BgHackingDetail:setAlpha(0.000000)
		__FUNC_4651_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BgBreaching:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BgBreachingDetail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BgError:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BgErrorDetail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BgErrorXmarks:setAlpha(0.000000)
		registerVal2.BgErrorXmarks:setScale(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BgErrorStripes:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BgErrorIcon:setAlpha(0.000000)
		registerVal2.BgErrorIcon:setScale(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BfErrorIconGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconScanning:setAlpha(0.000000)
		registerVal2.IconScanning:setScale(0.800000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconBreaching:setAlpha(0.000000)
		registerVal2.IconBreaching:setScale(0.800000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_4805_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 310.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
		registerVal18:setAlpha(0.000000)
		registerVal18:setScale(0.900000)
		registerVal18:registerEventHandler("transition_complete_keyframe", __FUNC_4805_)
		local function __FUNC_49D7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setText(Engine.Localize("MPUI_BLACKHAT_TEAM_HACKING"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.StatusText:setAlpha(1.000000)
		registerVal2.StatusText:setText(Engine.Localize("MPUI_BLACKHAT_TEAM_HACKING"))
		__FUNC_49D7_(registerVal19, {})
		registerVal20:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
		registerVal20:setAlpha(1.000000)
		registerVal20:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal21:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.HackingBarRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.HackingBarLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.WaveformBlackHat:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.blackhatEmp0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal27.DefaultClip = __FUNC_3A34_
	registerVal26.TeamHacking = registerVal27
	registerVal27 = {}
	local function __FUNC_4C00_()
		registerVal2:setupElementClipCounter(22.000000)
		registerVal4:completeAnimation()
		registerVal2.BgScanning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BgScanningDetail:setAlpha(0.000000)
		registerVal2.BgScanningDetail:setScale(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_5663_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BgHacking:setAlpha(0.000000)
		__FUNC_5663_(registerVal6, {})
		local function __FUNC_5815_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 730.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BgHackingDetail:setAlpha(0.000000)
		__FUNC_5815_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BgBreaching:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BgBreachingDetail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BgError:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BgErrorDetail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BgErrorXmarks:setAlpha(0.000000)
		registerVal2.BgErrorXmarks:setScale(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BgErrorStripes:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BgErrorIcon:setAlpha(0.000000)
		registerVal2.BgErrorIcon:setScale(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BfErrorIconGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconScanning:setAlpha(0.000000)
		registerVal2.IconScanning:setScale(0.800000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconBreaching:setAlpha(0.000000)
		registerVal2.IconBreaching:setScale(0.800000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_59C9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 310.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
		registerVal18:setAlpha(0.000000)
		registerVal18:setScale(0.900000)
		registerVal18:registerEventHandler("transition_complete_keyframe", __FUNC_59C9_)
		local function __FUNC_5B9B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setText(Engine.Localize("MPUI_BLACKHAT_HACKING"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.StatusText:setAlpha(1.000000)
		registerVal2.StatusText:setText(Engine.Localize("MPUI_BLACKHAT_HACKING"))
		__FUNC_5B9B_(registerVal19, {})
		registerVal20:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
		registerVal20:setAlpha(1.000000)
		registerVal20:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal21:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.HackingBarRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.HackingBarLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.WaveformBlackHat:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.blackhatEmp0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal27.DefaultClip = __FUNC_4C00_
	registerVal26.Hacking = registerVal27
	registerVal27 = {}
	local function __FUNC_5DBF_()
		registerVal2:setupElementClipCounter(22.000000)
		registerVal4:completeAnimation()
		registerVal2.BgScanning:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BgScanningDetail:setAlpha(1.000000)
		registerVal2.BgScanningDetail:setScale(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BgHacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BgHackingDetail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_681B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.BgBreaching:setAlpha(0.000000)
		__FUNC_681B_(registerVal8, {})
		local function __FUNC_69CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 730.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.BgBreachingDetail:setAlpha(0.000000)
		__FUNC_69CD_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BgError:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BgErrorDetail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BgErrorXmarks:setAlpha(0.000000)
		registerVal2.BgErrorXmarks:setScale(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BgErrorStripes:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BgErrorIcon:setAlpha(0.000000)
		registerVal2.BgErrorIcon:setScale(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BfErrorIconGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_6B81_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.IconScanning:setAlpha(1.000000)
		registerVal2.IconScanning:setScale(0.800000)
		__FUNC_6B81_(registerVal16, {})
		local function __FUNC_6D58_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 220.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
		registerVal17:setAlpha(0.000000)
		registerVal17:setScale(0.900000)
		registerVal17:registerEventHandler("transition_complete_keyframe", __FUNC_6D58_)
		registerVal18:completeAnimation()
		registerVal2.IconHacking:setAlpha(0.000000)
		registerVal2.IconHacking:setScale(0.800000)
		registerVal2.clipFinished(registerVal18, {})
		local function __FUNC_6F2B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setText(Engine.Localize("MPUI_BLACKHAT_BREACHING"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.StatusText:setAlpha(1.000000)
		registerVal2.StatusText:setText(Engine.Localize("MPUI_BLACKHAT_BREACHING"))
		__FUNC_6F2B_(registerVal19, {})
		registerVal20:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
		registerVal20:setAlpha(1.000000)
		registerVal20:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal21:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.HackingBarRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.HackingBarLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.WaveformBlackHat:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.blackhatEmp0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal27.DefaultClip = __FUNC_5DBF_
	registerVal26.Breaching = registerVal27
	registerVal27 = {}
	local function __FUNC_7151_()
		registerVal2:setupElementClipCounter(22.000000)
		registerVal4:completeAnimation()
		registerVal2.BgScanning:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BgScanningDetail:setAlpha(1.000000)
		registerVal2.BgScanningDetail:setScale(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BgHacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BgHackingDetail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BgBreaching:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BgBreachingDetail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_7B37_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.BgError:setAlpha(0.000000)
		__FUNC_7B37_(registerVal10, {})
		local function __FUNC_7CE9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 699.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.BgErrorDetail:setAlpha(0.000000)
		__FUNC_7CE9_(registerVal11, {})
		local function __FUNC_7E9D_(arg0, arg1)
			local function __FUNC_8035_(arg0, arg1)
				local function __FUNC_81AF_(arg0, arg1)
					local function __FUNC_8327_(arg0, arg1)
						local function __FUNC_849F_(arg0, arg1)
							local function __FUNC_8617_(arg0, arg1)
								local function __FUNC_878F_(arg0, arg1)
									local function __FUNC_8907_(arg0, arg1)
										local function __FUNC_8A7F_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											arg0:setScale(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_8A7F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A7F_)
									end

									if arg1.interrupted then
										__FUNC_8907_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8907_)
								end

								if arg1.interrupted then
									__FUNC_878F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_878F_)
							end

							if arg1.interrupted then
								__FUNC_8617_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8617_)
						end

						if arg1.interrupted then
							__FUNC_849F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_849F_)
					end

					if arg1.interrupted then
						__FUNC_8327_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8327_)
				end

				if arg1.interrupted then
					__FUNC_81AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81AF_)
			end

			if arg1.interrupted then
				__FUNC_8035_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, true, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8035_)
		end

		registerVal12:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setAlpha(0.000000)
		registerVal12:setScale(0.900000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_7E9D_)
		local function __FUNC_8C4F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
		registerVal13:setAlpha(0.000000)
		registerVal13:registerEventHandler("transition_complete_keyframe", __FUNC_8C4F_)
		local function __FUNC_8E01_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 240.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:setScale(0.900000)
		registerVal14:registerEventHandler("transition_complete_keyframe", __FUNC_8E01_)
		local function __FUNC_8FD3_(arg0, arg1)
			local function __FUNC_914B_(arg0, arg1)
				local function __FUNC_92C3_(arg0, arg1)
					local function __FUNC_943B_(arg0, arg1)
						local function __FUNC_95B3_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 669.000000, true, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_95B3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 670.000000, false, true, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95B3_)
					end

					if arg1.interrupted then
						__FUNC_943B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 680.000000, true, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_943B_)
				end

				if arg1.interrupted then
					__FUNC_92C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 669.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92C3_)
			end

			if arg1.interrupted then
				__FUNC_914B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 710.000000, true, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_914B_)
		end

		registerVal15:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
		registerVal15:setAlpha(0.000000)
		registerVal15:registerEventHandler("transition_complete_keyframe", __FUNC_8FD3_)
		registerVal16:completeAnimation()
		registerVal2.IconScanning:setAlpha(0.000000)
		registerVal2.IconScanning:setScale(0.800000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconBreaching:setAlpha(0.000000)
		registerVal2.IconBreaching:setScale(0.800000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.IconHacking:setAlpha(0.000000)
		registerVal2.IconHacking:setScale(0.800000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.StatusText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.PercentText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.HackingBarRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.HackingBarLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.WaveformBlackHat:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.blackhatEmp0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal27.DefaultClip = __FUNC_7151_
	registerVal26.Error = registerVal27
	registerVal27 = {}
	local function __FUNC_9765_()
		registerVal2:setupElementClipCounter(22.000000)
		registerVal4:completeAnimation()
		registerVal2.BgScanning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BgScanningDetail:setAlpha(0.000000)
		registerVal2.BgScanningDetail:setScale(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BgHacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BgHackingDetail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BgBreaching:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BgBreachingDetail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BgError:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BgErrorDetail:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BgErrorXmarks:setAlpha(0.000000)
		registerVal2.BgErrorXmarks:setScale(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BgErrorStripes:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.BgErrorIcon:setAlpha(0.000000)
		registerVal2.BgErrorIcon:setScale(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BfErrorIconGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.IconScanning:setAlpha(0.000000)
		registerVal2.IconScanning:setScale(0.800000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.IconBreaching:setAlpha(0.000000)
		registerVal2.IconBreaching:setScale(0.800000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.IconHacking:setAlpha(0.000000)
		registerVal2.IconHacking:setScale(0.800000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.StatusText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.PercentText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.Spinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.HackingBarRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.HackingBarLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.WaveformBlackHat:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.blackhatEmp0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal25, {})
	end

	registerVal27.DefaultClip = __FUNC_9765_
	registerVal26.EMP = registerVal27
	registerVal2.clipsPerState = registerVal26
	local registerVal28 = {}
	local registerVal29 = {}
	registerVal29.stateName = "TeamHacking"
	local function __FUNC_A096_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "hudItems.blackhat.status", CoD.BlackhatStatus.Hacking)
		if registerVal3 then
			registerVal3 = IsModelValueTrue(arg1, "currentWeapon.lockedOnEnemyTeamHacking")
		end
		return registerVal3
	end

	registerVal29.condition = __FUNC_A096_
	local registerVal30 = {}
	registerVal30.stateName = "Hacking"
	local function __FUNC_A1C7_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.blackhat.status", CoD.BlackhatStatus.Hacking)
	end

	registerVal30.condition = __FUNC_A1C7_
	local registerVal31 = {}
	registerVal31.stateName = "Breaching"
	local function __FUNC_A295_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.blackhat.status", CoD.BlackhatStatus.Breaching)
	end

	registerVal31.condition = __FUNC_A295_
	local registerVal32 = {}
	registerVal32.stateName = "Error"
	local function __FUNC_A367_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal32.condition = __FUNC_A367_
	local registerVal33 = {}
	registerVal33.stateName = "EMP"
	local function __FUNC_A3B1_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		return registerVal3
	end

	registerVal33.condition = __FUNC_A3B1_
	registerVal28 = {registerVal29, registerVal30, registerVal31, registerVal32, registerVal33}
	registerVal2:mergeStateConditions(registerVal28)
	registerVal29 = Engine.GetModelForController(arg1)
	registerVal28 = Engine.GetModel(registerVal29, "hudItems.blackhat.status")
	local function __FUNC_A47F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.blackhat.status"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal28, __FUNC_A47F_)
	registerVal29 = Engine.GetModelForController(arg1)
	registerVal28 = Engine.GetModel(registerVal29, "currentWeapon.lockedOnEnemyTeamHacking")
	local function __FUNC_A5AA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.lockedOnEnemyTeamHacking"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal28, __FUNC_A5AA_)
	registerVal29 = Engine.GetModelForController(arg1)
	registerVal28 = Engine.GetModel(registerVal29, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_A6E4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal28, __FUNC_A6E4_)
	local function __FUNC_A86D_(arg0)
		arg0.HackingBarRight:close()
		arg0.HackingBarLeft:close()
		arg0.WaveformBlackHat:close()
		arg0.blackhatEmp0:close()
		arg0.PercentText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A86D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.BlackHat_Internal.new = __FUNC_515_
