-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Challenges.Challenges_PercentCompleteWidget_MD")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_lock")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_CallingCardProfiler_Master = registerVal1
function CoD.Challenges_CallingCardProfiler_Master.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_CallingCardProfiler_Master)
	registerVal2.id = "Challenges_CallingCardProfiler_Master"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 480.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuframenoBG0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal4:setTopBottom(true, false, 171.000000, 530.000000)
	registerVal4:setZRot(-90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.featlineleft = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal5:setTopBottom(true, false, 54.000000, 413.000000)
	registerVal5:setZRot(-90.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.featlineleft1 = registerVal5
	local registerVal6 = CoD.Challenges_PercentCompleteWidget_MD.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 35.000000, 120.000000)
	registerVal6:setTopBottom(true, false, 248.500000, 333.500000)
	local function __FUNC_16DF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "percentComplete", true, __FUNC_16DF_)
	local function __FUNC_17C7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal6.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "percentComplete", true, __FUNC_17C7_)
	local function __FUNC_1947_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "percentComplete", true, __FUNC_1947_)
	registerVal2:addElement(registerVal6)
	registerVal2.PercentCompleteWidget = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 35.000000, 66.000000)
	registerVal7:setTopBottom(false, true, -82.500000, -51.500000)
	local function __FUNC_1A47_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "gameModeIcon", true, __FUNC_1A47_)
	registerVal2:addElement(registerVal7)
	registerVal2.GameModeIcon = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 73.000000, 325.000000)
	registerVal8:setTopBottom(false, true, -81.500000, -51.500000)
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setLetterSpacing(1.000000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1AF8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "gameModeName", true, __FUNC_1AF8_)
	registerVal2:addElement(registerVal8)
	registerVal2.GameModeText = registerVal8
	local registerVal9 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 19.000000, 337.500000)
	registerVal9:setTopBottom(true, false, 103.000000, 137.000000)
	local function __FUNC_1BB2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "title", true, __FUNC_1BB2_)
	registerVal2:addElement(registerVal9)
	registerVal2.EmblemName = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 20.000000, 338.000000)
	registerVal10:setTopBottom(true, false, 141.000000, 161.000000)
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setLetterSpacing(0.500000)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1C8F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "description", true, __FUNC_1C8F_)
	registerVal2:addElement(registerVal10)
	registerVal2.EmblemSubtitle = registerVal10
	local registerVal11 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, false, 1.000000, 92.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.BoxButtonLrgInactive = registerVal11
	local registerVal12 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, 0.000000, 0.000000)
	registerVal12:setTopBottom(false, false, -195.000000, -195.000000)
	registerVal12.CardIconFrame:setScale(0.720000)
	local function __FUNC_1D46_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_1D46_)
	registerVal2:addElement(registerVal12)
	registerVal2.CallingCardsFrameWidget = registerVal12
	local registerVal13 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, false, 1.000000, 93.250000)
	registerVal2:addElement(registerVal13)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 1.000000, 349.000000)
	registerVal14:setTopBottom(true, false, 32.500000, 62.400000)
	registerVal14:setRGB(0.000000, 0.000000, 0.000000)
	registerVal14:setAlpha(0.400000)
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal14:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal14)
	registerVal2.TitleBg = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal15:setTopBottom(true, false, -118.000000, 241.000000)
	registerVal15:setZRot(-90.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.featlineleft0 = registerVal15
	local registerVal16 = CoD.cac_lock.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 161.000000, 193.000000)
	registerVal16:setTopBottom(true, false, 31.950000, 63.950000)
	registerVal2:addElement(registerVal16)
	registerVal2.LockedIcon = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 175.000000, 179.000000)
	registerVal17:setTopBottom(true, false, -147.000000, 212.000000)
	registerVal17:setZRot(-90.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.featlineleft000 = registerVal17
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_1D96_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal13:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.featlineleft0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.featlineleft000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_1D96_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_2009_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal12:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.featlineleft0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.LockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.featlineleft000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_2009_
	registerVal18.Locked = registerVal19
	registerVal2.clipsPerState = registerVal18
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Locked"
	local function __FUNC_22EC_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isLocked")
	end

	registerVal21.condition = __FUNC_22EC_
	registerVal20 = {registerVal21}
	registerVal2:mergeStateConditions(registerVal20)
	local function __FUNC_2360_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isLocked", true, __FUNC_2360_)
	local function __FUNC_247E_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.PercentCompleteWidget:close()
		arg0.EmblemName:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.CallingCardsFrameWidget:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.LockedIcon:close()
		arg0.GameModeIcon:close()
		arg0.GameModeText:close()
		arg0.EmblemSubtitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_247E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

