-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.CACHeroPreviewWidget")
require("ui.uieditor.widgets.Prestige.Prestige_PermanentUnlockTokensWidget")
require("ui.uieditor.widgets.CAC.ClassAllocation")
require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CACBackgroundNew = registerVal1
function CoD.CACBackgroundNew.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CACBackgroundNew)
	registerVal2.id = "CACBackgroundNew"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -36.000000, 29.000000)
	registerVal3:setTopBottom(true, false, -35.000000, 85.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.650000)
	registerVal2:addElement(registerVal3)
	registerVal2.TitleBacking0 = registerVal3
	local registerVal4 = CoD.CACHeroPreviewWidget.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -783.000000, 717.000000)
	registerVal4:setTopBottom(false, true, -138.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.heroPreview = registerVal4
	local registerVal5 = CoD.Prestige_PermanentUnlockTokensWidget.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -362.000000, -81.000000)
	registerVal5:setTopBottom(true, false, 39.000000, 84.000000)
	registerVal5:setAlpha(ShowIfInPermanentUnlockMenu(0.000000))
	registerVal5.tokenLabel:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.PermanentUnlockTokensWidget = registerVal5
	local registerVal6 = CoD.ClassAllocation.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -486.000000, -51.000000)
	registerVal6:setTopBottom(true, false, 35.000000, 70.000000)
	local function __FUNC_ED7_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_ED7_)
	registerVal2:addElement(registerVal6)
	registerVal2.classAllocation = registerVal6
	local registerVal7 = CoD.cac_3dTitleIntermediary.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -78.000000, 531.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 146.000000)
	registerVal7.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	registerVal7.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_cac"))
	registerVal2:addElement(registerVal7)
	registerVal2.cac3dTitleIntermediary0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -11.000000, 13.000000)
	registerVal8:setTopBottom(true, false, 82.000000, 90.000000)
	registerVal8:setRGB(0.900000, 0.900000, 0.900000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal2:addElement(registerVal8)
	registerVal2.CategoryListLine = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_F26_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.heroPreview:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal10.DefaultClip = __FUNC_F26_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_1027_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.heroPreview:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal10.DefaultClip = __FUNC_1027_
	registerVal9.DisplayHero = registerVal10
	registerVal10 = {}
	local function __FUNC_1122_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.heroPreview:setLeftRight(false, false, -700.000000, 800.000000)
		registerVal2.heroPreview:setTopBottom(false, true, -138.000000, 0.000000)
		registerVal2.heroPreview:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal10.DefaultClip = __FUNC_1122_
	registerVal9.NameAndWeapon = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "DisplayHero"
	local function __FUNC_12AE_(arg0, arg1, arg2)
		local registerVal3 = IsCurrentMenu(arg0, "CustomClass")
		if registerVal3 then
			registerVal3 = IsMultiplayer()
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_12AE_
	local registerVal13 = {}
	registerVal13.stateName = "NameAndWeapon"
	local function __FUNC_133F_(arg0, arg1, arg2)
		local registerVal3 = IsCurrentMenu(arg0, "chooseClass")
		if registerVal3 then
			registerVal3 = IsMultiplayer()
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_133F_
	registerVal11 = {registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "lobbyRoot.lobbyNav")
	local function __FUNC_13CF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_13CF_)
	local function __FUNC_14F4_(arg0, arg2)
		SetElementStateByElementName(registerVal2, "cac3dTitleIntermediary0", arg1, "Update")
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_14F4_)
	local function __FUNC_158F_(arg0)
		arg0.heroPreview:close()
		arg0.PermanentUnlockTokensWidget:close()
		arg0.classAllocation:close()
		arg0.cac3dTitleIntermediary0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_158F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

