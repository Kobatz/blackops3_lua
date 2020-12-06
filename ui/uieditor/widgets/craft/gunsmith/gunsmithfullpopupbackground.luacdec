-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShader")
require("ui.uieditor.widgets.buttonprompt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithFullPopupBackground = registerVal1
function CoD.GunsmithFullPopupBackground.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithFullPopupBackground)
	registerVal2.id = "GunsmithFullPopupBackground"
	registerVal2.soundSet = "CAC_Wildcard"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.120000, 0.120000, 0.120000)
	registerVal3:setAlpha(0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.darkbg = registerVal3
	local registerVal4 = CoD.scorestreakVignetteContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
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
	registerVal8:setTopBottom(false, true, -182.000000, -137.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.bottomBar = registerVal8
	local registerVal9 = CoD.buttonprompt.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 80.000000, 294.000000)
	registerVal9:setTopBottom(true, false, 545.000000, 576.000000)
	registerVal9.label:setText(Engine.Localize("MENU_SELECT"))
	local function __FUNC_ECD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Controller", "primary_button_image", __FUNC_ECD_)
	registerVal2:addElement(registerVal9)
	registerVal2.selectButtonPrompt = registerVal9
	local registerVal10 = CoD.buttonprompt.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 163.000000, 377.000000)
	registerVal10:setTopBottom(true, false, 545.000000, 576.000000)
	registerVal10.label:setText(Engine.Localize("MENU_BACK"))
	local function __FUNC_FA7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "Controller", "secondary_button_image", __FUNC_FA7_)
	registerVal2:addElement(registerVal10)
	registerVal2.backButtonPrompt = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal11:setTopBottom(true, false, 197.000000, 538.000000)
	registerVal11:setRGB(0.770000, 0.820000, 0.920000)
	registerVal11:setAlpha(0.800000)
	registerVal11:setImage(RegisterImage("uie_t7_icon_master_overlays_bkg"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image0 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 64.000000, 403.420000)
	registerVal12:setTopBottom(true, false, 197.000000, 536.420000)
	registerVal12:setAlpha(0.550000)
	registerVal12:setImage(RegisterImage("uie_t7_icon_master_overlays_beta"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Image2 = registerVal12
	local function __FUNC_107F_(arg0)
		arg0.scorestreakVignetteContainer:close()
		arg0.FEButtonPanel:close()
		arg0.selectButtonPrompt:close()
		arg0.backButtonPrompt:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_107F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

