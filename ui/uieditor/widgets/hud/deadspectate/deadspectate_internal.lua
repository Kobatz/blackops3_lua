-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.EndGameFlow.Top3PlayerScoreBlurBox")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetFctnLine")
require("ui.uieditor.widgets.HUD.DeadSpectate.DeadSpectate_SpectatingBar")
require("ui.uieditor.widgets.HUD.DeadSpectate.DeadSpectate_SpectatingMode")
require("ui.uieditor.widgets.HUD.DeadSpectate.DeadSpectate_SpectatingBarPC")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DeadSpectate_Internal = registerVal1
function CoD.DeadSpectate_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DeadSpectate_Internal)
	registerVal2.id = "DeadSpectate_Internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 17.000000, 283.000000)
	registerVal3:setTopBottom(true, false, 7.750000, 52.750000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.LeftPanel = registerVal3
	local registerVal4 = CoD.Top3PlayerScoreBlurBox.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 17.000000, 283.000000)
	registerVal4:setTopBottom(true, false, 7.750000, 52.750000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal4:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Top3PlayerScoreBlurBox0 = registerVal4
	local registerVal5 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 17.000000, 283.000000)
	registerVal5:setTopBottom(true, false, 7.750000, 52.750000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.VSpanel = registerVal5
	local registerVal6 = CoD.KillcamWidgetFctnLine.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 13.000000, 287.000000)
	registerVal6:setTopBottom(true, false, -0.250000, 7.750000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.200000)
	registerVal2:addElement(registerVal6)
	registerVal2.LeftPanelLnT0 = registerVal6
	local registerVal7 = CoD.KillcamWidgetFctnLine.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 13.000000, 287.000000)
	registerVal7:setTopBottom(true, false, 52.750000, 60.750000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.200000)
	registerVal7:setXRot(180.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.LeftPanelLnT00 = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal8:setTopBottom(true, false, 17.750000, 42.750000)
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_13DD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(GetClientNameAndClanTag(arg1, registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "DeadSpectate", "playerIndex", __FUNC_13DD_)
	registerVal2:addElement(registerVal8)
	registerVal2.playerName = registerVal8
	local registerVal9 = CoD.DeadSpectate_SpectatingBar.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, false, -24.750000, 0.750000)
	registerVal2:addElement(registerVal9)
	registerVal2.spectatingBar = registerVal9
	local registerVal10 = CoD.DeadSpectate_SpectatingMode.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -150.000000, 150.000000)
	registerVal10:setTopBottom(false, true, 3.000000, 28.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.spectatingMode = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(false, false, -150.000000, 150.000000)
	registerVal11:setTopBottom(true, false, 60.000000, 76.000000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal11:setShaderVector(0.000000, 0.110000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_149D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(TeamStringFromPlayerIndex(arg1, registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "DeadSpectate", "playerIndex", __FUNC_149D_)
	registerVal2:addElement(registerVal11)
	registerVal2.codcastTeamText = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(false, false, -150.000000, 150.000000)
	registerVal12:setTopBottom(true, false, 60.000000, 76.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal12:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_155F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(TeamStringFromPlayerIndex(arg1, registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "DeadSpectate", "playerIndex", __FUNC_155F_)
	registerVal2:addElement(registerVal12)
	registerVal2.codcastTeamText0 = registerVal12
	local registerVal13 = CoD.DeadSpectate_SpectatingBarPC.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, false, -24.750000, 0.250000)
	registerVal2:addElement(registerVal13)
	registerVal2.DeadSpectateSpectatingBarPC = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_161F_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal9:completeAnimation()
		registerVal2.spectatingBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.spectatingMode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.codcastTeamText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.codcastTeamText0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal15.DefaultClip = __FUNC_161F_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_183D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal8:completeAnimation()
		registerVal2.playerName:setLeftRight(false, false, -100.000000, 100.000000)
		registerVal2.playerName:setTopBottom(true, false, 9.750000, 34.750000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.spectatingBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.spectatingMode:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.codcastTeamText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.codcastTeamText0:setLeftRight(false, false, -150.000000, 150.000000)
		registerVal2.codcastTeamText0:setTopBottom(true, false, 35.000000, 51.000000)
		registerVal2.codcastTeamText0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal15.DefaultClip = __FUNC_183D_
	registerVal14.ShowOnlySpectatingPrompt = registerVal15
	registerVal15 = {}
	local function __FUNC_1B8D_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal8:completeAnimation()
		registerVal2.playerName:setLeftRight(false, false, -100.000000, 100.000000)
		registerVal2.playerName:setTopBottom(true, false, 9.750000, 34.750000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.spectatingBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.spectatingMode:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.codcastTeamText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.codcastTeamText0:setLeftRight(false, false, -150.000000, 150.000000)
		registerVal2.codcastTeamText0:setTopBottom(true, false, 35.000000, 51.000000)
		registerVal2.codcastTeamText0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal15.DefaultClip = __FUNC_1B8D_
	registerVal14.HideAllPrompts = registerVal15
	registerVal2.clipsPerState = registerVal14
	local function __FUNC_1EDD_(arg0)
		arg0.LeftPanel:close()
		arg0.Top3PlayerScoreBlurBox0:close()
		arg0.VSpanel:close()
		arg0.LeftPanelLnT0:close()
		arg0.LeftPanelLnT00:close()
		arg0.spectatingBar:close()
		arg0.spectatingMode:close()
		arg0.DeadSpectateSpectatingBarPC:close()
		arg0.playerName:close()
		arg0.codcastTeamText:close()
		arg0.codcastTeamText0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1EDD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

