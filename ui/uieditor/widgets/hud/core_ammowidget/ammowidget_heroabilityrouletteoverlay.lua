-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.onOffImage")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityGlow")
require("ui.uieditor.widgets.AmmoWidget_HeroAbilityRouletteOverlayWidget")
local function __FUNC_2C4_(arg0, arg1, arg2)
	local function __FUNC_335_(arg0, arg2)
		LUI.UIElement.clipOver(arg0, arg2)
		local registerVal3 = DataSources.HeroWeapon.getModel(arg1)
		local registerVal2 = Engine.GetModel(registerVal3, "rouletteStatus")
		registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 and registerVal3 == 1.000000 then
			Engine.SetModelValue(registerVal2, 3.000000)
		end
	end

	arg0:registerEventHandler("clip_over", __FUNC_335_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_HeroAbilityRouletteOverlay = registerVal2
local function __FUNC_4E7_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_HeroAbilityRouletteOverlay)
	registerVal2.id = "AmmoWidget_HeroAbilityRouletteOverlay"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -43.000000, 45.000000)
	registerVal3:setTopBottom(false, false, -44.000000, 44.000000)
	registerVal3:setRGB(1.000000, 0.790000, 0.150000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setZoom(-5.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_heroringedgeglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.EdgeGlow = registerVal3
	local registerVal4 = CoD.onOffImage.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal4:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
	registerVal4:setShaderVector(0.000000, 0.050000, 0.500000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4.image:setImage(RegisterImage(GetRandomHeroAbilityOrWeaponIcon("uie_headicon_dead")))
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "On"
	local function __FUNC_2505_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal8.condition = __FUNC_2505_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.ImgIcon = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -22.930000, 22.930000)
	registerVal5:setTopBottom(false, false, -28.170000, 28.170000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_ammowidget_abilityfillcircle"))
	registerVal2:addElement(registerVal5)
	registerVal2.backing = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -60.000000, 60.000000)
	registerVal6:setTopBottom(false, false, -59.500000, 60.500000)
	registerVal6:setRGB(1.000000, 0.790000, 0.150000)
	registerVal6:setAlpha(0.500000)
	registerVal6:setXRot(15.000000)
	registerVal6:setYRot(-40.000000)
	registerVal6:setZoom(-5.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_mp_blackjack_gambler_texture1"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Texture1 = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -60.000000, 60.000000)
	registerVal7:setTopBottom(false, false, -59.500000, 60.500000)
	registerVal7:setRGB(1.000000, 0.790000, 0.150000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setXRot(15.000000)
	registerVal7:setYRot(-40.000000)
	registerVal7:setZoom(-5.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_mp_blackjack_gambler_texture2"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Texture2 = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -34.500000, 34.500000)
	registerVal8:setTopBottom(false, false, -34.500000, 34.500000)
	registerVal8:setRGB(1.000000, 0.790000, 0.150000)
	registerVal8:setXRot(15.000000)
	registerVal8:setYRot(-40.000000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_mp_blackjack_card_01_full"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Card1 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -34.500000, 34.500000)
	registerVal9:setTopBottom(false, false, -34.500000, 34.500000)
	registerVal9:setRGB(1.000000, 0.790000, 0.150000)
	registerVal9:setXRot(15.000000)
	registerVal9:setYRot(-40.000000)
	registerVal9:setImage(RegisterImage("uie_t7_hud_mp_blackjack_card_back"))
	registerVal2:addElement(registerVal9)
	registerVal2.CardBack = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -34.500000, 34.500000)
	registerVal10:setTopBottom(false, false, -34.500000, 34.500000)
	registerVal10:setRGB(1.000000, 0.790000, 0.150000)
	registerVal10:setXRot(15.000000)
	registerVal10:setYRot(-40.000000)
	local function __FUNC_2550_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "HeroWeapon", "cardImage", __FUNC_2550_)
	registerVal2:addElement(registerVal10)
	registerVal2.CardFront = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -9.000000, 60.000000)
	registerVal11:setTopBottom(false, false, -34.500000, 34.500000)
	registerVal11:setRGB(1.000000, 0.790000, 0.150000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setXRot(15.000000)
	registerVal11:setYRot(-40.000000)
	registerVal11:setScale(2.400000)
	registerVal11:setImage(RegisterImage("uie_t7_hud_mp_blackjack_card_01_blur"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Card2b = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -60.000000, 60.000000)
	registerVal12:setTopBottom(false, false, -53.500000, 54.500000)
	registerVal12:setRGB(1.000000, 0.790000, 0.150000)
	registerVal12:setAlpha(0.680000)
	registerVal12:setImage(RegisterImage("uie_img_t7_hud_cm_herobackingglow"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.HeroBackgroundGlowImage = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, -60.000000, 60.000000)
	registerVal13:setTopBottom(false, false, -53.500000, 54.500000)
	registerVal13:setRGB(1.000000, 0.790000, 0.150000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_img_t7_hud_cm_herobackingglow"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.HeroBackgroundGlowImage0 = registerVal13
	local registerVal14 = CoD.AmmoWidget_AbilityGlow.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, 4.000000, -4.000000)
	registerVal14:setTopBottom(true, true, 4.000000, -4.000000)
	registerVal14:setRGB(1.000000, 0.790000, 0.150000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setScale(0.400000)
	registerVal2:addElement(registerVal14)
	registerVal2.Glow = registerVal14
	local registerVal15 = CoD.AmmoWidget_HeroAbilityRouletteOverlayWidget.new(arg0, arg1)
	registerVal15:setLeftRight(false, false, -43.000000, 28.000000)
	registerVal15:setTopBottom(false, false, 28.170000, 44.170000)
	registerVal15:setXRot(15.000000)
	registerVal15:setYRot(-40.000000)
	registerVal15.FEButtonPanel0:setAlpha(0.800000)
	registerVal15.rerollInstruction:setRGB(1.000000, 0.960000, 0.450000)
	registerVal15.rerollInstruction:setText(LocalizeToUpperString("MPUI_REDRAW"))
	registerVal15.Glow:setAlpha(0.440000)
	registerVal2:addElement(registerVal15)
	registerVal2.AmmoWidgetHeroAbilityRouletteOverlayWidget0 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, -40.410000, 162.410000)
	registerVal16:setTopBottom(true, false, -35.680000, 156.680000)
	registerVal16:setRGB(1.000000, 0.540000, 0.000000)
	registerVal16:setAlpha(0.300000)
	registerVal16:setZRot(90.000000)
	registerVal16:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.GlowOrangeOver = registerVal16
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_2604_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.EdgeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImgIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Texture1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Texture2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Card1:setRGB(0.620000, 0.960000, 1.000000)
		registerVal2.Card1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CardBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CardFront:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.HeroBackgroundGlowImage0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityRouletteOverlayWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_2604_
	local function __FUNC_2B3D_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.EdgeGlow:setLeftRight(false, false, -43.000000, 45.000000)
		registerVal2.EdgeGlow:setTopBottom(false, false, -44.000000, 44.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImgIcon:setLeftRight(true, true, 2.000000, -2.000000)
		registerVal2.ImgIcon:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backing:setLeftRight(false, false, -22.930000, 22.930000)
		registerVal2.backing:setTopBottom(false, false, -28.170000, 28.170000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_3775_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -60.000000, 60.000000)
			arg0:setTopBottom(false, false, -59.500000, 60.500000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Texture1:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.Texture1:setTopBottom(false, false, -59.500000, 60.500000)
		registerVal2.Texture1:setAlpha(0.000000)
		registerVal2.Texture1:setScale(1.500000)
		__FUNC_3775_(registerVal6, {})
		local function __FUNC_39BC_(arg0, arg1)
			local function __FUNC_3B14_(arg0, arg1)
				local function __FUNC_3C8F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -60.000000, 60.000000)
					arg0:setTopBottom(false, false, -59.500000, 60.500000)
					arg0:setAlpha(0.000000)
					arg0:setZRot(0.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3C8F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C8F_)
			end

			if arg1.interrupted then
				__FUNC_3B14_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B14_)
		end

		registerVal7:completeAnimation()
		registerVal2.Texture2:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.Texture2:setTopBottom(false, false, -59.500000, 60.500000)
		registerVal2.Texture2:setAlpha(0.000000)
		registerVal2.Texture2:setZRot(0.000000)
		registerVal2.Texture2:setScale(1.000000)
		__FUNC_39BC_(registerVal7, {})
		local function __FUNC_3EF1_(arg0, arg1)
			local function __FUNC_406B_(arg0, arg1)
				local function __FUNC_41E3_(arg0, arg1)
					local function __FUNC_4338_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -34.500000, 34.500000)
						arg0:setTopBottom(false, false, -34.500000, 34.500000)
						arg0:setAlpha(0.000000)
						arg0:setZoom(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4338_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4338_)
				end

				if arg1.interrupted then
					__FUNC_41E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41E3_)
			end

			if arg1.interrupted then
				__FUNC_406B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_406B_)
		end

		registerVal8:completeAnimation()
		registerVal2.Card1:setLeftRight(false, false, -34.500000, 34.500000)
		registerVal2.Card1:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.Card1:setAlpha(1.000000)
		registerVal2.Card1:setZoom(0.000000)
		__FUNC_3EF1_(registerVal8, {})
		local function __FUNC_4570_(arg0, arg1)
			local function __FUNC_4746_(arg0, arg1)
				local function __FUNC_48F7_(arg0, arg1)
					local function __FUNC_4ACA_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -34.500000, 34.500000)
						arg0:setTopBottom(false, false, -34.500000, 34.500000)
						arg0:setAlpha(0.000000)
						arg0:setXRot(-15.000000)
						arg0:setYRot(140.000000)
						arg0:setZoom(0.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4ACA_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -34.500000, 34.500000)
					arg0:setAlpha(0.890000)
					arg0:setScale(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4ACA_)
				end

				if arg1.interrupted then
					__FUNC_48F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -34.800000, 34.200000)
				arg0:setScale(1.090000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48F7_)
			end

			if arg1.interrupted then
				__FUNC_4746_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -36.400000, 32.600000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.570000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4746_)
		end

		registerVal9:completeAnimation()
		registerVal2.CardBack:setLeftRight(false, false, -36.500000, 32.500000)
		registerVal2.CardBack:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.CardBack:setAlpha(0.000000)
		registerVal2.CardBack:setXRot(-15.000000)
		registerVal2.CardBack:setYRot(140.000000)
		registerVal2.CardBack:setZoom(0.000000)
		registerVal2.CardBack:setScale(1.600000)
		__FUNC_4570_(registerVal9, {})
		local function __FUNC_4D67_(arg0, arg1)
			local function __FUNC_4F17_(arg0, arg1)
				local function __FUNC_506C_(arg0, arg1)
					local function __FUNC_51C4_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -34.500000, 34.500000)
						arg0:setTopBottom(false, false, -34.500000, 34.500000)
						arg0:setAlpha(0.000000)
						arg0:setXRot(-15.000000)
						arg0:setYRot(140.000000)
						arg0:setZoom(0.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_51C4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51C4_)
				end

				if arg1.interrupted then
					__FUNC_506C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_506C_)
			end

			if arg1.interrupted then
				__FUNC_4F17_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -34.500000, 34.500000)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F17_)
		end

		registerVal10:completeAnimation()
		registerVal2.CardFront:setLeftRight(false, false, -36.500000, 32.500000)
		registerVal2.CardFront:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.CardFront:setAlpha(1.000000)
		registerVal2.CardFront:setXRot(-15.000000)
		registerVal2.CardFront:setYRot(140.000000)
		registerVal2.CardFront:setZoom(0.000000)
		registerVal2.CardFront:setScale(1.600000)
		__FUNC_4D67_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Card2b:setLeftRight(false, false, -9.000000, 60.000000)
		registerVal2.Card2b:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_5463_(arg0, arg1)
			local function __FUNC_55B8_(arg0, arg1)
				local function __FUNC_5733_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -60.000000, 60.000000)
					arg0:setTopBottom(false, false, -53.500000, 54.500000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5733_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5733_)
			end

			if arg1.interrupted then
				__FUNC_55B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55B8_)
		end

		registerVal12:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_5463_(registerVal12, {})
		local function __FUNC_5955_(arg0, arg1)
			local function __FUNC_5AAC_(arg0, arg1)
				local function __FUNC_5C27_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -60.000000, 60.000000)
					arg0:setTopBottom(false, false, -53.500000, 54.500000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5C27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C27_)
			end

			if arg1.interrupted then
				__FUNC_5AAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AAC_)
		end

		registerVal13:completeAnimation()
		registerVal2.HeroBackgroundGlowImage0:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage0:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage0:setAlpha(0.000000)
		__FUNC_5955_(registerVal13, {})
		local function __FUNC_5E49_(arg0, arg1)
			local function __FUNC_5FA0_(arg0, arg1)
				local function __FUNC_611B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 4.000000, -4.000000)
					arg0:setTopBottom(true, true, 4.000000, -4.000000)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_611B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_611B_)
			end

			if arg1.interrupted then
				__FUNC_5FA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FA0_)
		end

		registerVal14:completeAnimation()
		registerVal2.Glow:setLeftRight(true, true, 4.000000, -4.000000)
		registerVal2.Glow:setTopBottom(true, true, 4.000000, -4.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(0.700000)
		__FUNC_5E49_(registerVal14, {})
		local function __FUNC_6356_(arg0, arg1)
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

		registerVal15:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
		registerVal15:setAlpha(0.000000)
		registerVal15:registerEventHandler("transition_complete_keyframe", __FUNC_6356_)
		local function __FUNC_6509_(arg0, arg1)
			local function __FUNC_6660_(arg0, arg1)
				local function __FUNC_67DB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -40.410000, 162.410000)
					arg0:setTopBottom(true, false, -35.680000, 156.680000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_67DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67DB_)
			end

			if arg1.interrupted then
				__FUNC_6660_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6660_)
		end

		registerVal16:completeAnimation()
		registerVal2.GlowOrangeOver:setLeftRight(true, false, -40.410000, 162.410000)
		registerVal2.GlowOrangeOver:setTopBottom(true, false, -35.680000, 156.680000)
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		__FUNC_6509_(registerVal16, {})
	end

	registerVal18.NewClipName = __FUNC_2B3D_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_69FD_()
		registerVal2:setupElementClipCounter(14.000000)
		local function __FUNC_76AA_(arg0, arg1)
			local function __FUNC_7800_(arg0, arg1)
				local function __FUNC_797B_(arg0, arg1)
					local function __FUNC_7AF3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -43.000000, 45.000000)
						arg0:setTopBottom(false, false, -44.000000, 44.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_7AF3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AF3_)
				end

				if arg1.interrupted then
					__FUNC_797B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_797B_)
			end

			if arg1.interrupted then
				__FUNC_7800_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7800_)
		end

		registerVal3:completeAnimation()
		registerVal2.EdgeGlow:setLeftRight(false, false, -43.000000, 45.000000)
		registerVal2.EdgeGlow:setTopBottom(false, false, -44.000000, 44.000000)
		registerVal2.EdgeGlow:setAlpha(0.000000)
		__FUNC_76AA_(registerVal3, {})
		local function __FUNC_7D15_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 2.000000, -2.000000)
			arg0:setTopBottom(true, true, 2.000000, -2.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgIcon:setLeftRight(true, true, 2.000000, -2.000000)
		registerVal2.ImgIcon:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.ImgIcon:setAlpha(0.000000)
		registerVal2.ImgIcon:setScale(1.000000)
		__FUNC_7D15_(registerVal4, {})
		local function __FUNC_7F52_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -22.930000, 22.930000)
			arg0:setTopBottom(false, false, -28.170000, 28.170000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.backing:setLeftRight(false, false, -22.930000, 22.930000)
		registerVal2.backing:setTopBottom(false, false, -28.170000, 28.170000)
		registerVal2.backing:setAlpha(0.000000)
		__FUNC_7F52_(registerVal5, {})
		local function __FUNC_8175_(arg0, arg1)
			local function __FUNC_82CC_(arg0, arg1)
				local function __FUNC_846A_(arg0, arg1)
					local function __FUNC_8606_(arg0, arg1)
						local function __FUNC_877F_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -60.000000, 60.000000)
							arg0:setTopBottom(false, false, -59.500000, 60.500000)
							arg0:setAlpha(0.000000)
							arg0:setZRot(0.000000)
							arg0:setScale(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_877F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setScale(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_877F_)
					end

					if arg1.interrupted then
						__FUNC_8606_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8606_)
				end

				if arg1.interrupted then
					__FUNC_846A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:setScale(1.090000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_846A_)
			end

			if arg1.interrupted then
				__FUNC_82CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82CC_)
		end

		registerVal6:completeAnimation()
		registerVal2.Texture1:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.Texture1:setTopBottom(false, false, -59.500000, 60.500000)
		registerVal2.Texture1:setAlpha(0.000000)
		registerVal2.Texture1:setZRot(0.000000)
		registerVal2.Texture1:setScale(1.000000)
		__FUNC_8175_(registerVal6, {})
		local function __FUNC_89E1_(arg0, arg1)
			local function __FUNC_8B38_(arg0, arg1)
				local function __FUNC_8CB3_(arg0, arg1)
					local function __FUNC_8E70_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -60.000000, 60.000000)
						arg0:setTopBottom(false, false, -59.500000, 60.500000)
						arg0:setAlpha(0.000000)
						arg0:setZRot(90.000000)
						arg0:setScale(1.900000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_8E70_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setZRot(90.000000)
					arg0:setScale(1.900000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E70_)
				end

				if arg1.interrupted then
					__FUNC_8CB3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CB3_)
			end

			if arg1.interrupted then
				__FUNC_8B38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B38_)
		end

		registerVal7:completeAnimation()
		registerVal2.Texture2:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.Texture2:setTopBottom(false, false, -59.500000, 60.500000)
		registerVal2.Texture2:setAlpha(0.000000)
		registerVal2.Texture2:setZRot(0.000000)
		registerVal2.Texture2:setScale(1.000000)
		__FUNC_89E1_(registerVal7, {})
		local function __FUNC_90DA_(arg0, arg1)
			local function __FUNC_9253_(arg0, arg1)
				local function __FUNC_93CB_(arg0, arg1)
					local function __FUNC_9543_(arg0, arg1)
						local function __FUNC_96BB_(arg0, arg1)
							local function __FUNC_9833_(arg0, arg1)
								local function __FUNC_9988_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(false, false, -34.500000, 34.500000)
									arg0:setTopBottom(false, false, -34.500000, 34.500000)
									arg0:setAlpha(0.500000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_9988_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9988_)
							end

							if arg1.interrupted then
								__FUNC_9833_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.500000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9833_)
						end

						if arg1.interrupted then
							__FUNC_96BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.190000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_96BB_)
					end

					if arg1.interrupted then
						__FUNC_9543_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9543_)
				end

				if arg1.interrupted then
					__FUNC_93CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.190000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93CB_)
			end

			if arg1.interrupted then
				__FUNC_9253_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9253_)
		end

		registerVal8:completeAnimation()
		registerVal2.Card1:setLeftRight(false, false, -34.500000, 34.500000)
		registerVal2.Card1:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.Card1:setAlpha(1.000000)
		__FUNC_90DA_(registerVal8, {})
		local function __FUNC_9BA3_(arg0, arg1)
			local function __FUNC_9CF8_(arg0, arg1)
				local function __FUNC_9E73_(arg0, arg1)
					local function __FUNC_9FEB_(arg0, arg1)
						local function __FUNC_A163_(arg0, arg1)
							local function __FUNC_A2DB_(arg0, arg1)
								local function __FUNC_A4CF_(arg0, arg1)
									local function __FUNC_A6C3_(arg0, arg1)
										local function __FUNC_A8DA_(arg0, arg1)
											local function __FUNC_AACF_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(false, false, -36.500000, 32.500000)
												arg0:setTopBottom(false, false, -34.500000, 34.500000)
												arg0:setAlpha(0.000000)
												arg0:setXRot(-15.000000)
												arg0:setYRot(140.000000)
												arg0:setScale(1.600000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_AACF_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(false, false, -36.500000, 32.500000)
											arg0:setXRot(-15.000000)
											arg0:setYRot(140.000000)
											arg0:setScale(1.600000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AACF_)
										end

										if arg1.interrupted then
											__FUNC_A8DA_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(false, false, -59.950000, 9.050000)
										arg0:setAlpha(0.000000)
										arg0:setXRot(-13.000000)
										arg0:setYRot(98.790000)
										arg0:setScale(1.380000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A8DA_)
									end

									if arg1.interrupted then
										__FUNC_A6C3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(false, false, -63.860000, 5.140000)
									arg0:setXRot(-12.660000)
									arg0:setYRot(91.920000)
									arg0:setScale(1.350000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A6C3_)
								end

								if arg1.interrupted then
									__FUNC_A4CF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(false, false, -79.500000, -10.500000)
								arg0:setXRot(-11.330000)
								arg0:setYRot(64.440000)
								arg0:setScale(1.200000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A4CF_)
							end

							if arg1.interrupted then
								__FUNC_A2DB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2DB_)
						end

						if arg1.interrupted then
							__FUNC_A163_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A163_)
					end

					if arg1.interrupted then
						__FUNC_9FEB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FEB_)
				end

				if arg1.interrupted then
					__FUNC_9E73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E73_)
			end

			if arg1.interrupted then
				__FUNC_9CF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CF8_)
		end

		registerVal9:completeAnimation()
		registerVal2.CardBack:setLeftRight(false, false, -34.500000, 34.500000)
		registerVal2.CardBack:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.CardBack:setAlpha(1.000000)
		registerVal2.CardBack:setXRot(15.000000)
		registerVal2.CardBack:setYRot(-40.000000)
		registerVal2.CardBack:setScale(1.000000)
		__FUNC_9BA3_(registerVal9, {})
		local function __FUNC_AD58_(arg0, arg1)
			local function __FUNC_AEB0_(arg0, arg1)
				local function __FUNC_B0A7_(arg0, arg1)
					local function __FUNC_B29B_(arg0, arg1)
						local function __FUNC_B48F_(arg0, arg1)
							local function __FUNC_B6A6_(arg0, arg1)
								local function __FUNC_B89B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(false, false, -36.500000, 32.500000)
									arg0:setTopBottom(false, false, -34.500000, 34.500000)
									arg0:setAlpha(1.000000)
									arg0:setXRot(-15.000000)
									arg0:setYRot(140.000000)
									arg0:setZRot(0.000000)
									arg0:setZoom(0.000000)
									arg0:setScale(1.600000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_B89B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(false, false, -36.500000, 32.500000)
								arg0:setXRot(-15.000000)
								arg0:setYRot(140.000000)
								arg0:setScale(1.600000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B89B_)
							end

							if arg1.interrupted then
								__FUNC_B6A6_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(false, false, -61.910000, 7.090000)
							arg0:setAlpha(1.000000)
							arg0:setXRot(-12.830000)
							arg0:setYRot(95.350000)
							arg0:setScale(1.360000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6A6_)
						end

						if arg1.interrupted then
							__FUNC_B48F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, false, -63.860000, 5.140000)
						arg0:setXRot(-12.660000)
						arg0:setYRot(91.920000)
						arg0:setScale(1.340000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B48F_)
					end

					if arg1.interrupted then
						__FUNC_B29B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -79.500000, -10.500000)
					arg0:setXRot(-11.330000)
					arg0:setYRot(64.440000)
					arg0:setScale(1.190000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B29B_)
				end

				if arg1.interrupted then
					__FUNC_B0A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -52.500000, 16.500000)
				arg0:setXRot(-13.530000)
				arg0:setYRot(109.780000)
				arg0:setScale(1.080000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0A7_)
			end

			if arg1.interrupted then
				__FUNC_AEB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AEB0_)
		end

		registerVal10:completeAnimation()
		registerVal2.CardFront:setLeftRight(false, false, -34.500000, 34.500000)
		registerVal2.CardFront:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.CardFront:setAlpha(0.000000)
		registerVal2.CardFront:setXRot(-15.000000)
		registerVal2.CardFront:setYRot(140.000000)
		registerVal2.CardFront:setZRot(0.000000)
		registerVal2.CardFront:setZoom(0.000000)
		registerVal2.CardFront:setScale(1.000000)
		__FUNC_AD58_(registerVal10, {})
		local function __FUNC_BB63_(arg0, arg1)
			local function __FUNC_BCDB_(arg0, arg1)
				local function __FUNC_BE8B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -35.320000, 33.680000)
					arg0:setTopBottom(false, false, -34.500000, 34.500000)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.800000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_BE8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -36.320000, 32.680000)
				arg0:setAlpha(0.850000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE8B_)
			end

			if arg1.interrupted then
				__FUNC_BCDB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCDB_)
		end

		registerVal11:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setLeftRight(false, false, -36.500000, 32.500000)
		registerVal11:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal11:setAlpha(0.000000)
		registerVal11:setScale(1.600000)
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_BB63_)
		local function __FUNC_C0D0_(arg0, arg1)
			local function __FUNC_C228_(arg0, arg1)
				local function __FUNC_C3A3_(arg0, arg1)
					local function __FUNC_C51B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -60.000000, 60.000000)
						arg0:setTopBottom(false, false, -53.500000, 54.500000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C51B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C51B_)
				end

				if arg1.interrupted then
					__FUNC_C3A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C3A3_)
			end

			if arg1.interrupted then
				__FUNC_C228_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C228_)
		end

		registerVal12:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_C0D0_(registerVal12, {})
		local function __FUNC_C73D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -60.000000, 60.000000)
			arg0:setTopBottom(false, false, -53.500000, 54.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.HeroBackgroundGlowImage0:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage0:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage0:setAlpha(0.000000)
		__FUNC_C73D_(registerVal13, {})
		local function __FUNC_C961_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 4.000000, -4.000000)
			arg0:setTopBottom(true, true, 4.000000, -4.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Glow:setLeftRight(true, true, 4.000000, -4.000000)
		registerVal2.Glow:setTopBottom(true, true, 4.000000, -4.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_C961_(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityRouletteOverlayWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_CB7B_(arg0, arg1)
			local function __FUNC_CCF3_(arg0, arg1)
				local function __FUNC_CE6B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -40.410000, 162.410000)
					arg0:setTopBottom(true, false, -35.680000, 156.680000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_CE6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE6B_)
			end

			if arg1.interrupted then
				__FUNC_CCF3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CCF3_)
		end

		registerVal16:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
		registerVal16:setLeftRight(true, false, -40.410000, 162.410000)
		registerVal16:setTopBottom(true, false, -35.680000, 156.680000)
		registerVal16:setAlpha(0.000000)
		registerVal16:registerEventHandler("transition_complete_keyframe", __FUNC_CB7B_)
	end

	registerVal18.DefaultClip = __FUNC_69FD_
	local function __FUNC_D08D_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.EdgeGlow:setLeftRight(false, false, -43.000000, 45.000000)
		registerVal2.EdgeGlow:setTopBottom(false, false, -44.000000, 44.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImgIcon:setLeftRight(true, true, 2.000000, -2.000000)
		registerVal2.ImgIcon:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backing:setLeftRight(false, false, -22.930000, 22.930000)
		registerVal2.backing:setTopBottom(false, false, -28.170000, 28.170000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_DCD5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -60.000000, 60.000000)
			arg0:setTopBottom(false, false, -59.500000, 60.500000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Texture1:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.Texture1:setTopBottom(false, false, -59.500000, 60.500000)
		registerVal2.Texture1:setAlpha(0.000000)
		registerVal2.Texture1:setScale(1.500000)
		__FUNC_DCD5_(registerVal6, {})
		local function __FUNC_DF1C_(arg0, arg1)
			local function __FUNC_E074_(arg0, arg1)
				local function __FUNC_E1CC_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -60.000000, 60.000000)
					arg0:setTopBottom(false, false, -59.500000, 60.500000)
					arg0:setAlpha(0.000000)
					arg0:setZRot(0.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_E1CC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E1CC_)
			end

			if arg1.interrupted then
				__FUNC_E074_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E074_)
		end

		registerVal7:completeAnimation()
		registerVal2.Texture2:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.Texture2:setTopBottom(false, false, -59.500000, 60.500000)
		registerVal2.Texture2:setAlpha(0.250000)
		registerVal2.Texture2:setZRot(0.000000)
		registerVal2.Texture2:setScale(1.000000)
		__FUNC_DF1C_(registerVal7, {})
		local function __FUNC_E431_(arg0, arg1)
			local function __FUNC_E588_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -34.500000, 34.500000)
				arg0:setTopBottom(false, false, -34.500000, 34.500000)
				arg0:setAlpha(0.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E588_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E588_)
		end

		registerVal8:completeAnimation()
		registerVal2.Card1:setLeftRight(false, false, -34.500000, 34.500000)
		registerVal2.Card1:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.Card1:setAlpha(0.100000)
		registerVal2.Card1:setZoom(0.000000)
		__FUNC_E431_(registerVal8, {})
		local function __FUNC_E7C0_(arg0, arg1)
			local function __FUNC_E918_(arg0, arg1)
				local function __FUNC_EACB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -34.500000, 34.500000)
					arg0:setTopBottom(false, false, -34.500000, 34.500000)
					arg0:setAlpha(0.000000)
					arg0:setXRot(-15.000000)
					arg0:setYRot(140.000000)
					arg0:setZoom(0.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_EACB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -34.500000, 34.500000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EACB_)
			end

			if arg1.interrupted then
				__FUNC_E918_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E918_)
		end

		registerVal9:completeAnimation()
		registerVal2.CardBack:setLeftRight(false, false, -36.500000, 32.500000)
		registerVal2.CardBack:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.CardBack:setAlpha(0.000000)
		registerVal2.CardBack:setXRot(-15.000000)
		registerVal2.CardBack:setYRot(140.000000)
		registerVal2.CardBack:setZoom(0.000000)
		registerVal2.CardBack:setScale(1.600000)
		__FUNC_E7C0_(registerVal9, {})
		local function __FUNC_ED67_(arg0, arg1)
			local function __FUNC_EEDF_(arg0, arg1)
				local function __FUNC_F0B2_(arg0, arg1)
					local function __FUNC_F208_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -34.500000, 34.500000)
						arg0:setTopBottom(false, false, -34.500000, 34.500000)
						arg0:setAlpha(0.000000)
						arg0:setZoom(0.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_F208_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F208_)
				end

				if arg1.interrupted then
					__FUNC_F0B2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -34.500000, 34.500000)
				arg0:setAlpha(0.000000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F0B2_)
			end

			if arg1.interrupted then
				__FUNC_EEDF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.740000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EEDF_)
		end

		registerVal10:completeAnimation()
		registerVal2.CardFront:setLeftRight(false, false, -36.500000, 32.500000)
		registerVal2.CardFront:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.CardFront:setAlpha(1.000000)
		registerVal2.CardFront:setZoom(0.000000)
		registerVal2.CardFront:setScale(1.600000)
		__FUNC_ED67_(registerVal10, {})
		local function __FUNC_F463_(arg0, arg1)
			local function __FUNC_F5F0_(arg0, arg1)
				local function __FUNC_F7A3_(arg0, arg1)
					local function __FUNC_F91B_(arg0, arg1)
						local function __FUNC_FAB6_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -34.500000, 34.500000)
							arg0:setTopBottom(false, false, -34.500000, 34.500000)
							arg0:setAlpha(0.000000)
							arg0:setScale(2.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_FAB6_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setScale(1.570000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FAB6_)
					end

					if arg1.interrupted then
						__FUNC_F91B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F91B_)
				end

				if arg1.interrupted then
					__FUNC_F7A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -34.500000, 34.500000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F7A3_)
			end

			if arg1.interrupted then
				__FUNC_F5F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -34.810000, 34.190000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F5F0_)
		end

		registerVal11:completeAnimation()
		registerVal2.Card2b:setLeftRight(false, false, -35.320000, 33.680000)
		registerVal2.Card2b:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.Card2b:setAlpha(0.000000)
		registerVal2.Card2b:setScale(2.400000)
		__FUNC_F463_(registerVal11, {})
		local function __FUNC_FCF2_(arg0, arg1)
			local function __FUNC_FE48_(arg0, arg1)
				local function __FUNC_FFC3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -60.000000, 60.000000)
					arg0:setTopBottom(false, false, -53.500000, 54.500000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_FFC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FFC3_)
			end

			if arg1.interrupted then
				__FUNC_FE48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE48_)
		end

		registerVal12:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_FCF2_(registerVal12, {})
		local function __FUNC_101E5_(arg0, arg1)
			local function __FUNC_1033C_(arg0, arg1)
				local function __FUNC_104B7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -60.000000, 60.000000)
					arg0:setTopBottom(false, false, -53.500000, 54.500000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_104B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_104B7_)
			end

			if arg1.interrupted then
				__FUNC_1033C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1033C_)
		end

		registerVal13:completeAnimation()
		registerVal2.HeroBackgroundGlowImage0:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage0:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage0:setAlpha(0.000000)
		__FUNC_101E5_(registerVal13, {})
		local function __FUNC_106D9_(arg0, arg1)
			local function __FUNC_10830_(arg0, arg1)
				local function __FUNC_109CE_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 4.000000, -4.000000)
					arg0:setTopBottom(true, true, 4.000000, -4.000000)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_109CE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:setScale(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_109CE_)
			end

			if arg1.interrupted then
				__FUNC_10830_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10830_)
		end

		registerVal14:completeAnimation()
		registerVal2.Glow:setLeftRight(true, true, 4.000000, -4.000000)
		registerVal2.Glow:setTopBottom(true, true, 4.000000, -4.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(0.400000)
		__FUNC_106D9_(registerVal14, {})
		local function __FUNC_10C0A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
		registerVal15:setAlpha(0.000000)
		registerVal15:registerEventHandler("transition_complete_keyframe", __FUNC_10C0A_)
		local function __FUNC_10DBD_(arg0, arg1)
			local function __FUNC_10F14_(arg0, arg1)
				local function __FUNC_1108F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -40.410000, 162.410000)
					arg0:setTopBottom(true, false, -35.680000, 156.680000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1108F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1108F_)
			end

			if arg1.interrupted then
				__FUNC_10F14_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10F14_)
		end

		registerVal16:completeAnimation()
		registerVal2.GlowOrangeOver:setLeftRight(true, false, -40.410000, 162.410000)
		registerVal2.GlowOrangeOver:setTopBottom(true, false, -35.680000, 156.680000)
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		__FUNC_10DBD_(registerVal16, {})
	end

	registerVal18.PrerollState = __FUNC_D08D_
	registerVal17.Preroll = registerVal18
	registerVal18 = {}
	local function __FUNC_112B1_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.EdgeGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImgIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Texture1:setAlpha(0.000000)
		registerVal2.Texture1:setScale(1.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Texture2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Card1:setRGB(0.620000, 0.960000, 1.000000)
		registerVal2.Card1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CardBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.CardFront:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.HeroBackgroundGlowImage0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityRouletteOverlayWidget0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_112B1_
	registerVal17.PrerollState = registerVal18
	registerVal18 = {}
	local function __FUNC_1181C_()
		registerVal2:setupElementClipCounter(14.000000)
		local function __FUNC_12433_(arg0, arg1)
			local function __FUNC_12588_(arg0, arg1)
				local function __FUNC_12703_(arg0, arg1)
					local function __FUNC_1287B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -43.000000, 45.000000)
						arg0:setTopBottom(false, false, -44.000000, 44.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1287B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1287B_)
				end

				if arg1.interrupted then
					__FUNC_12703_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12703_)
			end

			if arg1.interrupted then
				__FUNC_12588_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12588_)
		end

		registerVal3:completeAnimation()
		registerVal2.EdgeGlow:setLeftRight(false, false, -43.000000, 45.000000)
		registerVal2.EdgeGlow:setTopBottom(false, false, -44.000000, 44.000000)
		registerVal2.EdgeGlow:setAlpha(0.000000)
		__FUNC_12433_(registerVal3, {})
		local function __FUNC_12A9D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 2.000000, -2.000000)
			arg0:setTopBottom(true, true, 2.000000, -2.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgIcon:setLeftRight(true, true, 2.000000, -2.000000)
		registerVal2.ImgIcon:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.ImgIcon:setAlpha(0.000000)
		__FUNC_12A9D_(registerVal4, {})
		local function __FUNC_12CB7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -22.930000, 22.930000)
			arg0:setTopBottom(false, false, -28.170000, 28.170000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.backing:setLeftRight(false, false, -22.930000, 22.930000)
		registerVal2.backing:setTopBottom(false, false, -28.170000, 28.170000)
		registerVal2.backing:setAlpha(0.000000)
		__FUNC_12CB7_(registerVal5, {})
		local function __FUNC_12ED9_(arg0, arg1)
			local function __FUNC_13030_(arg0, arg1)
				local function __FUNC_131CE_(arg0, arg1)
					local function __FUNC_1336A_(arg0, arg1)
						local function __FUNC_134E3_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -60.000000, 60.000000)
							arg0:setTopBottom(false, false, -59.500000, 60.500000)
							arg0:setAlpha(0.000000)
							arg0:setZRot(0.000000)
							arg0:setScale(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_134E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setScale(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_134E3_)
					end

					if arg1.interrupted then
						__FUNC_1336A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1336A_)
				end

				if arg1.interrupted then
					__FUNC_131CE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:setScale(1.090000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_131CE_)
			end

			if arg1.interrupted then
				__FUNC_13030_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13030_)
		end

		registerVal6:completeAnimation()
		registerVal2.Texture1:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.Texture1:setTopBottom(false, false, -59.500000, 60.500000)
		registerVal2.Texture1:setAlpha(0.000000)
		registerVal2.Texture1:setZRot(0.000000)
		registerVal2.Texture1:setScale(1.000000)
		__FUNC_12ED9_(registerVal6, {})
		local function __FUNC_13745_(arg0, arg1)
			local function __FUNC_1389C_(arg0, arg1)
				local function __FUNC_13A17_(arg0, arg1)
					local function __FUNC_13BD4_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -60.000000, 60.000000)
						arg0:setTopBottom(false, false, -59.500000, 60.500000)
						arg0:setAlpha(0.000000)
						arg0:setZRot(90.000000)
						arg0:setScale(1.900000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_13BD4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setZRot(90.000000)
					arg0:setScale(1.900000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13BD4_)
				end

				if arg1.interrupted then
					__FUNC_13A17_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A17_)
			end

			if arg1.interrupted then
				__FUNC_1389C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1389C_)
		end

		registerVal7:completeAnimation()
		registerVal2.Texture2:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.Texture2:setTopBottom(false, false, -59.500000, 60.500000)
		registerVal2.Texture2:setAlpha(0.000000)
		registerVal2.Texture2:setZRot(0.000000)
		registerVal2.Texture2:setScale(1.000000)
		__FUNC_13745_(registerVal7, {})
		local function __FUNC_13E3E_(arg0, arg1)
			local function __FUNC_13FB7_(arg0, arg1)
				local function __FUNC_1410C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -34.500000, 34.500000)
					arg0:setTopBottom(false, false, -34.500000, 34.500000)
					arg0:setAlpha(0.500000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1410C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1410C_)
			end

			if arg1.interrupted then
				__FUNC_13FB7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13FB7_)
		end

		registerVal8:completeAnimation()
		registerVal2.Card1:setLeftRight(false, false, -34.500000, 34.500000)
		registerVal2.Card1:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.Card1:setAlpha(0.000000)
		__FUNC_13E3E_(registerVal8, {})
		local function __FUNC_14327_(arg0, arg1)
			local function __FUNC_1449F_(arg0, arg1)
				local function __FUNC_14693_(arg0, arg1)
					local function __FUNC_14887_(arg0, arg1)
						local function __FUNC_14A9E_(arg0, arg1)
							local function __FUNC_14C93_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, -36.500000, 32.500000)
								arg0:setTopBottom(false, false, -34.500000, 34.500000)
								arg0:setAlpha(0.000000)
								arg0:setXRot(-15.000000)
								arg0:setYRot(140.000000)
								arg0:setScale(1.600000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_14C93_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(false, false, -36.500000, 32.500000)
							arg0:setXRot(-15.000000)
							arg0:setYRot(140.000000)
							arg0:setScale(1.600000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14C93_)
						end

						if arg1.interrupted then
							__FUNC_14A9E_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, false, -59.950000, 9.050000)
						arg0:setAlpha(0.000000)
						arg0:setXRot(-13.000000)
						arg0:setYRot(98.790000)
						arg0:setScale(1.380000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14A9E_)
					end

					if arg1.interrupted then
						__FUNC_14887_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -63.860000, 5.140000)
					arg0:setXRot(-12.660000)
					arg0:setYRot(91.920000)
					arg0:setScale(1.350000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14887_)
				end

				if arg1.interrupted then
					__FUNC_14693_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -79.500000, -10.500000)
				arg0:setXRot(-11.330000)
				arg0:setYRot(64.440000)
				arg0:setScale(1.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14693_)
			end

			if arg1.interrupted then
				__FUNC_1449F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1449F_)
		end

		registerVal9:completeAnimation()
		registerVal2.CardBack:setLeftRight(false, false, -34.500000, 34.500000)
		registerVal2.CardBack:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.CardBack:setAlpha(0.000000)
		registerVal2.CardBack:setXRot(15.000000)
		registerVal2.CardBack:setYRot(-40.000000)
		registerVal2.CardBack:setScale(1.000000)
		__FUNC_14327_(registerVal9, {})
		local function __FUNC_14F1C_(arg0, arg1)
			local function __FUNC_15113_(arg0, arg1)
				local function __FUNC_15307_(arg0, arg1)
					local function __FUNC_1551E_(arg0, arg1)
						local function __FUNC_15713_(arg0, arg1)
							local function __FUNC_158A0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(false, false, -36.500000, 32.500000)
								arg0:setTopBottom(false, false, -34.500000, 34.500000)
								arg0:setAlpha(1.000000)
								arg0:setXRot(-15.000000)
								arg0:setYRot(140.000000)
								arg0:setZRot(0.000000)
								arg0:setZoom(0.000000)
								arg0:setScale(1.600000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_158A0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(false, false, -36.500000, 32.500000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_158A0_)
						end

						if arg1.interrupted then
							__FUNC_15713_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(false, false, -41.660000, 27.340000)
						arg0:setXRot(-15.000000)
						arg0:setYRot(140.000000)
						arg0:setScale(1.600000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15713_)
					end

					if arg1.interrupted then
						__FUNC_1551E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -64.020000, 4.980000)
					arg0:setAlpha(1.000000)
					arg0:setXRot(-12.830000)
					arg0:setYRot(95.350000)
					arg0:setScale(1.360000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1551E_)
				end

				if arg1.interrupted then
					__FUNC_15307_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -65.740000, 3.260000)
				arg0:setXRot(-12.660000)
				arg0:setYRot(91.920000)
				arg0:setScale(1.340000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15307_)
			end

			if arg1.interrupted then
				__FUNC_15113_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -79.500000, -10.500000)
			arg0:setXRot(-11.330000)
			arg0:setYRot(64.440000)
			arg0:setScale(1.190000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15113_)
		end

		registerVal10:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setLeftRight(false, false, -34.500000, 34.500000)
		registerVal10:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal10:setAlpha(0.000000)
		registerVal10:setXRot(15.000000)
		registerVal10:setYRot(-40.000000)
		registerVal10:setZRot(0.000000)
		registerVal10:setZoom(0.000000)
		registerVal10:setScale(1.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_14F1C_)
		registerVal11:completeAnimation()
		registerVal2.Card2b:setLeftRight(false, false, -9.000000, 60.000000)
		registerVal2.Card2b:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_15B6B_(arg0, arg1)
			local function __FUNC_15CC0_(arg0, arg1)
				local function __FUNC_15E3B_(arg0, arg1)
					local function __FUNC_15FB3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -60.000000, 60.000000)
						arg0:setTopBottom(false, false, -53.500000, 54.500000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_15FB3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15FB3_)
				end

				if arg1.interrupted then
					__FUNC_15E3B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15E3B_)
			end

			if arg1.interrupted then
				__FUNC_15CC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15CC0_)
		end

		registerVal12:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_15B6B_(registerVal12, {})
		local function __FUNC_161D5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -60.000000, 60.000000)
			arg0:setTopBottom(false, false, -53.500000, 54.500000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.HeroBackgroundGlowImage0:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage0:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage0:setAlpha(0.000000)
		__FUNC_161D5_(registerVal13, {})
		local function __FUNC_163F9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 4.000000, -4.000000)
			arg0:setTopBottom(true, true, 4.000000, -4.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Glow:setLeftRight(true, true, 4.000000, -4.000000)
		registerVal2.Glow:setTopBottom(true, true, 4.000000, -4.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_163F9_(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityRouletteOverlayWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_16613_(arg0, arg1)
			local function __FUNC_1678B_(arg0, arg1)
				local function __FUNC_16903_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -40.410000, 162.410000)
					arg0:setTopBottom(true, false, -35.680000, 156.680000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_16903_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16903_)
			end

			if arg1.interrupted then
				__FUNC_1678B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1678B_)
		end

		registerVal16:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
		registerVal16:setLeftRight(true, false, -40.410000, 162.410000)
		registerVal16:setTopBottom(true, false, -35.680000, 156.680000)
		registerVal16:setAlpha(0.000000)
		registerVal16:registerEventHandler("transition_complete_keyframe", __FUNC_16613_)
	end

	registerVal18.DefaultClip = __FUNC_1181C_
	local function __FUNC_16B25_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.EdgeGlow:setLeftRight(false, false, -43.000000, 45.000000)
		registerVal2.EdgeGlow:setTopBottom(false, false, -44.000000, 44.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImgIcon:setLeftRight(true, true, 2.000000, -2.000000)
		registerVal2.ImgIcon:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.backing:setLeftRight(false, false, -22.930000, 22.930000)
		registerVal2.backing:setTopBottom(false, false, -28.170000, 28.170000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_176DF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -60.000000, 60.000000)
			arg0:setTopBottom(false, false, -59.500000, 60.500000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Texture1:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.Texture1:setTopBottom(false, false, -59.500000, 60.500000)
		registerVal2.Texture1:setAlpha(0.000000)
		registerVal2.Texture1:setScale(1.500000)
		__FUNC_176DF_(registerVal6, {})
		local function __FUNC_17924_(arg0, arg1)
			local function __FUNC_17A7C_(arg0, arg1)
				local function __FUNC_17BD4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -60.000000, 60.000000)
					arg0:setTopBottom(false, false, -59.500000, 60.500000)
					arg0:setAlpha(0.000000)
					arg0:setZRot(0.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_17BD4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17BD4_)
			end

			if arg1.interrupted then
				__FUNC_17A7C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17A7C_)
		end

		registerVal7:completeAnimation()
		registerVal2.Texture2:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.Texture2:setTopBottom(false, false, -59.500000, 60.500000)
		registerVal2.Texture2:setAlpha(0.250000)
		registerVal2.Texture2:setZRot(0.000000)
		registerVal2.Texture2:setScale(1.000000)
		__FUNC_17924_(registerVal7, {})
		local function __FUNC_17E39_(arg0, arg1)
			local function __FUNC_17F90_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -34.500000, 34.500000)
				arg0:setTopBottom(false, false, -34.500000, 34.500000)
				arg0:setAlpha(0.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_17F90_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17F90_)
		end

		registerVal8:completeAnimation()
		registerVal2.Card1:setLeftRight(false, false, -34.500000, 34.500000)
		registerVal2.Card1:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.Card1:setAlpha(0.100000)
		registerVal2.Card1:setZoom(0.000000)
		__FUNC_17E39_(registerVal8, {})
		local function __FUNC_181C8_(arg0, arg1)
			local function __FUNC_18320_(arg0, arg1)
				local function __FUNC_184D3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -34.500000, 34.500000)
					arg0:setTopBottom(false, false, -34.500000, 34.500000)
					arg0:setAlpha(0.000000)
					arg0:setXRot(-15.000000)
					arg0:setYRot(140.000000)
					arg0:setZoom(0.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_184D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -34.500000, 34.500000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_184D3_)
			end

			if arg1.interrupted then
				__FUNC_18320_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18320_)
		end

		registerVal9:completeAnimation()
		registerVal2.CardBack:setLeftRight(false, false, -36.500000, 32.500000)
		registerVal2.CardBack:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.CardBack:setAlpha(0.000000)
		registerVal2.CardBack:setXRot(-15.000000)
		registerVal2.CardBack:setYRot(140.000000)
		registerVal2.CardBack:setZoom(0.000000)
		registerVal2.CardBack:setScale(1.600000)
		__FUNC_181C8_(registerVal9, {})
		local function __FUNC_1876F_(arg0, arg1)
			local function __FUNC_188E7_(arg0, arg1)
				local function __FUNC_18ABA_(arg0, arg1)
					local function __FUNC_18C10_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -34.500000, 34.500000)
						arg0:setTopBottom(false, false, -34.500000, 34.500000)
						arg0:setAlpha(0.000000)
						arg0:setZoom(0.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_18C10_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18C10_)
				end

				if arg1.interrupted then
					__FUNC_18ABA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -34.500000, 34.500000)
				arg0:setAlpha(0.000000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18ABA_)
			end

			if arg1.interrupted then
				__FUNC_188E7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.740000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_188E7_)
		end

		registerVal10:completeAnimation()
		registerVal2.CardFront:setLeftRight(false, false, -36.500000, 32.500000)
		registerVal2.CardFront:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.CardFront:setAlpha(1.000000)
		registerVal2.CardFront:setZoom(0.000000)
		registerVal2.CardFront:setScale(1.600000)
		__FUNC_1876F_(registerVal10, {})
		local function __FUNC_18E6B_(arg0, arg1)
			local function __FUNC_18FF8_(arg0, arg1)
				local function __FUNC_191AB_(arg0, arg1)
					local function __FUNC_19323_(arg0, arg1)
						local function __FUNC_194BE_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -34.500000, 34.500000)
							arg0:setTopBottom(false, false, -34.500000, 34.500000)
							arg0:setAlpha(0.000000)
							arg0:setScale(2.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_194BE_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setScale(1.570000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_194BE_)
					end

					if arg1.interrupted then
						__FUNC_19323_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19323_)
				end

				if arg1.interrupted then
					__FUNC_191AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -34.500000, 34.500000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_191AB_)
			end

			if arg1.interrupted then
				__FUNC_18FF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -34.810000, 34.190000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18FF8_)
		end

		registerVal11:completeAnimation()
		registerVal2.Card2b:setLeftRight(false, false, -35.320000, 33.680000)
		registerVal2.Card2b:setTopBottom(false, false, -34.500000, 34.500000)
		registerVal2.Card2b:setAlpha(0.000000)
		registerVal2.Card2b:setScale(2.400000)
		__FUNC_18E6B_(registerVal11, {})
		local function __FUNC_196FA_(arg0, arg1)
			local function __FUNC_19850_(arg0, arg1)
				local function __FUNC_199CB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -60.000000, 60.000000)
					arg0:setTopBottom(false, false, -53.500000, 54.500000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_199CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_199CB_)
			end

			if arg1.interrupted then
				__FUNC_19850_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19850_)
		end

		registerVal12:completeAnimation()
		registerVal2.HeroBackgroundGlowImage:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage:setAlpha(0.000000)
		__FUNC_196FA_(registerVal12, {})
		local function __FUNC_19BED_(arg0, arg1)
			local function __FUNC_19D44_(arg0, arg1)
				local function __FUNC_19EBF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -60.000000, 60.000000)
					arg0:setTopBottom(false, false, -53.500000, 54.500000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_19EBF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19EBF_)
			end

			if arg1.interrupted then
				__FUNC_19D44_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19D44_)
		end

		registerVal13:completeAnimation()
		registerVal2.HeroBackgroundGlowImage0:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.HeroBackgroundGlowImage0:setTopBottom(false, false, -53.500000, 54.500000)
		registerVal2.HeroBackgroundGlowImage0:setAlpha(0.000000)
		__FUNC_19BED_(registerVal13, {})
		local function __FUNC_1A0E1_(arg0, arg1)
			local function __FUNC_1A238_(arg0, arg1)
				local function __FUNC_1A3D6_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 4.000000, -4.000000)
					arg0:setTopBottom(true, true, 4.000000, -4.000000)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1A3D6_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:setScale(0.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A3D6_)
			end

			if arg1.interrupted then
				__FUNC_1A238_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A238_)
		end

		registerVal14:completeAnimation()
		registerVal2.Glow:setLeftRight(true, true, 4.000000, -4.000000)
		registerVal2.Glow:setTopBottom(true, true, 4.000000, -4.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(0.400000)
		__FUNC_1A0E1_(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.AmmoWidgetHeroAbilityRouletteOverlayWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_1A612_(arg0, arg1)
			local function __FUNC_1A768_(arg0, arg1)
				local function __FUNC_1A8E3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -40.410000, 162.410000)
					arg0:setTopBottom(true, false, -35.680000, 156.680000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1A8E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A8E3_)
			end

			if arg1.interrupted then
				__FUNC_1A768_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A768_)
		end

		registerVal16:completeAnimation()
		registerVal2.GlowOrangeOver:setLeftRight(true, false, -40.410000, 162.410000)
		registerVal2.GlowOrangeOver:setTopBottom(true, false, -35.680000, 156.680000)
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		__FUNC_1A612_(registerVal16, {})
	end

	registerVal18.DefaultState = __FUNC_16B25_
	registerVal17.Rolling = registerVal18
	registerVal2.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Preroll"
	local function __FUNC_1AB05_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "playerAbilities.playerGadget3.rouletteStatus", 1.000000)
	end

	registerVal20.condition = __FUNC_1AB05_
	local registerVal21 = {}
	registerVal21.stateName = "PrerollState"
	local function __FUNC_1ABA0_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "playerAbilities.playerGadget3.rouletteStatus", 3.000000)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_SCOPED)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
			if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
			else
			end
		end
		return true
	end

	registerVal21.condition = __FUNC_1ABA0_
	local registerVal22 = {}
	registerVal22.stateName = "Rolling"
	local function __FUNC_1B1D3_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "playerAbilities.playerGadget3.rouletteStatus", 2.000000)
	end

	registerVal22.condition = __FUNC_1B1D3_
	registerVal19 = {registerVal20, registerVal21, registerVal22}
	registerVal2:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "playerAbilities.playerGadget3.rouletteStatus")
	local function __FUNC_1B26C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.rouletteStatus"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1B26C_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_1B3AE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1B3AE_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE))
	local function __FUNC_1B536_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1B536_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	local function __FUNC_1B6C5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1B6C5_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_1B84F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1B84F_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_1B9D5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1B9D5_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_1BB6C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1BB6C_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_1BD03_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1BD03_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_1BE89_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1BE89_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_1C016_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1C016_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED))
	local function __FUNC_1C19C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1C19C_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_1C324_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1C324_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_1C4AD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1C4AD_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_1C63C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1C63C_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	local function __FUNC_1C7CA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1C7CA_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_1C962_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_1C962_)
	local function __FUNC_1CAE9_(arg0)
		arg0.ImgIcon:close()
		arg0.Glow:close()
		arg0.AmmoWidgetHeroAbilityRouletteOverlayWidget0:close()
		arg0.CardFront:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1CAE9_)
	if __FUNC_2C4_ then
		__FUNC_2C4_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AmmoWidget_HeroAbilityRouletteOverlay.new = __FUNC_4E7_
