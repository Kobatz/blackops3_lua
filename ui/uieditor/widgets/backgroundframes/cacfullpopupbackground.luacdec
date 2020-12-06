-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShader")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
require("ui.uieditor.widgets.StartMenu.StartMenu_TitlePopup")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_alertStatusBar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CACFullPopupBackground = registerVal1
function CoD.CACFullPopupBackground.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CACFullPopupBackground)
	registerVal2.id = "CACFullPopupBackground"
	registerVal2.soundSet = "CAC_Wildcard"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -20.000000, 0.000000)
	registerVal3:setRGB(0.170000, 0.160000, 0.160000)
	registerVal3:setAlpha(0.950000)
	registerVal2:addElement(registerVal3)
	registerVal2.darkbg = registerVal3
	local registerVal4 = CoD.scorestreakVignetteContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 2.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.scorestreakVignetteContainer = registerVal4
	local registerVal5 = CoD.FE_ButtonPanelShader.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 134.000000, -151.000000)
	registerVal5:setRGB(0.500000, 0.500000, 0.500000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal5:setShaderVector(0.000000, 30.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FEButtonPanel = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -163.000000, 150.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.background = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 134.000000, 197.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.topBar = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, false, 538.000000, 583.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.bottomBar = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, false, 580.830000, 588.500000)
	registerVal9:setRGB(0.900000, 0.900000, 0.900000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal2:addElement(registerVal9)
	registerVal2.CategoryListLineBottomBottom = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 533.830000, 541.500000)
	registerVal10:setRGB(0.900000, 0.900000, 0.900000)
	registerVal10:setAlpha(0.250000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal2:addElement(registerVal10)
	registerVal2.CategoryListLineBottomTop = registerVal10
	local registerVal11 = CoD.fe_LeftContainer_NOTLobby.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -576.000000, -144.000000)
	registerVal11:setTopBottom(true, false, 541.500000, 573.500000)
	local function __FUNC_13AC_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_13AC_)
	registerVal2:addElement(registerVal11)
	registerVal2.buttons = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, false, 192.830000, 200.500000)
	registerVal12:setRGB(0.900000, 0.900000, 0.900000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal2:addElement(registerVal12)
	registerVal2.CategoryListLineTopBottom = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, false, 130.830000, 138.500000)
	registerVal13:setRGB(0.900000, 0.900000, 0.900000)
	registerVal13:setAlpha(0.250000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal2:addElement(registerVal13)
	registerVal2.CategoryListLineTopTop = registerVal13
	local registerVal14 = CoD.StartMenu_TitlePopup.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -691.000000, -113.000000)
	registerVal14:setTopBottom(true, false, 112.000000, 258.000000)
	registerVal14.StartMenuTitleContainerLOC.StartMenu3dTitle.StartMenu3dTitleLabel.Label0:setText(Engine.Localize(""))
	registerVal2:addElement(registerVal14)
	registerVal2.StartMenuTitlePopup = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, false, 197.000000, 537.670000)
	registerVal15:setRGB(0.000000, 0.000000, 0.000000)
	registerVal15:setAlpha(0.750000)
	registerVal15:setImage(RegisterImage("uie_t7_icon_master_overlays_bkg"))
	registerVal2:addElement(registerVal15)
	registerVal2.blackbkg = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal16:setTopBottom(true, false, 197.000000, 537.670000)
	registerVal16:setRGB(0.630000, 0.610000, 0.610000)
	registerVal16:setAlpha(0.750000)
	registerVal16:setImage(RegisterImage("uie_t7_icon_master_overlays_bkg"))
	registerVal2:addElement(registerVal16)
	registerVal2.Smokebkg = registerVal16
	local registerVal17 = CoD.systemOverlay_alertStatusBar.new(arg0, arg1)
	registerVal17:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal17:setTopBottom(true, false, 196.000000, 200.000000)
	local function __FUNC_13FE_(arg0)
		registerVal17:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, nil, false, __FUNC_13FE_)
	registerVal2:addElement(registerVal17)
	registerVal2.alertStatusBar = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal18:setTopBottom(true, false, 532.830000, 540.500000)
	registerVal18:setRGB(0.900000, 0.900000, 0.900000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal2:addElement(registerVal18)
	registerVal2.CategoryListLineTopBottom0 = registerVal18
	local function __FUNC_144E_(arg0)
		arg0.scorestreakVignetteContainer:close()
		arg0.FEButtonPanel:close()
		arg0.buttons:close()
		arg0.StartMenuTitlePopup:close()
		arg0.alertStatusBar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_144E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

