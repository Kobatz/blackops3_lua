-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_CallingCardProfiler_ArenaVet = registerVal1
function CoD.Challenges_CallingCardProfiler_ArenaVet.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_CallingCardProfiler_ArenaVet)
	registerVal2.id = "Challenges_CallingCardProfiler_ArenaVet"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 484.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuframenoBG0 = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 92.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 3.000000, -2.000000)
	registerVal5:setTopBottom(true, false, 3.000000, 89.000000)
	local function __FUNC_19BB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(GetBackgroundByID(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "iconId", true, __FUNC_19BB_)
	registerVal2:addElement(registerVal5)
	registerVal2.SelectedCardIcon = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 20.000000, 338.000000)
	registerVal6:setTopBottom(true, false, 141.000000, 161.000000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1A8F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "description", true, __FUNC_1A8F_)
	registerVal2:addElement(registerVal6)
	registerVal2.CardDescription = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 19.000000, 147.000000)
	registerVal7:setTopBottom(true, false, 249.000000, 377.000000)
	registerVal7:setImage(RegisterImage("uie_t7_icons_challenges_mp_arena_seasonvet"))
	registerVal2:addElement(registerVal7)
	registerVal2.ArenaVetIcon = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 20.000000, 329.000000)
	registerVal8:setTopBottom(false, true, -124.000000, -90.000000)
	registerVal8:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_ARENAVET"))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.ArenaVetTitle = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, true, 20.000000, -24.000000)
	registerVal9:setTopBottom(false, true, -84.000000, -64.000000)
	registerVal9:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_ARENAVET_HINT"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.ArenaVetDescription = registerVal9
	local registerVal10 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 19.000000, 337.500000)
	registerVal10:setTopBottom(true, false, 103.000000, 137.000000)
	local function __FUNC_1B46_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "title", true, __FUNC_1B46_)
	registerVal2:addElement(registerVal10)
	registerVal2.EmblemName = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 20.500000, 327.000000)
	registerVal11:setTopBottom(true, false, 195.500000, 207.500000)
	registerVal11:setRGB(1.000000, 0.350000, 0.000000)
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal11:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1C23_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal11:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "statPercent", true, __FUNC_1C23_)
	registerVal2:addElement(registerVal11)
	registerVal2.ProgressBar = registerVal11
	local registerVal12 = CoD.Border.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 19.000000, -23.000000)
	registerVal12:setTopBottom(true, false, 195.500000, 207.500000)
	registerVal2:addElement(registerVal12)
	registerVal2.ProgressBarBorder = registerVal12
	local registerVal13 = LUI.UITightText.new()
	registerVal13:setLeftRight(true, false, 20.500000, 46.500000)
	registerVal13:setTopBottom(true, false, 216.500000, 236.500000)
	registerVal13:setTTF("fonts/default.ttf")
	local function __FUNC_1D78_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "statFractionText", true, __FUNC_1D78_)
	registerVal2:addElement(registerVal13)
	registerVal2.ProgressFraction = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal14:setTopBottom(true, false, 63.000000, 422.000000)
	registerVal14:setZRot(-90.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.featlineleft = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal15:setTopBottom(true, false, 8.000000, 367.000000)
	registerVal15:setZRot(-90.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.featlineleft1 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 1.000000, 349.000000)
	registerVal16:setTopBottom(true, false, 32.500000, 62.400000)
	registerVal16:setRGB(0.000000, 0.000000, 0.000000)
	registerVal16:setAlpha(0.400000)
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal16:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal16)
	registerVal2.TitleBg = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal17:setTopBottom(true, false, -118.000000, 241.000000)
	registerVal17:setZRot(-90.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.featlineleft0 = registerVal17
	local registerVal18 = CoD.cac_lock.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 161.000000, 193.000000)
	registerVal18:setTopBottom(true, false, 31.950000, 63.950000)
	registerVal2:addElement(registerVal18)
	registerVal2.LockedIcon = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal19:setTopBottom(true, false, -147.000000, 212.000000)
	registerVal19:setZRot(-90.000000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.featlineleft000 = registerVal19
	local registerVal20 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal20:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal20:setTopBottom(true, false, 1.000000, 93.250000)
	registerVal2:addElement(registerVal20)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal20
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_1E32_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal5:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal11:completeAnimation()
		registerVal2.ProgressBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ProgressBarBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ProgressFraction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.featlineleft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.featlineleft1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.featlineleft0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.featlineleft000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_1E32_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_22D3_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal5:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal11:completeAnimation()
		registerVal2.ProgressBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ProgressBarBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ProgressFraction:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.featlineleft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.featlineleft1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.featlineleft0:setLeftRight(true, false, 175.000000, 179.000000)
		registerVal2.featlineleft0:setTopBottom(true, false, -117.000000, 242.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.LockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal20:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_22D3_
	registerVal21.Locked = registerVal22
	registerVal22 = {}
	local function __FUNC_278F_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal5:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal11:completeAnimation()
		registerVal2.ProgressBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ProgressBarBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ProgressFraction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.featlineleft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.featlineleft1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.featlineleft0:setLeftRight(true, false, 175.000000, 179.000000)
		registerVal2.featlineleft0:setTopBottom(true, false, -117.000000, 242.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.LockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal20:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal22.DefaultClip = __FUNC_278F_
	registerVal21.Unavailable = registerVal22
	registerVal2.clipsPerState = registerVal21
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "Locked"
	local function __FUNC_2C50_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isLocked")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "hideProgress")
		end
		return (not registerVal3)
	end

	registerVal24.condition = __FUNC_2C50_
	local registerVal25 = {}
	registerVal25.stateName = "Unavailable"
	local function __FUNC_2CFA_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "hideProgress")
	end

	registerVal25.condition = __FUNC_2CFA_
	registerVal23 = {registerVal24, registerVal25}
	registerVal2:mergeStateConditions(registerVal23)
	local function __FUNC_2D70_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isLocked", true, __FUNC_2D70_)
	local function __FUNC_2E8E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideProgress"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "hideProgress", true, __FUNC_2E8E_)
	local function __FUNC_2FAE_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.EmblemName:close()
		arg0.ProgressBarBorder:close()
		arg0.LockedIcon:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.SelectedCardIcon:close()
		arg0.CardDescription:close()
		arg0.ProgressBar:close()
		arg0.ProgressFraction:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2FAE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

