-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.CACFullPopupBackground")
require("ui.uieditor.widgets.CAC.UnlockTokensWidget")
require("ui.uieditor.widgets.AAR.PerformanceTab.XpBarContainer")
require("ui.uieditor.widgets.CAC.cac_IconTokenInactiveXLarge")
local function __FUNC_2AA_(arg0, arg1)
	local registerVal4 = arg0:getModel(arg1, "xpBarInfo")
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal4, "currLevel"))
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal4, "rankXP"))
	local registerVal7, registerVal8 = CoD.AARUtility.GetMinMaxXPForRank((registerVal5 - 1.000000), arg1)
	local registerVal11 = math.max(1.000000, (registerVal8 - registerVal7))
	arg0.XpBarContainer.XpBar.XpBarCurrXPBg:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	arg0.XpBarContainer.XpBar.XpBarEarnedXPBg:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	arg0.XpBarContainer.XpBar.XpBarEarnedXPBg:beginAnimation("animate_bar", CoD.AARUtility.XPBarAnimTime, true, true)
	arg0.XpBarContainer.XpBar.XpBarEarnedXPBg:setShaderVector(0.000000, ((registerVal6 - registerVal7) / registerVal11), 0.000000, 0.000000, 0.000000)
	registerVal11 = tonumber(registerVal5)
	if registerVal11 == CoD.AARUtility.MaxRank then
		arg0.description:setText(Engine.Localize(GetTokenUnlockDescription(arg1, "MENU_OUT_OF_UNLOCK_TOKENS_HIGHESTRANK_DESC")))
	else
		arg0.description:setText(Engine.Localize(GetTokenUnlockDescription(arg1, "MENU_OUT_OF_UNLOCK_TOKENS_DESC")))
	end
end

