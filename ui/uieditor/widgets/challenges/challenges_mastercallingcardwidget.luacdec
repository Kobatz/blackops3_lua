-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.Challenges.Challenges_PercentCompleteWidget_MD")
require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_MasterCallingCardWidget = registerVal1
function CoD.Challenges_MasterCallingCardWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_MasterCallingCardWidget)
	registerVal2.id = "Challenges_MasterCallingCardWidget"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 754.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 98.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuframenoBG0 = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -337.800000, -8.000000)
	registerVal4:setTopBottom(true, false, 6.000000, 91.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.Challenges_PercentCompleteWidget_MD.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 15.000000, 85.000000)
	registerVal5:setTopBottom(true, false, 14.000000, 84.000000)
	local function __FUNC_13D9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.percentCompleteCircle:setAlpha(HideIfNumEqualTo(0.000000, registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "percentComplete", true, __FUNC_13D9_)
	local function __FUNC_14C3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal5.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "percentComplete", true, __FUNC_14C3_)
	local function __FUNC_1643_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.percentText:setText(Engine.Localize(NumberAsPercentRounded(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "percentComplete", true, __FUNC_1643_)
	registerVal2:addElement(registerVal5)
	registerVal2.PercentCompleteWidget = registerVal5
	local registerVal6 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -173.000000, -173.000000)
	registerVal6:setTopBottom(true, false, 48.500000, 48.500000)
	registerVal6.CardIconFrame:setScale(0.680000)
	local function __FUNC_1743_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:subscribeToGlobalModel(arg1, "MasterCallingCard", nil, __FUNC_1743_)
	registerVal2:addElement(registerVal6)
	registerVal2.MasterCallingCardIcon = registerVal6
	local registerVal7 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -338.800000, -7.000000)
	registerVal7:setTopBottom(true, false, 6.000000, 91.500000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -336.800000, -9.000000)
	registerVal8:setTopBottom(true, false, 33.080000, 62.980000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.400000)
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal8:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal8)
	registerVal2.TitleBg = registerVal8
	local registerVal9 = CoD.cac_lock.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -181.800000, -151.350000)
	registerVal9:setTopBottom(true, false, 33.530000, 63.980000)
	registerVal2:addElement(registerVal9)
	registerVal2.LockedIcon = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -171.800000, -167.800000)
	registerVal10:setTopBottom(true, false, -136.430000, 203.580000)
	registerVal10:setAlpha(0.500000)
	registerVal10:setZRot(-90.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.featlineleft000 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -171.800000, -167.800000)
	registerVal11:setTopBottom(true, false, -106.430000, 233.580000)
	registerVal11:setAlpha(0.500000)
	registerVal11:setZRot(-90.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.featlineleft0000 = registerVal11
	local registerVal12 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 95.920000, 400.420000)
	registerVal12:setTopBottom(true, false, 14.000000, 40.000000)
	local function __FUNC_1792_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "title", true, __FUNC_1792_)
	registerVal2:addElement(registerVal12)
	registerVal2.EmblemName = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 94.920000, 400.420000)
	registerVal13:setTopBottom(true, false, 45.580000, 65.580000)
	registerVal13:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal13:setLetterSpacing(0.500000)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_186F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "description", true, __FUNC_186F_)
	registerVal2:addElement(registerVal13)
	registerVal2.EmblemSubtitle = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1926_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.MasterCallingCardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LockedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.featlineleft000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.featlineleft0000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal15.DefaultClip = __FUNC_1926_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_1C66_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal2.MasterCallingCardIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TitleBg:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.featlineleft000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.featlineleft0000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal15.DefaultClip = __FUNC_1C66_
	registerVal14.Locked = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Locked"
	local function __FUNC_1F4E_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isLocked")
	end

	registerVal17.condition = __FUNC_1F4E_
	registerVal16 = {registerVal17}
	registerVal2:mergeStateConditions(registerVal16)
	local function __FUNC_1FC0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isLocked", true, __FUNC_1FC0_)
	local function __FUNC_20DE_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.PercentCompleteWidget:close()
		arg0.MasterCallingCardIcon:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.LockedIcon:close()
		arg0.EmblemName:close()
		arg0.EmblemSubtitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_20DE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

