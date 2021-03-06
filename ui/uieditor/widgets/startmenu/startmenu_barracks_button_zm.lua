-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.StartMenu.StartMenu_Barracks_Stat")
require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.Prestige.Prestige_MasterTierWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Barracks_Button_ZM = registerVal1
function CoD.StartMenu_Barracks_Button_ZM.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Barracks_Button_ZM)
	registerVal2.id = "StartMenu_Barracks_Button_ZM"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 366.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 437.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, -82.000000)
	registerVal3:setRGB(0.870000, 0.970000, 1.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactive = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 366.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 353.000000)
	registerVal4:setImage(RegisterImage("uie_t7_tile_texture"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal4:setShaderVector(0.000000, 13.000000, 13.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Tile = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -61.000000, 67.000000)
	registerVal5:setTopBottom(true, false, 20.000000, 148.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Emblem = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -98.000000, 105.000000)
	registerVal6:setTopBottom(true, false, 178.000000, 206.000000)
	registerVal6:setAlpha(0.600000)
	registerVal2:addElement(registerVal6)
	registerVal2.RankNameBackground = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -98.000000, 105.000000)
	registerVal7:setTopBottom(true, false, 208.000000, 236.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.600000)
	registerVal2:addElement(registerVal7)
	registerVal2.RankBackground = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, false, -141.000000, 147.000000)
	registerVal8:setTopBottom(true, false, 182.000000, 202.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setText(Engine.Localize("Vindicator"))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal8:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setLetterSpacing(1.000000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.RankName = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, -141.000000, 147.000000)
	registerVal9:setTopBottom(true, false, 211.000000, 233.000000)
	registerVal9:setText(Engine.Localize("LEVEL 18"))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.Rank = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 3.000000, -2.000000)
	registerVal10:setTopBottom(true, false, 2.000000, 353.000000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.050000)
	registerVal2:addElement(registerVal10)
	registerVal2.ButtonTitleBG = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 11.730000, 353.730000)
	registerVal11:setTopBottom(true, false, 305.000000, 327.000000)
	registerVal11:setText(Engine.Localize("MENU_ZOMBIES_CAPS"))
	registerVal11:setTTF("fonts/escom.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.SessionName = registerVal11
	local registerVal12 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 5.000000, 361.000000)
	registerVal12:setTopBottom(true, false, 324.000000, 350.000000)
	registerVal12.SubTitle:setText(Engine.Localize("Combat Record, Challenges, Leaderboards"))
	registerVal12.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal12)
	registerVal2.StartMenuIdentitySubTitle0 = registerVal12
	local registerVal13 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, false, 0.000000, 355.000000)
	registerVal13:setAlpha(0.300000)
	registerVal2:addElement(registerVal13)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal13
	local registerVal14 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal14:setTopBottom(true, false, 0.000000, 355.000000)
	registerVal14:setAlpha(0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.StartMenuframenoBG0 = registerVal14
	local registerVal15 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZoom(1.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.FocusBarT = registerVal15
	local registerVal16 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal16:setTopBottom(true, false, 353.000000, 357.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setZoom(1.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.FocusBarB = registerVal16
	local registerVal17 = CoD.StartMenu_Barracks_Stat.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 0.000000, 110.670000)
	registerVal17:setTopBottom(true, false, 375.940000, 436.940000)
	registerVal17.BorderThin0:setAlpha(0.300000)
	registerVal17.Value:setText(Engine.Localize("MPUI_TOTAL_KILLS_CAPS"))
	registerVal17.Title:setText(Engine.Localize("0"))
	registerVal2:addElement(registerVal17)
	registerVal2.TotalKills = registerVal17
	local registerVal18 = CoD.StartMenu_Barracks_Stat.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 116.000000, 244.000000)
	registerVal18:setTopBottom(true, false, 375.940000, 436.940000)
	registerVal18.BorderThin0:setAlpha(0.300000)
	registerVal18.Value:setText(Engine.Localize("MENU_ROUNDS_SURVIVED_CAPS"))
	registerVal18.Title:setText(Engine.Localize("0"))
	registerVal2:addElement(registerVal18)
	registerVal2.RoundsSurvived = registerVal18
	local registerVal19 = CoD.StartMenu_Barracks_Stat.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 250.000000, 366.000000)
	registerVal19:setTopBottom(true, false, 375.940000, 436.940000)
	registerVal19.BorderThin0:setAlpha(0.300000)
	registerVal19.Value:setText(Engine.Localize("MENU_AVERAGE_ROUNDS_CAPS"))
	registerVal19.Title:setText(Engine.Localize("0"))
	registerVal2:addElement(registerVal19)
	registerVal2.SPM = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, -34.000000, 2.000000)
	registerVal20:setTopBottom(true, false, 435.000000, 439.000000)
	registerVal20:setYRot(-180.000000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.Pixel200 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, -34.000000, 2.000000)
	registerVal21:setTopBottom(true, false, 373.940000, 377.940000)
	registerVal21:setYRot(-180.000000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.Image0 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, 364.000000, 400.000000)
	registerVal22:setTopBottom(true, false, 435.000000, 439.000000)
	registerVal22:setYRot(-180.000000)
	registerVal22:setZRot(180.000000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.Image1 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, 364.000000, 400.000000)
	registerVal23:setTopBottom(true, false, 373.940000, 377.940000)
	registerVal23:setYRot(-180.000000)
	registerVal23:setZRot(180.000000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.Image2 = registerVal23
	local registerVal24 = LUI.UIText.new()
	registerVal24:setLeftRight(true, false, 11.500000, 353.500000)
	registerVal24:setTopBottom(true, false, 263.000000, 285.000000)
	registerVal24:setAlpha(0.000000)
	registerVal24:setText(Engine.Localize("CPUI_REQUIRES_LEVEL"))
	registerVal24:setTTF("fonts/escom.ttf")
	registerVal24:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal24:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal24)
	registerVal2.unlockRequirements = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal25:setTopBottom(false, false, -63.000000, -22.500000)
	registerVal25:setRGB(0.000000, 0.000000, 0.000000)
	registerVal25:setAlpha(0.000000)
	registerVal2:addElement(registerVal25)
	registerVal2.BlackLine = registerVal25
	local registerVal26 = CoD.cac_lock.new(arg0, arg1)
	registerVal26:setLeftRight(false, false, -9.000000, 15.000000)
	registerVal26:setTopBottom(true, false, 159.750000, 191.750000)
	registerVal26:setAlpha(0.000000)
	registerVal2:addElement(registerVal26)
	registerVal2.lockedIcon = registerVal26
	local registerVal27 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal27:setLeftRight(false, false, -100.000000, 107.000000)
	registerVal27:setTopBottom(false, false, -42.500000, 19.500000)
	registerVal2:addElement(registerVal27)
	registerVal2.StartMenuframenoBG00 = registerVal27
	local registerVal28 = CoD.Prestige_MasterTierWidget.new(arg0, arg1)
	registerVal28:setLeftRight(false, false, -98.000000, 105.000000)
	registerVal28:setTopBottom(true, false, 236.000000, 260.000000)
	local registerVal31 = {}
	local registerVal32 = {}
	registerVal32.stateName = "Visible"
	local function __FUNC_2301_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal32.condition = __FUNC_2301_
	registerVal31 = {registerVal32}
	registerVal28:mergeStateConditions(registerVal31)
	registerVal2:addElement(registerVal28)
	registerVal2.PrestigeMasterTierWidget = registerVal28
	local registerVal29 = {}
	local registerVal30 = {}
	local function __FUNC_234C_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal10:completeAnimation()
		registerVal2.ButtonTitleBG:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.TotalKills:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RoundsSurvived:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.SPM:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.Pixel200:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.Image2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.unlockRequirements:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal30.DefaultClip = __FUNC_234C_
	local function __FUNC_28E9_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal10:completeAnimation()
		registerVal2.ButtonTitleBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.TotalKills:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RoundsSurvived:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.SPM:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.Pixel200:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.Image0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Image1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.Image2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal23, {})
	end

	registerVal30.Focus = __FUNC_28E9_
	registerVal29.DefaultState = registerVal30
	registerVal30 = {}
	local function __FUNC_2E25_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal10:completeAnimation()
		registerVal2.ButtonTitleBG:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SessionName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuIdentitySubTitle0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.TotalKills:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RoundsSurvived:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.SPM:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.Pixel200:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.Image2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.unlockRequirements:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
	end

	registerVal30.DefaultClip = __FUNC_2E25_
	local function __FUNC_3540_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal10:completeAnimation()
		registerVal2.ButtonTitleBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.TotalKills:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RoundsSurvived:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.SPM:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal25:completeAnimation()
		registerVal2.BlackLine:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.lockedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal26, {})
	end

	registerVal30.Focus = __FUNC_3540_
	registerVal29.Disable = registerVal30
	registerVal30 = {}
	local function __FUNC_39E4_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal10:completeAnimation()
		registerVal2.ButtonTitleBG:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.TotalKills:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RoundsSurvived:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.SPM:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.Pixel200:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.Image2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.unlockRequirements:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
	end

	registerVal30.DefaultClip = __FUNC_39E4_
	local function __FUNC_3F81_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal10:completeAnimation()
		registerVal2.ButtonTitleBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.TotalKills:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RoundsSurvived:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.SPM:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.Pixel200:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.Image2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
	end

	registerVal30.Focus = __FUNC_3F81_
	registerVal29.NoStats = registerVal30
	registerVal2.clipsPerState = registerVal29
	local function __FUNC_44BD_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.StartMenuIdentitySubTitle0:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.StartMenuframenoBG0:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.TotalKills:close()
		arg0.RoundsSurvived:close()
		arg0.SPM:close()
		arg0.lockedIcon:close()
		arg0.StartMenuframenoBG00:close()
		arg0.PrestigeMasterTierWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_44BD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