local function __FUNC_779_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("OutOfUnlockTokens")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_Overcapacity"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "OutOfUnlockTokens.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.CACFullPopupBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.StartMenuTitlePopup.StartMenuTitleContainerLOC.StartMenu3dTitle.StartMenu3dTitleLabel.Label0:setText(Engine.Localize(GetStringforGameMode("CPUI_OUT_OF_FABRICATION_KITS", "MENU_OUT_OF_UNLOCK_TOKENS", "MENU_OUT_OF_UNLOCK_TOKENS", "MENU_OUT_OF_UNLOCK_TOKENS")))
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 507.000000, 1044.000000)
	registerVal4:setTopBottom(true, false, 223.250000, 248.250000)
	registerVal4:setRGB(0.500000, 0.510000, 0.520000)
	registerVal4:setText(Engine.Localize(GetTokenUnlockDescription(arg0, "MENU_OUT_OF_UNLOCK_TOKENS_DESC")))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal4)
	registerVal1.description = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 10.000000, 46.000000)
	registerVal5:setTopBottom(false, false, 99.500000, 103.000000)
	registerVal5:setZRot(180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal5)
	registerVal1.Image3 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 10.000000, 46.000000)
	registerVal6:setTopBottom(false, false, -136.750000, -133.250000)
	registerVal6:setZRot(180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal6)
	registerVal1.Image4 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 25.500000, 30.500000)
	registerVal7:setTopBottom(true, false, 230.000000, 460.380000)
	registerVal7:setAlpha(0.800000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal7)
	registerVal1.LineSide0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 7.000000, 23.000000)
	registerVal8:setTopBottom(true, false, 295.000000, 347.000000)
	registerVal8:setZoom(-5.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal8)
	registerVal1.Image40 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 1231.000000, 1267.000000)
	registerVal9:setTopBottom(false, false, 99.500000, 103.000000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.Image30 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 1231.000000, 1267.000000)
	registerVal10:setTopBottom(false, false, -136.750000, -133.250000)
	registerVal10:setZRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Image41 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 1246.500000, 1251.500000)
	registerVal11:setTopBottom(true, false, 230.000000, 460.380000)
	registerVal11:setAlpha(0.800000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.LineSide00 = registerVal11
	local registerVal12 = CoD.UnlockTokensWidget.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, true, -499.000000, -260.000000)
	registerVal12:setTopBottom(true, false, 148.000000, 192.000000)
	registerVal12.tokenLabel:setTTF("fonts/escom.ttf")
	registerVal1:addElement(registerVal12)
	registerVal1.UnlockTokensWidget = registerVal12
	local registerVal13 = CoD.XpBarContainer.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 450.000000, 1149.620000)
	registerVal13:setTopBottom(true, false, 405.290000, 459.500000)
	registerVal13.XPEarnedDisplay:setAlpha(0.000000)
	registerVal13.XPEarnedDisplay.SubTitle:setText(Engine.Localize("MENU_XP_EARNED_CAPS"))
	registerVal13.ProgressDescription:setAlpha(1.000000)
	registerVal13.ProgressDescription.SubTitle:setText(Engine.Localize("MENU_PROGRESS_TO_NEXT_LEVEL_CAPS"))
	local function __FUNC_1C7A_(arg1)
		registerVal13:setModel(arg1, arg0)
	end

	registerVal13:linkToElementModel(registerVal1, "xpBarInfo", false, __FUNC_1C7A_)
	local function __FUNC_1CCA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.NextLevelDisplay.SubTitle:setText(Engine.Localize(LocalizeIntoString("MENU_NEXT_LEVEL_XP_ARG", registerVal1)))
		end
	end

	registerVal13:linkToElementModel(registerVal1, "xpBarInfo.xpNeeded", true, __FUNC_1CCA_)
	registerVal1:addElement(registerVal13)
	registerVal1.XpBarContainer = registerVal13
	local registerVal14 = CoD.cac_IconTokenInactiveXLarge.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 84.000000, 348.000000)
	registerVal14:setTopBottom(true, false, 216.190000, 474.190000)
	registerVal1:addElement(registerVal14)
	registerVal1.cacIconTokenInactiveXLarge0 = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_1E0E_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal13:completeAnimation()
		registerVal1.clipFinished(registerVal13, {})
	end

	registerVal16.DefaultClip = __FUNC_1E0E_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_1EC7_()
		registerVal1:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal1.description:setLeftRight(true, false, 512.500000, 1049.500000)
		registerVal1.description:setTopBottom(true, false, 270.000000, 295.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal12:completeAnimation()
		registerVal1.UnlockTokensWidget:setLeftRight(false, true, -499.000000, -260.000000)
		registerVal1.UnlockTokensWidget:setTopBottom(true, false, 208.000000, 252.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.ProgressDescription:completeAnimation()
		registerVal1.XpBarContainer.ProgressDescription:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
	end

	registerVal16.DefaultClip = __FUNC_1EC7_
	registerVal15.Arabic = registerVal16
	registerVal1.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Arabic"
	local function __FUNC_2180_(arg0, arg1, arg2)
		return IsCurrentLanguageArabic()
	end

	registerVal18.condition = __FUNC_2180_
	registerVal17 = {registerVal18}
	registerVal1:mergeStateConditions(registerVal17)
	local function __FUNC_21D9_(arg1, arg2)
		SetModelFromPerControllerTable(arg0, registerVal1, "UnlockTokenInfo")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_21D9_)
	local function __FUNC_229A_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		PlaySoundSetSound(registerVal1, "menu_no_selection")
		return true
	end

	local function __FUNC_2332_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_229A_, __FUNC_2332_, false)
	registerVal3:setModel(registerVal1.buttonModel, arg0)
	registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	local function __FUNC_242D_(arg1)
		arg1.background:close()
		arg1.UnlockTokensWidget:close()
		arg1.XpBarContainer:close()
		arg1.cacIconTokenInactiveXLarge0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "OutOfUnlockTokens.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_242D_)
	if __FUNC_2AA_ then
		__FUNC_2AA_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.OutOfUnlockTokens = __FUNC_779_
