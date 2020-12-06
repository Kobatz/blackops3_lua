-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.WeaponLevelUp.WeaponLevelUpNotification_FooterLabel02")
require("ui.uieditor.widgets.Notifications.WeaponLevelUp.WeaponLevelUpNotification_FooterLabel01")
require("ui.uieditor.widgets.Notifications.WeaponLevelUp.WeaponLevelUpNotification_TopBacking")
require("ui.uieditor.widgets.Notifications.WeaponLevelUp.WeaponLevelUpNotification_Bottom")
require("ui.uieditor.widgets.Notifications.WeaponLevelUp.WeaponLevelUpNotification_LineFade")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponLevelUpNotification = registerVal1
function CoD.WeaponLevelUpNotification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponLevelUpNotification)
	registerVal2.id = "WeaponLevelUpNotification"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 408.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 220.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIElement.new()
	registerVal3:setLeftRight(true, false, -48.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.levelUpSound = registerVal3
	local registerVal4 = CoD.WeaponLevelUpNotification_FooterLabel02.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -129.000000, 129.000000)
	registerVal4:setTopBottom(true, false, 167.000000, 199.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.WeaponLevelUpNotificationFooterLabel02 = registerVal4
	local registerVal5 = CoD.WeaponLevelUpNotification_FooterLabel01.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -64.000000, 64.000000)
	registerVal5:setTopBottom(true, false, 167.000000, 199.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.WeaponLevelUpNotificationFooterLabel01 = registerVal5
	local registerVal6 = CoD.WeaponLevelUpNotification_TopBacking.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 408.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.WeaponLevelUpNotificationTopBacking = registerVal6
	local registerVal7 = CoD.WeaponLevelUpNotification_Bottom.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 408.000000)
	registerVal7:setTopBottom(true, false, 7.000000, 167.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.WeaponLevelUpNotificationBottom = registerVal7
	local registerVal8 = CoD.WeaponLevelUpNotification_LineFade.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -200.000000, 200.000000)
	registerVal8:setTopBottom(true, false, 130.000000, 131.000000)
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.WeaponLevelUpNotificationLineFade = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -121.830000, 121.830000)
	registerVal9:setTopBottom(true, false, 34.000000, 136.000000)
	registerVal9:setRGB(0.000000, 0.270000, 0.010000)
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal9:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.WeaponG = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -121.830000, 121.830000)
	registerVal10:setTopBottom(true, false, 34.000000, 136.000000)
	registerVal10:setRGB(0.550000, 0.090000, 0.090000)
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal10:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.WeaponR = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -60.000000, 60.000000)
	registerVal11:setTopBottom(true, false, 24.000000, 142.000000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.highlight = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -117.580000, 117.580000)
	registerVal12:setTopBottom(true, false, 34.000000, 136.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.Weapon = registerVal12
	local function __FUNC_1216_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.WeaponLevelUpNotificationFooterLabel02:linkToElementModel(registerVal2, "subtitle", true, __FUNC_1216_)
	local function __FUNC_12EB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.WeaponLevelUpNotificationFooterBacking:setRGB(registerVal1)
		end
	end

	registerVal2.WeaponLevelUpNotificationFooterLabel01:linkToElementModel(registerVal2, "color", true, __FUNC_12EB_)
	local function __FUNC_13B7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.WeaponLevelUpNotificationFooterLabel01:linkToElementModel(registerVal2, "subtitle", true, __FUNC_13B7_)
	local function __FUNC_148B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.WeaponLevelUpNotificationTitle.Text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.WeaponLevelUpNotificationBottom:linkToElementModel(registerVal2, "title", true, __FUNC_148B_)
	local function __FUNC_1590_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.WeaponG:linkToElementModel(registerVal2, "icon", true, __FUNC_1590_)
	local function __FUNC_1644_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.WeaponR:linkToElementModel(registerVal2, "icon", true, __FUNC_1644_)
	local function __FUNC_16F8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setRGB(registerVal1)
		end
	end

	registerVal2.highlight:linkToElementModel(registerVal2, "color", true, __FUNC_16F8_)
	local function __FUNC_178B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.Weapon:linkToElementModel(registerVal2, "icon", true, __FUNC_178B_)
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_183C_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.levelUpSound:playSound("weapon_level_up", arg1)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_217D_(arg0, arg1)
			local function __FUNC_22D4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 109.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -129.000000, 129.000000)
				arg0:setTopBottom(true, false, 167.000000, 199.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_22D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22D4_)
		end

		registerVal4:completeAnimation()
		registerVal2.WeaponLevelUpNotificationFooterLabel02:setLeftRight(false, false, -81.000000, 81.000000)
		registerVal2.WeaponLevelUpNotificationFooterLabel02:setTopBottom(true, false, 167.000000, 199.000000)
		registerVal2.WeaponLevelUpNotificationFooterLabel02:setAlpha(0.000000)
		__FUNC_217D_(registerVal4, {})
		local function __FUNC_24F9_(arg0, arg1)
			local function __FUNC_2650_(arg0, arg1)
				local function __FUNC_27CB_(arg0, arg1)
					local function __FUNC_2943_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 29.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setLeftRight(false, false, -64.000000, 64.000000)
						arg0:setTopBottom(true, false, 167.000000, 199.000000)
						arg0:setAlpha(1.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2943_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2943_)
				end

				if arg1.interrupted then
					__FUNC_27CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27CB_)
			end

			if arg1.interrupted then
				__FUNC_2650_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2650_)
		end

		registerVal5:completeAnimation()
		registerVal2.WeaponLevelUpNotificationFooterLabel01:setLeftRight(false, false, -64.000000, 64.000000)
		registerVal2.WeaponLevelUpNotificationFooterLabel01:setTopBottom(true, false, 167.000000, 199.000000)
		registerVal2.WeaponLevelUpNotificationFooterLabel01:setAlpha(0.000000)
		registerVal2.WeaponLevelUpNotificationFooterLabel01:setScale(1.000000)
		__FUNC_24F9_(registerVal5, {})
		local function __FUNC_2B83_(arg0, arg1)
			local function __FUNC_2D56_(arg0, arg1)
				local function __FUNC_2F07_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 0.000000, 408.000000)
					arg0:setTopBottom(true, false, 0.000000, 80.000000)
					arg0:setAlpha(1.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2F07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, true, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 5.000000, 85.000000)
				arg0:setScale(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F07_)
			end

			if arg1.interrupted then
				__FUNC_2D56_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, -41.040000, 38.960000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.450000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D56_)
		end

		registerVal6:completeAnimation()
		registerVal2.WeaponLevelUpNotificationTopBacking:setLeftRight(true, false, 0.000000, 408.000000)
		registerVal2.WeaponLevelUpNotificationTopBacking:setTopBottom(true, false, -80.000000, 0.000000)
		registerVal2.WeaponLevelUpNotificationTopBacking:setAlpha(0.000000)
		registerVal2.WeaponLevelUpNotificationTopBacking:setScale(2.000000)
		__FUNC_2B83_(registerVal6, {})
		local function __FUNC_3142_(arg0, arg1)
			local function __FUNC_3316_(arg0, arg1)
				local function __FUNC_34C7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 0.000000, 408.000000)
					arg0:setTopBottom(true, false, 7.000000, 167.000000)
					arg0:setAlpha(1.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_34C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, true, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 7.000000, 167.000000)
				arg0:setScale(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34C7_)
			end

			if arg1.interrupted then
				__FUNC_3316_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 35.710000, 195.710000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.450000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3316_)
		end

		registerVal7:completeAnimation()
		registerVal2.WeaponLevelUpNotificationBottom:setLeftRight(true, false, 0.000000, 408.000000)
		registerVal2.WeaponLevelUpNotificationBottom:setTopBottom(true, false, 60.000000, 220.000000)
		registerVal2.WeaponLevelUpNotificationBottom:setAlpha(0.000000)
		registerVal2.WeaponLevelUpNotificationBottom:setScale(2.000000)
		__FUNC_3142_(registerVal7, {})
		local function __FUNC_3707_(arg0, arg1)
			local function __FUNC_3894_(arg0, arg1)
				local function __FUNC_3A6A_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -200.000000, 200.000000)
					arg0:setTopBottom(true, false, 130.000000, 131.000000)
					arg0:setAlpha(1.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3A6A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 140.000000, false, true, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 125.510000, 126.510000)
				arg0:setAlpha(0.750000)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A6A_)
			end

			if arg1.interrupted then
				__FUNC_3894_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 142.000000, 143.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3894_)
		end

		registerVal8:completeAnimation()
		registerVal2.WeaponLevelUpNotificationLineFade:setLeftRight(false, false, -200.000000, 200.000000)
		registerVal2.WeaponLevelUpNotificationLineFade:setTopBottom(true, false, 167.000000, 168.000000)
		registerVal2.WeaponLevelUpNotificationLineFade:setAlpha(0.000000)
		registerVal2.WeaponLevelUpNotificationLineFade:setScale(3.000000)
		__FUNC_3707_(registerVal8, {})
		local function __FUNC_3CAB_(arg0, arg1)
			local function __FUNC_3E38_(arg0, arg1)
				local function __FUNC_400E_(arg0, arg1)
					local function __FUNC_41BF_(arg0, arg1)
						local function __FUNC_4337_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -121.830000, 121.830000)
							arg0:setTopBottom(true, false, 34.000000, 136.000000)
							arg0:setAlpha(0.000000)
							arg0:setScale(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_4337_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
						arg0:setScale(0.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4337_)
					end

					if arg1.interrupted then
						__FUNC_41BF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -121.830000, 121.830000)
					arg0:setScale(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41BF_)
				end

				if arg1.interrupted then
					__FUNC_400E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -31.830000, 211.830000)
				arg0:setAlpha(1.000000)
				arg0:setScale(2.060000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_400E_)
			end

			if arg1.interrupted then
				__FUNC_3E38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 48.170000, 291.830000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E38_)
		end

		registerVal9:completeAnimation()
		registerVal2.WeaponG:setLeftRight(false, false, 18.170000, 261.830000)
		registerVal2.WeaponG:setTopBottom(true, false, 34.000000, 136.000000)
		registerVal2.WeaponG:setAlpha(0.000000)
		registerVal2.WeaponG:setScale(3.000000)
		__FUNC_3CAB_(registerVal9, {})
		local function __FUNC_457C_(arg0, arg1)
			local function __FUNC_470C_(arg0, arg1)
				local function __FUNC_48E2_(arg0, arg1)
					local function __FUNC_4AB6_(arg0, arg1)
						local function __FUNC_4C52_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -121.830000, 121.830000)
							arg0:setTopBottom(true, false, 34.000000, 136.000000)
							arg0:setAlpha(0.000000)
							arg0:setScale(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_4C52_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setScale(0.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C52_)
					end

					if arg1.interrupted then
						__FUNC_4AB6_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -121.830000, 121.830000)
					arg0:setAlpha(0.220000)
					arg0:setScale(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AB6_)
				end

				if arg1.interrupted then
					__FUNC_48E2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -212.890000, 30.770000)
				arg0:setAlpha(1.000000)
				arg0:setScale(2.060000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48E2_)
			end

			if arg1.interrupted then
				__FUNC_470C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -293.830000, -50.170000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_470C_)
		end

		registerVal10:completeAnimation()
		registerVal2.WeaponR:setLeftRight(false, false, -263.830000, -20.170000)
		registerVal2.WeaponR:setTopBottom(true, false, 34.000000, 136.000000)
		registerVal2.WeaponR:setAlpha(0.000000)
		registerVal2.WeaponR:setScale(3.000000)
		__FUNC_457C_(registerVal10, {})
		local function __FUNC_4E98_(arg0, arg1)
			local function __FUNC_4FF0_(arg0, arg1)
				local function __FUNC_518D_(arg0, arg1)
					local function __FUNC_534C_(arg0, arg1)
						local function __FUNC_5507_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -149.000000, 149.000000)
							arg0:setTopBottom(true, false, 24.000000, 142.000000)
							arg0:setAlpha(0.200000)
							arg0:setZRot(360.000000)
							arg0:setScale(1.500000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_5507_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:setZRot(325.620000)
						arg0:setScale(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5507_)
					end

					if arg1.interrupted then
						__FUNC_534C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Linear)
					arg0:setAlpha(0.780000)
					arg0:setZRot(208.160000)
					arg0:setScale(3.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_534C_)
				end

				if arg1.interrupted then
					__FUNC_518D_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.380000)
				arg0:setZRot(108.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_518D_)
			end

			if arg1.interrupted then
				__FUNC_4FF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FF0_)
		end

		registerVal11:completeAnimation()
		registerVal2.highlight:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.highlight:setTopBottom(true, false, 24.000000, 142.000000)
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.highlight:setZRot(0.000000)
		registerVal2.highlight:setScale(1.000000)
		__FUNC_4E98_(registerVal11, {})
		local function __FUNC_576E_(arg0, arg1)
			local function __FUNC_58E7_(arg0, arg1)
				local function __FUNC_5A82_(arg0, arg1)
					local function __FUNC_5C1E_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -121.830000, 121.830000)
						arg0:setTopBottom(true, false, 34.000000, 136.000000)
						arg0:setAlpha(1.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5C1E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:setScale(1.800000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C1E_)
				end

				if arg1.interrupted then
					__FUNC_5A82_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:setScale(1.410000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A82_)
			end

			if arg1.interrupted then
				__FUNC_58E7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58E7_)
		end

		registerVal12:completeAnimation()
		registerVal2.Weapon:setLeftRight(false, false, -121.830000, 121.830000)
		registerVal2.Weapon:setTopBottom(true, false, 34.000000, 136.000000)
		registerVal2.Weapon:setAlpha(0.000000)
		registerVal2.Weapon:setScale(0.100000)
		__FUNC_576E_(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_183C_
	local function __FUNC_5E5F_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_6341_(arg0, arg1)
			local function __FUNC_6498_(arg0, arg1)
				local function __FUNC_6613_(arg0, arg1)
					local function __FUNC_678B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_678B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_678B_)
				end

				if arg1.interrupted then
					__FUNC_6613_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6613_)
			end

			if arg1.interrupted then
				__FUNC_6498_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6498_)
		end

		registerVal4:completeAnimation()
		registerVal2.WeaponLevelUpNotificationFooterLabel02:setAlpha(1.000000)
		__FUNC_6341_(registerVal4, {})
		local function __FUNC_693D_(arg0, arg1)
			local function __FUNC_6A94_(arg0, arg1)
				local function __FUNC_6C0F_(arg0, arg1)
					local function __FUNC_6D87_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_6D87_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D87_)
				end

				if arg1.interrupted then
					__FUNC_6C0F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C0F_)
			end

			if arg1.interrupted then
				__FUNC_6A94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A94_)
		end

		registerVal5:completeAnimation()
		registerVal2.WeaponLevelUpNotificationFooterLabel01:setAlpha(1.000000)
		__FUNC_693D_(registerVal5, {})
		local function __FUNC_6F39_(arg0, arg1)
			local function __FUNC_7090_(arg0, arg1)
				local function __FUNC_720B_(arg0, arg1)
					local function __FUNC_7383_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_7383_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7383_)
				end

				if arg1.interrupted then
					__FUNC_720B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_720B_)
			end

			if arg1.interrupted then
				__FUNC_7090_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7090_)
		end

		registerVal6:completeAnimation()
		registerVal2.WeaponLevelUpNotificationTopBacking:setAlpha(1.000000)
		__FUNC_6F39_(registerVal6, {})
		local function __FUNC_7535_(arg0, arg1)
			local function __FUNC_768C_(arg0, arg1)
				local function __FUNC_7807_(arg0, arg1)
					local function __FUNC_797F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_797F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_797F_)
				end

				if arg1.interrupted then
					__FUNC_7807_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7807_)
			end

			if arg1.interrupted then
				__FUNC_768C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_768C_)
		end

		registerVal7:completeAnimation()
		registerVal2.WeaponLevelUpNotificationBottom:setAlpha(1.000000)
		__FUNC_7535_(registerVal7, {})
		local function __FUNC_7B31_(arg0, arg1)
			local function __FUNC_7C88_(arg0, arg1)
				local function __FUNC_7E03_(arg0, arg1)
					local function __FUNC_7F7B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_7F7B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F7B_)
				end

				if arg1.interrupted then
					__FUNC_7E03_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E03_)
			end

			if arg1.interrupted then
				__FUNC_7C88_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C88_)
		end

		registerVal8:completeAnimation()
		registerVal2.WeaponLevelUpNotificationLineFade:setAlpha(1.000000)
		__FUNC_7B31_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.WeaponG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WeaponR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_812D_(arg0, arg1)
			local function __FUNC_82A7_(arg0, arg1)
				local function __FUNC_841F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setLeftRight(false, false, -149.000000, 149.000000)
					arg0:setTopBottom(true, false, 24.000000, 142.000000)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.500000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_841F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_841F_)
			end

			if arg1.interrupted then
				__FUNC_82A7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82A7_)
		end

		registerVal11:completeAnimation()
		registerVal2.highlight:setLeftRight(false, false, -149.000000, 149.000000)
		registerVal2.highlight:setTopBottom(true, false, 24.000000, 142.000000)
		registerVal2.highlight:setAlpha(0.200000)
		registerVal2.highlight:setScale(1.500000)
		__FUNC_812D_(registerVal11, {})
		local function __FUNC_8664_(arg0, arg1)
			local function __FUNC_87DF_(arg0, arg1)
				local function __FUNC_8957_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_8957_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8957_)
			end

			if arg1.interrupted then
				__FUNC_87DF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87DF_)
		end

		registerVal12:completeAnimation()
		registerVal2.Weapon:setAlpha(1.000000)
		__FUNC_8664_(registerVal12, {})
	end

	registerVal14.TimeUp = __FUNC_5E5F_
	registerVal13.DefaultState = registerVal14
	registerVal2.clipsPerState = registerVal13
	local function __FUNC_8B09_(arg0)
		arg0.WeaponLevelUpNotificationFooterLabel02:close()
		arg0.WeaponLevelUpNotificationFooterLabel01:close()
		arg0.WeaponLevelUpNotificationTopBacking:close()
		arg0.WeaponLevelUpNotificationBottom:close()
		arg0.WeaponLevelUpNotificationLineFade:close()
		arg0.WeaponG:close()
		arg0.WeaponR:close()
		arg0.highlight:close()
		arg0.Weapon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8B09_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

