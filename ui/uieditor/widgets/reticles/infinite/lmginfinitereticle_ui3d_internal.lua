-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.Infinite.lmgInfiniteReticle_AmmoBar")
require("ui.uieditor.widgets.Reticles.Infinite.lmgInfiniteReticle_Status")
require("ui.uieditor.widgets.Reticles.Infinite.lmgInfiniteReticle_Extras")
require("ui.uieditor.widgets.Reticles.Infinite.lmgInfiniteReticle_light")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.lmgInfiniteReticle_UI3D_Internal = registerVal1
function CoD.lmgInfiniteReticle_UI3D_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.lmgInfiniteReticle_UI3D_Internal)
	registerVal2.id = "lmgInfiniteReticle_UI3D_Internal"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 214.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 92.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -10.010000, 224.730000)
	registerVal3:setTopBottom(true, false, -11.380000, 106.420000)
	registerVal3:setAlpha(0.250000)
	registerVal3:setImage(RegisterImage("uie_t7_weapon_lmg_screen_bg"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Bg0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -11.010000, 222.730000)
	registerVal4:setTopBottom(true, false, -10.380000, 107.420000)
	registerVal4:setImage(RegisterImage("uie_t7_weapon_lmg_screen_bg_add"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Bg = registerVal4
	local registerVal5 = CoD.lmgInfiniteReticle_AmmoBar.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 44.770000, 169.770000)
	registerVal5:setTopBottom(true, false, 29.520000, 45.520000)
	local function __FUNC_175E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal12 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal13 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal14 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal5.ammoFull:setShaderVector(0.000000, ScaleVectorComponents(2.000000, 1.000000, 1.000000, 1.000000, GetAmmoWipePercentageClipFull(arg1, registerVal12, registerVal13, registerVal14, CoD.GetVectorComponentFromString(registerVal1, 4.000000))))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "CurrentWeapon", "ammoInClip", __FUNC_175E_)
	registerVal2:addElement(registerVal5)
	registerVal2.AmmoBarTop = registerVal5
	local registerVal6 = CoD.lmgInfiniteReticle_AmmoBar.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 44.770000, 169.770000)
	registerVal6:setTopBottom(true, false, 46.520000, 61.520000)
	local function __FUNC_193C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal17 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal18 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal19 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal6.ammoFull:setShaderVector(0.000000, ScaleVectorComponents(2.000000, 1.000000, 1.000000, 1.000000, AddToVector(-0.500000, 0.000000, 0.000000, 0.000000, GetAmmoWipePercentageClipFull(arg1, registerVal17, registerVal18, registerVal19, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "CurrentWeapon", "ammoInClip", __FUNC_193C_)
	registerVal2:addElement(registerVal6)
	registerVal2.AmmoBarBottom = registerVal6
	local registerVal7 = CoD.lmgInfiniteReticle_Status.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 41.000000, 176.000000)
	registerVal7:setTopBottom(true, false, 6.000000, 29.000000)
	registerVal7.Status:setText(Engine.Localize("MENU_STATUS_CAPS"))
	registerVal2:addElement(registerVal7)
	registerVal2.Status = registerVal7
	local registerVal8 = CoD.lmgInfiniteReticle_Extras.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 45.410000, 174.000000)
	registerVal8:setTopBottom(true, false, 64.890000, 82.580000)
	registerVal8:setScale(1.050000)
	registerVal2:addElement(registerVal8)
	registerVal2.lmgInfiniteReticleExtras = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 161.180000, 223.730000)
	registerVal9:setTopBottom(true, false, 3.000000, 89.000000)
	registerVal9:setYRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_weapon_lmg_lights_02"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.lightRight = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -11.010000, 51.530000)
	registerVal10:setTopBottom(true, false, 3.000000, 89.000000)
	registerVal10:setImage(RegisterImage("uie_t7_weapon_lmg_lights_02"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.lightsLeft = registerVal10
	local registerVal11 = CoD.lmgInfiniteReticle_light.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -118.010000, -55.470000)
	registerVal11:setTopBottom(false, false, -43.000000, 43.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.lmgInfiniteReticlelightLeft = registerVal11
	local registerVal12 = CoD.lmgInfiniteReticle_light.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, 54.180000, 116.730000)
	registerVal12:setTopBottom(false, false, -43.000000, 43.000000)
	registerVal12:setYRot(180.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.lmgInfiniteReticlelightRight = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, -11.010000, 222.730000)
	registerVal13:setTopBottom(true, false, -10.380000, 107.420000)
	registerVal13:setImage(RegisterImage("uie_t7_weapon_lmg_screen_bg_add2"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Bg10 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, -11.010000, 222.730000)
	registerVal14:setTopBottom(true, false, -10.380000, 107.420000)
	registerVal14:setImage(RegisterImage("uie_t7_weapon_lmg_screen_bg_add2"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Bg100 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, -11.010000, 51.530000)
	registerVal15:setTopBottom(true, false, 3.000000, 89.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_weapon_lmg_lights_02"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.lightsLeft0 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 161.180000, 223.730000)
	registerVal16:setTopBottom(true, false, 3.000000, 89.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setYRot(180.000000)
	registerVal16:setImage(RegisterImage("uie_t7_weapon_lmg_lights_02"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.lightRight0 = registerVal16
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_1B4E_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Bg0:setAlpha(0.380000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AmmoBarTop:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AmmoBarBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Status:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lmgInfiniteReticleExtras:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lightRight:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.lightsLeft:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lmgInfiniteReticlelightLeft:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lmgInfiniteReticlelightRight:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Bg10:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Bg100:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lightsLeft0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lightRight0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_1B4E_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_2130_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Bg0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bg0:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Bg:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.ammoFull:completeAnimation()
		registerVal2.AmmoBarTop:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AmmoBarTop:setAlpha(1.000000)
		registerVal2.AmmoBarTop.ammoFull:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal6.ammoFull:completeAnimation()
		registerVal2.AmmoBarBottom:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AmmoBarBottom:setAlpha(1.000000)
		registerVal2.AmmoBarBottom.ammoFull:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.FrameTop:completeAnimation()
		registerVal7.FrameBottom:completeAnimation()
		registerVal7.Status:completeAnimation()
		registerVal2.Status:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Status.FrameTop:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Status.FrameBottom:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Status.Status:setText(Engine.Localize("MPUI_LMG_PRINTING_CAPS"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lmgInfiniteReticleExtras:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lightRight:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.lightsLeft:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.lightsLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lmgInfiniteReticlelightLeft:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.lmgInfiniteReticlelightLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lmgInfiniteReticlelightRight:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.lmgInfiniteReticlelightRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Bg10:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bg10:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Bg100:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bg100:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lightsLeft0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lightRight0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_2130_
	registerVal17.LowAmmoPrinting = registerVal18
	registerVal18 = {}
	local function __FUNC_2A38_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Bg0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bg0:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Bg:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.ammoFull:completeAnimation()
		registerVal2.AmmoBarTop:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AmmoBarTop:setAlpha(1.000000)
		registerVal2.AmmoBarTop.ammoFull:setRGB(0.330000, 0.950000, 0.810000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal6.ammoFull:completeAnimation()
		registerVal2.AmmoBarBottom:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AmmoBarBottom:setAlpha(1.000000)
		registerVal2.AmmoBarBottom.ammoFull:setRGB(0.330000, 0.950000, 0.810000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.FrameTop:completeAnimation()
		registerVal7.FrameBottom:completeAnimation()
		registerVal7.Status:completeAnimation()
		registerVal2.Status:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Status.FrameTop:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Status.FrameBottom:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Status.Status:setText(Engine.Localize("MPUI_LMG_PRINTING_CAPS"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lmgInfiniteReticleExtras:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lightRight:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.lightRight:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.lightsLeft:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.lightsLeft:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lmgInfiniteReticlelightLeft:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.lmgInfiniteReticlelightLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lmgInfiniteReticlelightRight:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.lmgInfiniteReticlelightRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Bg10:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bg10:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Bg100:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lightsLeft0:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lightRight0:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_2A38_
	local function __FUNC_3354_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal5.ammoFull:completeAnimation()
		registerVal2.AmmoBarTop:setAlpha(1.000000)
		registerVal2.AmmoBarTop.ammoFull:setRGB(0.330000, 0.950000, 0.810000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal6.ammoFull:completeAnimation()
		registerVal2.AmmoBarBottom:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AmmoBarBottom.ammoFull:setRGB(0.330000, 0.950000, 0.810000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_36F2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.lightRight:setAlpha(0.500000)
		__FUNC_36F2_(registerVal9, {})
		local function __FUNC_38A5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.lightsLeft:setAlpha(0.500000)
		__FUNC_38A5_(registerVal10, {})
		local function __FUNC_3A59_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.lmgInfiniteReticlelightLeft:setAlpha(1.000000)
		__FUNC_3A59_(registerVal11, {})
		local function __FUNC_3C0D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.lmgInfiniteReticlelightRight:setAlpha(1.000000)
		__FUNC_3C0D_(registerVal12, {})
	end

	registerVal18.MagazineFull = __FUNC_3354_
	registerVal17.Printing = registerVal18
	registerVal18 = {}
	local function __FUNC_3DC1_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Bg0:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.Bg0:setAlpha(1.000000)
		registerVal2.Bg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Bg:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.Bg:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.ammoFull:completeAnimation()
		registerVal2.AmmoBarTop:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AmmoBarTop:setAlpha(1.000000)
		registerVal2.AmmoBarTop.ammoFull:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal6.ammoFull:completeAnimation()
		registerVal2.AmmoBarBottom:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AmmoBarBottom:setAlpha(1.000000)
		registerVal2.AmmoBarBottom.ammoFull:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.FrameTop:completeAnimation()
		registerVal7.FrameBottom:completeAnimation()
		registerVal7.Status:completeAnimation()
		registerVal2.Status:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.Status.FrameTop:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.Status.FrameBottom:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.Status.Status:setText(Engine.Localize("MPUI_LMG_MAGAZINE_EMPTY_CAPS"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lmgInfiniteReticleExtras:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.lmgInfiniteReticleExtras:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lightRight:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.lightRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.lightsLeft:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.lightsLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lmgInfiniteReticlelightLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lmgInfiniteReticlelightRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Bg10:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Bg100:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lightsLeft0:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.lightsLeft0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lightRight0:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.lightRight0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_3DC1_
	registerVal17.EmptyMagazine = registerVal18
	registerVal18 = {}
	local function __FUNC_4796_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Bg0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bg0:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Bg:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.ammoFull:completeAnimation()
		registerVal2.AmmoBarTop:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AmmoBarTop:setAlpha(1.000000)
		registerVal2.AmmoBarTop.ammoFull:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal6.ammoFull:completeAnimation()
		registerVal2.AmmoBarBottom:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AmmoBarBottom:setAlpha(1.000000)
		registerVal2.AmmoBarBottom.ammoFull:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.FrameTop:completeAnimation()
		registerVal7.FrameBottom:completeAnimation()
		registerVal7.Status:completeAnimation()
		registerVal2.Status:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Status.FrameTop:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Status.FrameBottom:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Status.Status:setText(Engine.Localize("MPUI_LMG_FIRING_CAPS"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.lmgInfiniteReticleExtras:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.lightRight:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.lightsLeft:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.lightsLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lmgInfiniteReticlelightLeft:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.lmgInfiniteReticlelightLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lmgInfiniteReticlelightRight:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.lmgInfiniteReticlelightRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Bg10:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bg10:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Bg100:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bg100:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.lightsLeft0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lightRight0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_4796_
	registerVal17.Last25 = registerVal18
	registerVal18 = {}
	local function __FUNC_509A_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal5:completeAnimation()
		registerVal5.ammoFull:completeAnimation()
		registerVal2.AmmoBarTop.ammoFull:setRGB(0.330000, 0.950000, 0.810000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal6.ammoFull:completeAnimation()
		registerVal2.AmmoBarBottom:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AmmoBarBottom.ammoFull:setRGB(0.330000, 0.950000, 0.810000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.Status:completeAnimation()
		registerVal2.Status.Status:setText(Engine.Localize("MPUI_LMG_FIRING_CAPS"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.lightRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.lightsLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lmgInfiniteReticlelightLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lmgInfiniteReticlelightRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.lightsLeft0:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lightRight0:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_509A_
	registerVal17.WeaponFiring = registerVal18
	registerVal18 = {}
	local function __FUNC_55BE_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal5:completeAnimation()
		registerVal5.ammoFull:completeAnimation()
		registerVal2.AmmoBarTop:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AmmoBarTop.ammoFull:setRGB(0.330000, 0.950000, 0.810000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal6.ammoFull:completeAnimation()
		registerVal2.AmmoBarBottom:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.AmmoBarBottom.ammoFull:setRGB(0.330000, 0.950000, 0.810000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal7.Status:completeAnimation()
		registerVal2.Status:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Status.Status:setText(Engine.Localize("MPUI_LMG_MAGAZINE_FULL_CAPS"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.lightRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.lightsLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.lmgInfiniteReticlelightLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.lmgInfiniteReticlelightRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal2.lightsLeft0:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.lightRight0:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_55BE_
	registerVal17.MagazineFull = registerVal18
	registerVal2.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "LowAmmoPrinting"
	local function __FUNC_5B31_(arg0, arg2, arg3)
		local registerVal3 = IsLowAmmoClip(arg1)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "lmgInfiniteState", Enum.LMGInfiniteState.LMG_INFINITE_STATE_PRINTING)
		end
		return registerVal3
	end

	registerVal20.condition = __FUNC_5B31_
	local registerVal21 = {}
	registerVal21.stateName = "Printing"
	local function __FUNC_5C47_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "lmgInfiniteState", Enum.LMGInfiniteState.LMG_INFINITE_STATE_PRINTING)
	end

	registerVal21.condition = __FUNC_5C47_
	local registerVal22 = {}
	registerVal22.stateName = "EmptyMagazine"
	local function __FUNC_5D30_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "lmgInfiniteState", Enum.LMGInfiniteState.LMG_INFINITE_STATE_EMPTY)
	end

	registerVal22.condition = __FUNC_5D30_
	local registerVal23 = {}
	registerVal23.stateName = "Last25"
	local function __FUNC_5E19_(arg0, arg2, arg3)
		return IsLowAmmoClip(arg1)
	end

	registerVal23.condition = __FUNC_5E19_
	local registerVal24 = {}
	registerVal24.stateName = "WeaponFiring"
	local function __FUNC_5E6B_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "lmgInfiniteState", Enum.LMGInfiniteState.LMG_INFINITE_STATE_FIRING)
	end

	registerVal24.condition = __FUNC_5E6B_
	local registerVal25 = {}
	registerVal25.stateName = "MagazineFull"
	local function __FUNC_5F52_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "lmgInfiniteState", Enum.LMGInfiniteState.LMG_INFINITE_STATE_FULL)
	end

	registerVal25.condition = __FUNC_5F52_
	registerVal19 = {registerVal20, registerVal21, registerVal22, registerVal23, registerVal24, registerVal25}
	registerVal2:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "currentWeapon.ammoStock")
	local function __FUNC_6038_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoStock"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_6038_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "currentWeapon.ammoInClip")
	local function __FUNC_6165_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.ammoInClip"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_6165_)
	local function __FUNC_6292_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lmgInfiniteState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "lmgInfiniteState", true, __FUNC_6292_)
	local function __FUNC_63B6_(arg0)
		arg0.AmmoBarTop:close()
		arg0.AmmoBarBottom:close()
		arg0.Status:close()
		arg0.lmgInfiniteReticleExtras:close()
		arg0.lmgInfiniteReticlelightLeft:close()
		arg0.lmgInfiniteReticlelightRight:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_63B6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

