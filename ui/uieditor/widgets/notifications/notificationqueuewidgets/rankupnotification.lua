-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.RankUp.RankUpNotification_WingContainer")
require("ui.uieditor.widgets.Notifications.RankUp.RankUpNotification_Title")
require("ui.uieditor.widgets.Notifications.RankUp.RankUpNotification_FooterLabel02")
require("ui.uieditor.widgets.Notifications.RankUp.RankUpNotification_FooterLabel01")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RankUpNotification = registerVal1
function CoD.RankUpNotification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RankUpNotification)
	registerVal2.id = "RankUpNotification"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 348.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 250.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIElement.new()
	registerVal3:setLeftRight(true, false, -48.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.levelUpSound = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -116.000000, 116.000000)
	registerVal4:setTopBottom(true, false, -16.000000, 144.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setScale(0.800000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_playerlevel_backing_frame"))
	registerVal2:addElement(registerVal4)
	registerVal2.frame = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -104.000000, 104.000000)
	registerVal5:setTopBottom(true, false, -16.000000, 144.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setScale(0.800000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_playerlevel_backing_fill"))
	registerVal2:addElement(registerVal5)
	registerVal2.fill = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -64.000000, 64.000000)
	registerVal6:setTopBottom(true, false, 7.000000, 127.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setScale(0.800000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_playerlevel_backing_main"))
	registerVal2:addElement(registerVal6)
	registerVal2.main = registerVal6
	local registerVal7 = CoD.RankUpNotification_WingContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 84.000000, 264.000000)
	registerVal7:setTopBottom(true, false, 20.000000, 54.670000)
	registerVal7:setScale(0.800000)
	registerVal2:addElement(registerVal7)
	registerVal2.RankUpNotificationWingContainer = registerVal7
	local registerVal8 = CoD.RankUpNotification_Title.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -133.000000, 133.000000)
	registerVal8:setTopBottom(true, false, 123.000000, 183.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.RankUpNotificationTitle = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -52.000000, 52.000000)
	registerVal9:setTopBottom(true, false, 16.000000, 120.000000)
	registerVal9:setRGB(0.000000, 0.200000, 1.000000)
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal9:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.RankB = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -52.000000, 52.000000)
	registerVal10:setTopBottom(true, false, 16.000000, 120.000000)
	registerVal10:setRGB(0.000000, 0.270000, 0.010000)
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal10:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.RankG = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -52.000000, 52.000000)
	registerVal11:setTopBottom(true, false, 16.000000, 120.000000)
	registerVal11:setRGB(0.550000, 0.090000, 0.090000)
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal11:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.RankR = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 115.000000, 233.000000)
	registerVal12:setTopBottom(true, false, 12.000000, 130.000000)
	registerVal12:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.highlight = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, -52.000000, 52.000000)
	registerVal13:setTopBottom(true, false, 16.000000, 120.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.Rank = registerVal13
	local registerVal14 = CoD.RankUpNotification_FooterLabel02.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -137.000000, 137.000000)
	registerVal14:setTopBottom(true, false, 168.000000, 200.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.RankUpNotificationFooterLabel020 = registerVal14
	local registerVal15 = CoD.RankUpNotification_FooterLabel01.new(arg0, arg1)
	registerVal15:setLeftRight(false, false, -71.000000, 71.000000)
	registerVal15:setTopBottom(true, false, 168.000000, 200.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.RankUpNotificationFooterLabel010 = registerVal15
	local function __FUNC_145D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.Text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.RankUpNotificationTitle:linkToElementModel(registerVal2, "title", true, __FUNC_145D_)
	local function __FUNC_1530_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.RankB:linkToElementModel(registerVal2, "icon", true, __FUNC_1530_)
	local function __FUNC_15E4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.RankG:linkToElementModel(registerVal2, "icon", true, __FUNC_15E4_)
	local function __FUNC_1698_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.RankR:linkToElementModel(registerVal2, "icon", true, __FUNC_1698_)
	local function __FUNC_174C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setRGB(registerVal1)
		end
	end

	registerVal2.highlight:linkToElementModel(registerVal2, "color", true, __FUNC_174C_)
	local function __FUNC_17DF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.Rank:linkToElementModel(registerVal2, "icon", true, __FUNC_17DF_)
	local function __FUNC_1890_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.RankUpNotificationFooterLabel020:linkToElementModel(registerVal2, "subtitle", true, __FUNC_1890_)
	local function __FUNC_1967_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.RankUpNotificationFooterBacking010:setRGB(registerVal1)
		end
	end

	registerVal2.RankUpNotificationFooterLabel010:linkToElementModel(registerVal2, "color", true, __FUNC_1967_)
	local function __FUNC_1A2F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.SubText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.RankUpNotificationFooterLabel010:linkToElementModel(registerVal2, "subtitle", true, __FUNC_1A2F_)
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_1B03_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.levelUpSound:playSound("rank_up", arg1)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_2448_(arg0, arg1)
			local function __FUNC_25A0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(0.800000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_25A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25A0_)
		end

		registerVal4:completeAnimation()
		registerVal2.frame:setAlpha(0.000000)
		registerVal2.frame:setScale(3.000000)
		__FUNC_2448_(registerVal4, {})
		local function __FUNC_2778_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.fill:setAlpha(0.000000)
		registerVal2.fill:setScale(3.000000)
		__FUNC_2778_(registerVal5, {})
		local function __FUNC_2950_(arg0, arg1)
			local function __FUNC_2AA8_(arg0, arg1)
				local function __FUNC_2C46_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					arg0:setScale(0.800000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2C46_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C46_)
			end

			if arg1.interrupted then
				__FUNC_2AA8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AA8_)
		end

		registerVal6:completeAnimation()
		registerVal2.main:setAlpha(0.000000)
		registerVal2.main:setScale(3.000000)
		registerVal2.main:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_2950_(registerVal6, {})
		local function __FUNC_2EA9_(arg0, arg1)
			local function __FUNC_3000_(arg0, arg1)
				local function __FUNC_319E_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					arg0:setScale(0.800000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_319E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 199.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.900000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_319E_)
			end

			if arg1.interrupted then
				__FUNC_3000_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3000_)
		end

		registerVal7:completeAnimation()
		registerVal2.RankUpNotificationWingContainer:setAlpha(0.000000)
		registerVal2.RankUpNotificationWingContainer:setScale(3.000000)
		__FUNC_2EA9_(registerVal7, {})
		local function __FUNC_3374_(arg0, arg1)
			local function __FUNC_34CC_(arg0, arg1)
				local function __FUNC_366A_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Linear)
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
					__FUNC_366A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(0.930000)
				arg0:setScale(1.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_366A_)
			end

			if arg1.interrupted then
				__FUNC_34CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34CC_)
		end

		registerVal8:completeAnimation()
		registerVal2.RankUpNotificationTitle:setAlpha(0.000000)
		registerVal2.RankUpNotificationTitle:setScale(0.000000)
		__FUNC_3374_(registerVal8, {})
		local function __FUNC_383B_(arg0, arg1)
			local function __FUNC_3990_(arg0, arg1)
				local function __FUNC_3B0B_(arg0, arg1)
					local function __FUNC_3C83_(arg0, arg1)
						local function __FUNC_3DFB_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -52.000000, 52.000000)
							arg0:setTopBottom(true, false, 16.000000, 120.000000)
							arg0:setAlpha(0.000000)
							arg0:setScale(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_3DFB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setScale(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DFB_)
					end

					if arg1.interrupted then
						__FUNC_3C83_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(0.800000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C83_)
				end

				if arg1.interrupted then
					__FUNC_3B0B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B0B_)
			end

			if arg1.interrupted then
				__FUNC_3990_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3990_)
		end

		registerVal9:completeAnimation()
		registerVal2.RankB:setLeftRight(false, false, -52.000000, 52.000000)
		registerVal2.RankB:setTopBottom(true, false, 16.000000, 120.000000)
		registerVal2.RankB:setAlpha(0.000000)
		registerVal2.RankB:setScale(3.000000)
		__FUNC_383B_(registerVal9, {})
		local function __FUNC_4040_(arg0, arg1)
			local function __FUNC_4198_(arg0, arg1)
				local function __FUNC_4369_(arg0, arg1)
					local function __FUNC_4501_(arg0, arg1)
						local function __FUNC_469E_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -52.000000, 52.000000)
							arg0:setTopBottom(true, false, 16.000000, 120.000000)
							arg0:setAlpha(0.000000)
							arg0:setScale(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_469E_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.600000)
						arg0:setScale(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_469E_)
					end

					if arg1.interrupted then
						__FUNC_4501_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.800000)
					arg0:setScale(0.800000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4501_)
				end

				if arg1.interrupted then
					__FUNC_4369_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -52.000000, 52.000000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4369_)
			end

			if arg1.interrupted then
				__FUNC_4198_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4198_)
		end

		registerVal10:completeAnimation()
		registerVal2.RankG:setLeftRight(false, false, 28.000000, 132.000000)
		registerVal2.RankG:setTopBottom(true, false, 16.000000, 120.000000)
		registerVal2.RankG:setAlpha(0.000000)
		registerVal2.RankG:setScale(3.000000)
		__FUNC_4040_(registerVal10, {})
		local function __FUNC_48E4_(arg0, arg1)
			local function __FUNC_4A3C_(arg0, arg1)
				local function __FUNC_4C0D_(arg0, arg1)
					local function __FUNC_4DA5_(arg0, arg1)
						local function __FUNC_4F42_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -52.000000, 52.000000)
							arg0:setTopBottom(true, false, 16.000000, 120.000000)
							arg0:setAlpha(0.000000)
							arg0:setScale(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_4F42_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.600000)
						arg0:setScale(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F42_)
					end

					if arg1.interrupted then
						__FUNC_4DA5_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.800000)
					arg0:setScale(0.800000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DA5_)
				end

				if arg1.interrupted then
					__FUNC_4C0D_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -52.000000, 52.000000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C0D_)
			end

			if arg1.interrupted then
				__FUNC_4A3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A3C_)
		end

		registerVal11:completeAnimation()
		registerVal2.RankR:setLeftRight(false, false, -132.000000, -28.000000)
		registerVal2.RankR:setTopBottom(true, false, 16.000000, 120.000000)
		registerVal2.RankR:setAlpha(0.000000)
		registerVal2.RankR:setScale(3.000000)
		__FUNC_48E4_(registerVal11, {})
		local function __FUNC_5188_(arg0, arg1)
			local function __FUNC_52E0_(arg0, arg1)
				local function __FUNC_54A0_(arg0, arg1)
					local function __FUNC_5660_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.200000)
						arg0:setZRot(360.000000)
						arg0:setScale(2.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5660_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.940000)
					arg0:setZRot(105.880000)
					arg0:setScale(3.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5660_)
				end

				if arg1.interrupted then
					__FUNC_54A0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZRot(84.710000)
				arg0:setScale(2.600000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54A0_)
			end

			if arg1.interrupted then
				__FUNC_52E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52E0_)
		end

		registerVal12:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.highlight:setZRot(0.000000)
		registerVal2.highlight:setScale(1.000000)
		__FUNC_5188_(registerVal12, {})
		local function __FUNC_585A_(arg0, arg1)
			local function __FUNC_59B0_(arg0, arg1)
				local function __FUNC_5B4E_(arg0, arg1)
					local function __FUNC_5CC7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Linear)
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
						__FUNC_5CC7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Linear)
					arg0:setScale(1.800000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CC7_)
				end

				if arg1.interrupted then
					__FUNC_5B4E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.490000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B4E_)
			end

			if arg1.interrupted then
				__FUNC_59B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 330.000000, false, true, CoD.TweenType.Bounce)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59B0_)
		end

		registerVal13:completeAnimation()
		registerVal2.Rank:setAlpha(0.000000)
		registerVal2.Rank:setScale(0.800000)
		__FUNC_585A_(registerVal13, {})
		local function __FUNC_5E97_(arg0, arg1)
			local function __FUNC_5FEC_(arg0, arg1)
				local function __FUNC_6144_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 120.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -137.000000, 137.000000)
					arg0:setTopBottom(true, false, 168.000000, 200.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6144_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6144_)
			end

			if arg1.interrupted then
				__FUNC_5FEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FEC_)
		end

		registerVal14:completeAnimation()
		registerVal2.RankUpNotificationFooterLabel020:setLeftRight(false, false, -50.000000, 50.000000)
		registerVal2.RankUpNotificationFooterLabel020:setTopBottom(true, false, 168.000000, 200.000000)
		registerVal2.RankUpNotificationFooterLabel020:setAlpha(0.000000)
		__FUNC_5E97_(registerVal14, {})
		local function __FUNC_6369_(arg0, arg1)
			local function __FUNC_64C0_(arg0, arg1)
				local function __FUNC_663B_(arg0, arg1)
					local function __FUNC_67B3_(arg0, arg1)
						local function __FUNC_692B_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, true, CoD.TweenType.Bounce)
							end
							arg0:setLeftRight(false, false, -71.000000, 71.000000)
							arg0:setTopBottom(true, false, 168.000000, 200.000000)
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_692B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Bounce)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_692B_)
					end

					if arg1.interrupted then
						__FUNC_67B3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, true, CoD.TweenType.Bounce)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67B3_)
				end

				if arg1.interrupted then
					__FUNC_663B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_663B_)
			end

			if arg1.interrupted then
				__FUNC_64C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64C0_)
		end

		registerVal15:completeAnimation()
		registerVal2.RankUpNotificationFooterLabel010:setLeftRight(false, false, -71.000000, 71.000000)
		registerVal2.RankUpNotificationFooterLabel010:setTopBottom(true, false, 168.000000, 200.000000)
		registerVal2.RankUpNotificationFooterLabel010:setAlpha(0.000000)
		__FUNC_6369_(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_1B03_
	local function __FUNC_6B4D_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_6CF4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
			arg0:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Rank:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
		registerVal2.Rank:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_6CF4_(registerVal13, {})
	end

	registerVal17.TimeUp1 = __FUNC_6B4D_
	local function __FUNC_6F5F_()
		registerVal2:setupElementClipCounter(12.000000)
		local function __FUNC_7519_(arg0, arg1)
			local function __FUNC_7693_(arg0, arg1)
				local function __FUNC_780B_(arg0, arg1)
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
					__FUNC_780B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_780B_)
			end

			if arg1.interrupted then
				__FUNC_7693_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7693_)
		end

		registerVal4:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(1.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_7519_)
		local function __FUNC_79BD_(arg0, arg1)
			local function __FUNC_7B37_(arg0, arg1)
				local function __FUNC_7CAF_(arg0, arg1)
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
					__FUNC_7CAF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CAF_)
			end

			if arg1.interrupted then
				__FUNC_7B37_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B37_)
		end

		registerVal5:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(1.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_79BD_)
		local function __FUNC_7E61_(arg0, arg1)
			local function __FUNC_7FDB_(arg0, arg1)
				local function __FUNC_8153_(arg0, arg1)
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
					__FUNC_8153_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8153_)
			end

			if arg1.interrupted then
				__FUNC_7FDB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FDB_)
		end

		registerVal6:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(1.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_7E61_)
		local function __FUNC_8305_(arg0, arg1)
			local function __FUNC_847F_(arg0, arg1)
				local function __FUNC_85F7_(arg0, arg1)
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
					__FUNC_85F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85F7_)
			end

			if arg1.interrupted then
				__FUNC_847F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 40.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_847F_)
		end

		registerVal7:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(1.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_8305_)
		local function __FUNC_87A9_(arg0, arg1)
			local function __FUNC_8923_(arg0, arg1)
				local function __FUNC_8A9B_(arg0, arg1)
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
					__FUNC_8A9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A9B_)
			end

			if arg1.interrupted then
				__FUNC_8923_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8923_)
		end

		registerVal8:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(1.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_87A9_)
		registerVal9:completeAnimation()
		registerVal2.RankB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RankG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.RankR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		local function __FUNC_8C4D_(arg0, arg1)
			local function __FUNC_8DC7_(arg0, arg1)
				local function __FUNC_8F3F_(arg0, arg1)
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
					__FUNC_8F3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F3F_)
			end

			if arg1.interrupted then
				__FUNC_8DC7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8DC7_)
		end

		registerVal13:completeAnimation()
		registerVal2.Rank:setAlpha(1.000000)
		__FUNC_8C4D_(registerVal13, {})
		local function __FUNC_90F1_(arg0, arg1)
			local function __FUNC_926B_(arg0, arg1)
				local function __FUNC_93E3_(arg0, arg1)
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
					__FUNC_93E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93E3_)
			end

			if arg1.interrupted then
				__FUNC_926B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_926B_)
		end

		registerVal14:completeAnimation()
		registerVal2.RankUpNotificationFooterLabel020:setAlpha(1.000000)
		__FUNC_90F1_(registerVal14, {})
		local function __FUNC_9595_(arg0, arg1)
			local function __FUNC_970F_(arg0, arg1)
				local function __FUNC_9887_(arg0, arg1)
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
					__FUNC_9887_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9887_)
			end

			if arg1.interrupted then
				__FUNC_970F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, true, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_970F_)
		end

		registerVal15:completeAnimation()
		registerVal2.RankUpNotificationFooterLabel010:setAlpha(1.000000)
		__FUNC_9595_(registerVal15, {})
	end

	registerVal17.TimeUp = __FUNC_6F5F_
	registerVal16.DefaultState = registerVal17
	registerVal2.clipsPerState = registerVal16
	local function __FUNC_9A39_(arg0)
		arg0.RankUpNotificationWingContainer:close()
		arg0.RankUpNotificationTitle:close()
		arg0.RankUpNotificationFooterLabel020:close()
		arg0.RankUpNotificationFooterLabel010:close()
		arg0.RankB:close()
		arg0.RankG:close()
		arg0.RankR:close()
		arg0.highlight:close()
		arg0.Rank:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9A39_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

