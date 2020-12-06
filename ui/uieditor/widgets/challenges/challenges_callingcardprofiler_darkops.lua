-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_CallingCardProfiler_DarkOps = registerVal1
function CoD.Challenges_CallingCardProfiler_DarkOps.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_CallingCardProfiler_DarkOps)
	registerVal2.id = "Challenges_CallingCardProfiler_DarkOps"
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
	local function __FUNC_168F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(GetBackgroundByID(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "iconId", true, __FUNC_168F_)
	registerVal2:addElement(registerVal5)
	registerVal2.SelectedCardIcon = registerVal5
	local registerVal6 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -65.000000, 65.000000)
	registerVal6:setTopBottom(true, false, -14.000000, 106.000000)
	registerVal6.CardIconFrame:setScale(0.720000)
	local function __FUNC_1763_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_1763_)
	registerVal2:addElement(registerVal6)
	registerVal2.CallingCardsFrameWidget0 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 20.000000, 338.000000)
	registerVal7:setTopBottom(true, false, 141.000000, 161.000000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_17B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "description", true, __FUNC_17B2_)
	registerVal2:addElement(registerVal7)
	registerVal2.CardDescription = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -4.000000, 170.000000)
	registerVal8:setTopBottom(true, false, 187.000000, 361.000000)
	registerVal8:setImage(RegisterImage("uie_t7_icons_challenges_mp_darkops"))
	registerVal2:addElement(registerVal8)
	registerVal2.DarkOpsIcon = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 20.000000, 329.000000)
	registerVal9:setTopBottom(false, true, -124.000000, -90.000000)
	registerVal9:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_DARKOPS"))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.DarkOpsTitle = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, true, 20.000000, -24.000000)
	registerVal10:setTopBottom(false, true, -84.000000, -64.000000)
	registerVal10:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_DARKOPS_HINT"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.DarkOpsDescription = registerVal10
	local registerVal11 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 19.000000, 337.500000)
	registerVal11:setTopBottom(true, false, 103.000000, 137.000000)
	local function __FUNC_186A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "title", true, __FUNC_186A_)
	registerVal2:addElement(registerVal11)
	registerVal2.EmblemName = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal12:setTopBottom(true, false, 8.000000, 367.000000)
	registerVal12:setZRot(-90.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.featlineleft1 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 1.000000, 349.000000)
	registerVal13:setTopBottom(true, false, 32.500000, 62.400000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13:setAlpha(0.400000)
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal13:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal13)
	registerVal2.TitleBg = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal14:setTopBottom(true, false, -118.000000, 241.000000)
	registerVal14:setZRot(-90.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.featlineleft0 = registerVal14
	local registerVal15 = CoD.cac_lock.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 161.000000, 193.000000)
	registerVal15:setTopBottom(true, false, 31.950000, 63.950000)
	registerVal2:addElement(registerVal15)
	registerVal2.LockedIcon = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal16:setTopBottom(true, false, -147.000000, 212.000000)
	registerVal16:setZRot(-90.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.featlineleft000 = registerVal16
	local registerVal17 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal17:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal17:setTopBottom(true, false, 1.000000, 93.250000)
	registerVal2:addElement(registerVal17)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal17
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_1947_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CallingCardsFrameWidget0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal13:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.featlineleft0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.featlineleft000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_1947_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_1C82_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal2.SelectedCardIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CallingCardsFrameWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal13:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.featlineleft0:setLeftRight(true, false, 175.000000, 179.000000)
		registerVal2.featlineleft0:setTopBottom(true, false, -117.000000, 242.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_1C82_
	registerVal18.Locked = registerVal19
	registerVal2.clipsPerState = registerVal18
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Locked"
	local function __FUNC_1FDF_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isLocked")
	end

	registerVal21.condition = __FUNC_1FDF_
	registerVal20 = {registerVal21}
	registerVal2:mergeStateConditions(registerVal20)
	local function __FUNC_2050_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isLocked", true, __FUNC_2050_)
	local function __FUNC_216E_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.CallingCardsFrameWidget0:close()
		arg0.EmblemName:close()
		arg0.LockedIcon:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.SelectedCardIcon:close()
		arg0.CardDescription:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_216E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

