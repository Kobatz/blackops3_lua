-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.Challenges.Challenges_PercentCompleteWidget_MD")
require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.Challenges.Challenges_Title")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_OneHundredPercentWidget = registerVal1
function CoD.Challenges_OneHundredPercentWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_OneHundredPercentWidget)
	registerVal2.id = "Challenges_OneHundredPercentWidget"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 591.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 98.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuframenoBG0 = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -289.800000, -8.000000)
	registerVal4:setTopBottom(true, false, 12.000000, 85.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactive = registerVal4
	local registerVal5 = CoD.Challenges_PercentCompleteWidget_MD.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 15.000000, 85.000000)
	registerVal5:setTopBottom(true, false, 14.000000, 84.000000)
	registerVal5.percentCompleteCircle:setAlpha(1.000000)
	registerVal5.percentCompleteCircle:setShaderVector(0.000000, 0.500001, 0.000000, 0.000000, 0.000000)
	registerVal5.percentText:setText(Engine.Localize("50%"))
	registerVal2:addElement(registerVal5)
	registerVal2.PercentCompleteWidget = registerVal5
	local registerVal6 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -149.000000, -149.000000)
	registerVal6:setTopBottom(true, false, 48.500000, 48.500000)
	registerVal6.CardIconFrame:setScale(0.580000)
	local function __FUNC_1737_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:subscribeToGlobalModel(arg1, "OneHundredPercentCallingCard", nil, __FUNC_1737_)
	registerVal2:addElement(registerVal6)
	registerVal2.MasterCallingCardIcon = registerVal6
	local registerVal7 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -290.800000, -7.000000)
	registerVal7:setTopBottom(true, false, 12.000000, 85.500000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -288.800000, -9.000000)
	registerVal8:setTopBottom(true, false, 33.080000, 62.980000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.400000)
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal8:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal8)
	registerVal2.TitleBg = registerVal8
	local registerVal9 = CoD.cac_lock.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -154.800000, -124.350000)
	registerVal9:setTopBottom(true, false, 33.530000, 63.980000)
	registerVal2:addElement(registerVal9)
	registerVal2.LockedIcon = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -148.900000, -144.900000)
	registerVal10:setTopBottom(true, false, -136.480000, 203.530000)
	registerVal10:setAlpha(0.500000)
	registerVal10:setZRot(-90.000000)
	registerVal10:setScale(0.850000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.featlineleft000 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -148.800000, -144.800000)
	registerVal11:setTopBottom(true, false, -106.430000, 233.580000)
	registerVal11:setAlpha(0.500000)
	registerVal11:setZRot(-90.000000)
	registerVal11:setScale(0.850000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.featlineleft0000 = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 94.920000, 291.420000)
	registerVal12:setTopBottom(true, false, 45.580000, 65.580000)
	registerVal12:setText(Engine.Localize("WEAPON_NULL"))
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setLetterSpacing(0.500000)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.EmblemSubtitle = registerVal12
	local registerVal13 = LUI.UITightText.new()
	registerVal13:setLeftRight(true, false, 95.920000, 253.120000)
	registerVal13:setTopBottom(true, false, 12.000000, 44.000000)
	registerVal13:setAlpha(0.900000)
	registerVal13:setText(Engine.Localize("CHALLENGE_DARK_OPS_COMPLETED_ALL_CHALLENGES"))
	registerVal13:setTTF("fonts/escom.ttf")
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal13:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setLetterSpacing(0.600000)
	local function __FUNC_1786_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("menu_loaded", __FUNC_1786_)
	local function __FUNC_1829_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 2.000000)
		SetStateFromText(registerVal2, arg0, "DefaultState", "NoText")
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal13, "setText", __FUNC_1829_)
	registerVal2:addElement(registerVal13)
	registerVal2.weaponNameLabel = registerVal13
	local registerVal14 = CoD.Challenges_Title.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 3.000000, 231.000000)
	registerVal14:setTopBottom(true, false, -34.500000, -2.250000)
	registerVal14.weaponNameLabel:setText(Engine.Localize("MENU_CHALLENGES_COMPLETED_CAPS"))
	registerVal2:addElement(registerVal14)
	registerVal2.ChallengesTitle = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_18E1_()
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

	registerVal16.DefaultClip = __FUNC_18E1_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_1C22_()
		registerVal2:setupElementClipCounter(7.000000)
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
		registerVal14:completeAnimation()
		registerVal2.ChallengesTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_1C22_
	registerVal15.Locked = registerVal16
	registerVal2.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Locked"
	local function __FUNC_1F67_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isLocked")
	end

	registerVal18.condition = __FUNC_1F67_
	registerVal17 = {registerVal18}
	registerVal2:mergeStateConditions(registerVal17)
	local function __FUNC_1FD8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isLocked", true, __FUNC_1FD8_)
	local function __FUNC_20F6_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.PercentCompleteWidget:close()
		arg0.MasterCallingCardIcon:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.LockedIcon:close()
		arg0.ChallengesTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_20F6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

