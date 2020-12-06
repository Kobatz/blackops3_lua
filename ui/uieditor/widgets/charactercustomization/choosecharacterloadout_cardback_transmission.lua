-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.verticalScrollingTextBox")
require("ui.uieditor.widgets.Heroes.ChooseCharacterLoadout_TabBar")
require("ui.uieditor.widgets.buttonprompt")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadout_CardBack_TransmissionWaveForm")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadout_CardBack_TransmissionContactsList")
require("ui.uieditor.widgets.Heroes.ChooseCharacterLoadout_CardBack_FrontOfCardFooter")
local function __FUNC_43C_(arg0, arg1, arg2)
	arg0.audioPromptPC.clickableButton.m_button = Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE
	arg0.audioPromptPC.clickableButton.keyshortcut:setText(Engine.Localize("[^3P^7]"))
end

local function __FUNC_5C0_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_43C_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadout_CardBack_Transmission = registerVal3
local function __FUNC_633_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadout_CardBack_Transmission)
	registerVal2.id = "ChooseCharacterLoadout_CardBack_Transmission"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 506.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 443.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 72.000000)
	local function __FUNC_3DD5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "cardBackIcon", true, __FUNC_3DD5_)
	registerVal2:addElement(registerVal3)
	registerVal2.face = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 229.000000, 368.000000)
	registerVal4:setTopBottom(true, false, 6.000000, 26.000000)
	registerVal4:setRGB(0.820000, 0.980000, 1.000000)
	registerVal4:setAlpha(0.800000)
	registerVal4:setText(Engine.Localize("HEROES_FREQUENCY"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.frequencyLabel = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal5:setTopBottom(false, false, -152.000000, -149.000000)
	registerVal5:setRGB(0.820000, 0.980000, 1.000000)
	registerVal5:setZRot(180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image3 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal6:setTopBottom(false, false, -152.000000, -149.000000)
	registerVal6:setRGB(0.820000, 0.980000, 1.000000)
	registerVal6:setZRot(180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image30 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal7:setTopBottom(false, false, -222.000000, -219.000000)
	registerVal7:setRGB(0.820000, 0.980000, 1.000000)
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image4 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal8:setTopBottom(false, false, -223.000000, -220.000000)
	registerVal8:setRGB(0.820000, 0.980000, 1.000000)
	registerVal8:setZRot(180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image5 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, false, 71.250000, 72.000000)
	registerVal9:setRGB(0.820000, 0.980000, 1.000000)
	registerVal9:setAlpha(0.700000)
	registerVal2:addElement(registerVal9)
	registerVal2.keyline1 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 0.650000, 0.000000)
	registerVal10:setRGB(0.820000, 0.980000, 1.000000)
	registerVal10:setAlpha(0.700000)
	registerVal2:addElement(registerVal10)
	registerVal2.keyline10 = registerVal10
	local registerVal11 = CoD.Border.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, -1.000000, 128.000000)
	registerVal11:setTopBottom(true, false, 0.380000, 71.500000)
	registerVal11:setRGB(0.820000, 0.980000, 1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.Border10 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -381.000000, -377.000000)
	registerVal12:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal12:setRGB(0.820000, 0.980000, 1.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Image94 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, true, -380.000000, -376.000000)
	registerVal13:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal13:setRGB(0.820000, 0.980000, 1.000000)
	registerVal13:setYRot(180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Image14 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, true, -380.000000, -376.000000)
	registerVal14:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal14:setRGB(0.820000, 0.980000, 1.000000)
	registerVal14:setZRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Image15 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, true, -381.000000, -377.000000)
	registerVal15:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal15:setRGB(0.820000, 0.980000, 1.000000)
	registerVal15:setXRot(180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Image16 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, true, -284.000000, -280.000000)
	registerVal16:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal16:setRGB(0.820000, 0.980000, 1.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Image17 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, true, -283.000000, -279.000000)
	registerVal17:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal17:setRGB(0.820000, 0.980000, 1.000000)
	registerVal17:setYRot(180.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Image18 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, true, -284.000000, -280.000000)
	registerVal18:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal18:setRGB(0.820000, 0.980000, 1.000000)
	registerVal18:setZRot(180.000000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.Image19 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(false, true, -285.000000, -281.000000)
	registerVal19:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal19:setRGB(0.820000, 0.980000, 1.000000)
	registerVal19:setXRot(180.000000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.Image21 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(false, true, -508.000000, -504.000000)
	registerVal20:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal20:setRGB(0.820000, 0.980000, 1.000000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.Image22 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(false, true, -507.000000, -503.000000)
	registerVal21:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal21:setRGB(0.820000, 0.980000, 1.000000)
	registerVal21:setYRot(180.000000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.Image23 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(false, true, -507.500000, -503.500000)
	registerVal22:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal22:setRGB(0.820000, 0.980000, 1.000000)
	registerVal22:setZRot(180.000000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.Image24 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(false, true, -508.500000, -504.500000)
	registerVal23:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal23:setRGB(0.820000, 0.980000, 1.000000)
	registerVal23:setXRot(180.000000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.Image25 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(false, true, -133.000000, -129.000000)
	registerVal24:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal24:setRGB(0.820000, 0.980000, 1.000000)
	registerVal24:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal24:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal24)
	registerVal2.Image6 = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(false, true, -132.000000, -128.000000)
	registerVal25:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal25:setRGB(0.820000, 0.980000, 1.000000)
	registerVal25:setYRot(180.000000)
	registerVal25:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal25:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal25)
	registerVal2.Image7 = registerVal25
	local registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(false, true, -133.000000, -129.000000)
	registerVal26:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal26:setRGB(0.820000, 0.980000, 1.000000)
	registerVal26:setZRot(180.000000)
	registerVal26:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal26:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal26)
	registerVal2.Image28 = registerVal26
	local registerVal27 = LUI.UIImage.new()
	registerVal27:setLeftRight(false, true, -134.000000, -130.000000)
	registerVal27:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal27:setRGB(0.820000, 0.980000, 1.000000)
	registerVal27:setXRot(180.000000)
	registerVal27:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal27:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal27)
	registerVal2.Image29 = registerVal27
	local registerVal28 = LUI.UIImage.new()
	registerVal28:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal28:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal28:setRGB(0.820000, 0.980000, 1.000000)
	registerVal28:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal28:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal28)
	registerVal2.Image31 = registerVal28
	local registerVal29 = LUI.UIImage.new()
	registerVal29:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal29:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal29:setRGB(0.820000, 0.980000, 1.000000)
	registerVal29:setYRot(180.000000)
	registerVal29:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal29:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal29)
	registerVal2.Image32 = registerVal29
	local registerVal30 = LUI.UIImage.new()
	registerVal30:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal30:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal30:setRGB(0.820000, 0.980000, 1.000000)
	registerVal30:setZRot(180.000000)
	registerVal30:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal30:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal30)
	registerVal2.Image33 = registerVal30
	local registerVal31 = LUI.UIImage.new()
	registerVal31:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal31:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal31:setRGB(0.820000, 0.980000, 1.000000)
	registerVal31:setXRot(180.000000)
	registerVal31:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal31:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal31)
	registerVal2.Image34 = registerVal31
	local registerVal32 = LUI.UIImage.new()
	registerVal32:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal32:setTopBottom(true, false, 110.750000, 111.500000)
	registerVal32:setRGB(0.820000, 0.980000, 1.000000)
	registerVal32:setAlpha(0.700000)
	registerVal2:addElement(registerVal32)
	registerVal2.keyline = registerVal32
	local registerVal33 = CoD.verticalScrollingTextBox.new(arg0, arg1)
	registerVal33:setLeftRight(true, true, 8.000000, -145.000000)
	registerVal33:setTopBottom(true, false, 113.500000, 433.000000)
	registerVal33:setRGB(0.820000, 0.980000, 1.000000)
	registerVal33:setAlpha(0.800000)
	registerVal33.textBox:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal33.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_3E88_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal33.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal33:linkToElementModel(registerVal2, "transmissionSynopsis", true, __FUNC_3E88_)
	registerVal2:addElement(registerVal33)
	registerVal2.completeAssignmentText = registerVal33
	local registerVal34 = LUI.UIImage.new()
	registerVal34:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal34:setTopBottom(false, false, -130.250000, -127.250000)
	registerVal34:setRGB(0.820000, 0.980000, 1.000000)
	registerVal34:setZRot(180.000000)
	registerVal34:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal34:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal34)
	registerVal2.Image40 = registerVal34
	local registerVal35 = LUI.UIImage.new()
	registerVal35:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal35:setTopBottom(false, false, -130.250000, -127.250000)
	registerVal35:setRGB(0.820000, 0.980000, 1.000000)
	registerVal35:setZRot(180.000000)
	registerVal35:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal35:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal35)
	registerVal2.Image50 = registerVal35
	local registerVal36 = LUI.UIImage.new()
	registerVal36:setLeftRight(false, true, -4.000000, 21.000000)
	registerVal36:setTopBottom(false, false, -129.500000, -126.500000)
	registerVal36:setRGB(0.820000, 0.980000, 1.000000)
	registerVal36:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal36:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal36)
	registerVal2.Image60 = registerVal36
	local registerVal37 = LUI.UIImage.new()
	registerVal37:setLeftRight(false, true, -4.000000, 21.000000)
	registerVal37:setTopBottom(false, false, -129.500000, -126.500000)
	registerVal37:setRGB(0.820000, 0.980000, 1.000000)
	registerVal37:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal37:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal37)
	registerVal2.Image70 = registerVal37
	local registerVal38 = CoD.ChooseCharacterLoadout_TabBar.new(arg0, arg1)
	registerVal38:setLeftRight(true, false, -2.000000, 508.000000)
	registerVal38:setTopBottom(true, false, 86.750000, 114.750000)
	registerVal38:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal38)
	registerVal2.TabBar3 = registerVal38
	local registerVal39 = LUI.UITightText.new()
	registerVal39:setLeftRight(true, false, 8.000000, 208.000000)
	registerVal39:setTopBottom(true, false, 90.500000, 110.500000)
	registerVal39:setRGB(0.000000, 0.000000, 0.000000)
	registerVal39:setTTF("fonts/escom.ttf")
	registerVal39:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal39:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal39:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal39:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal39:setLetterSpacing(1.000000)
	local function __FUNC_3F5F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal39:setText(registerVal1)
		end
	end

	registerVal39:linkToElementModel(registerVal2, "transmissionName", true, __FUNC_3F5F_)
	registerVal2:addElement(registerVal39)
	registerVal2.classifiedIndex = registerVal39
	local registerVal40 = CoD.Border.new(arg0, arg1)
	registerVal40:setLeftRight(false, false, -254.000000, 253.000000)
	registerVal40:setTopBottom(false, false, -128.750000, 221.500000)
	registerVal40:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal40)
	registerVal2.classifiedBorder = registerVal40
	local registerVal41 = LUI.UIImage.new()
	registerVal41:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal41:setTopBottom(false, true, -276.000000, -272.000000)
	registerVal41:setRGB(0.820000, 0.980000, 1.000000)
	registerVal41:setZRot(180.000000)
	registerVal41:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal41:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal41)
	registerVal2.Image341 = registerVal41
	local registerVal42 = LUI.UIImage.new()
	registerVal42:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal42:setTopBottom(false, true, -276.000000, -272.000000)
	registerVal42:setRGB(0.820000, 0.980000, 1.000000)
	registerVal42:setXRot(180.000000)
	registerVal42:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal42:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal42)
	registerVal2.Image350 = registerVal42
	local registerVal43 = LUI.UIImage.new()
	registerVal43:setLeftRight(false, true, -507.000000, -503.000000)
	registerVal43:setTopBottom(false, true, -276.000000, -272.000000)
	registerVal43:setRGB(0.820000, 0.980000, 1.000000)
	registerVal43:setZRot(180.000000)
	registerVal43:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal43:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal43)
	registerVal2.Image400 = registerVal43
	local registerVal44 = LUI.UIImage.new()
	registerVal44:setLeftRight(false, true, -508.000000, -504.000000)
	registerVal44:setTopBottom(false, true, -276.000000, -272.000000)
	registerVal44:setRGB(0.820000, 0.980000, 1.000000)
	registerVal44:setXRot(180.000000)
	registerVal44:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal44:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal44)
	registerVal2.Image41 = registerVal44
	local registerVal45 = LUI.UIImage.new()
	registerVal45:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal45:setTopBottom(false, true, -306.500000, -302.500000)
	registerVal45:setRGB(0.820000, 0.980000, 1.000000)
	registerVal45:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal45:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal45)
	registerVal2.Image280 = registerVal45
	local registerVal46 = LUI.UIImage.new()
	registerVal46:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal46:setTopBottom(false, true, -306.500000, -302.500000)
	registerVal46:setRGB(0.820000, 0.980000, 1.000000)
	registerVal46:setYRot(180.000000)
	registerVal46:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal46:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal46)
	registerVal2.Image290 = registerVal46
	local registerVal47 = LUI.UIImage.new()
	registerVal47:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal47:setTopBottom(false, true, -370.000000, -366.000000)
	registerVal47:setRGB(0.820000, 0.980000, 1.000000)
	registerVal47:setZRot(180.000000)
	registerVal47:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal47:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal47)
	registerVal2.Image321 = registerVal47
	local registerVal48 = LUI.UIImage.new()
	registerVal48:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal48:setTopBottom(false, true, -370.000000, -366.000000)
	registerVal48:setRGB(0.820000, 0.980000, 1.000000)
	registerVal48:setXRot(180.000000)
	registerVal48:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal48:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal48)
	registerVal2.Image331 = registerVal48
	local registerVal49 = LUI.UIImage.new()
	registerVal49:setLeftRight(false, true, -507.000000, -503.000000)
	registerVal49:setTopBottom(false, true, -370.500000, -366.500000)
	registerVal49:setRGB(0.820000, 0.980000, 1.000000)
	registerVal49:setZRot(180.000000)
	registerVal49:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal49:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal49)
	registerVal2.Image36 = registerVal49
	local registerVal50 = LUI.UIImage.new()
	registerVal50:setLeftRight(false, true, -508.000000, -504.000000)
	registerVal50:setTopBottom(false, true, -370.500000, -366.500000)
	registerVal50:setRGB(0.820000, 0.980000, 1.000000)
	registerVal50:setXRot(180.000000)
	registerVal50:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal50:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal50)
	registerVal2.Image37 = registerVal50
	local registerVal51 = LUI.UIImage.new()
	registerVal51:setLeftRight(false, true, -508.000000, -504.000000)
	registerVal51:setTopBottom(false, true, -306.500000, -302.500000)
	registerVal51:setRGB(0.820000, 0.980000, 1.000000)
	registerVal51:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal51:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal51)
	registerVal2.Image38 = registerVal51
	local registerVal52 = LUI.UIImage.new()
	registerVal52:setLeftRight(false, true, -507.000000, -503.000000)
	registerVal52:setTopBottom(false, true, -306.500000, -302.500000)
	registerVal52:setRGB(0.820000, 0.980000, 1.000000)
	registerVal52:setYRot(180.000000)
	registerVal52:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal52:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal52)
	registerVal2.Image39 = registerVal52
	local registerVal53 = LUI.UIText.new()
	registerVal53:setLeftRight(true, false, 229.000000, 368.000000)
	registerVal53:setTopBottom(true, false, 6.000000, 26.000000)
	registerVal53:setRGB(0.820000, 0.980000, 1.000000)
	registerVal53:setAlpha(0.800000)
	registerVal53:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal53:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal53:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_3FF0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal53:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal53:linkToElementModel(registerVal2, "transmissionFrequency", true, __FUNC_3FF0_)
	registerVal2:addElement(registerVal53)
	registerVal2.transmissionFrequency = registerVal53
	local registerVal54 = CoD.buttonprompt.new(arg0, arg1)
	registerVal54:setLeftRight(true, false, 379.000000, 505.000000)
	registerVal54:setTopBottom(true, false, 20.500000, 51.500000)
	registerVal54.label:setText(Engine.Localize("HEROES_PLAY_AUDIO"))
	local function __FUNC_40AA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal54.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal54:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_40AA_)
	registerVal2:addElement(registerVal54)
	registerVal2.buttonprompt0 = registerVal54
	local registerVal55 = CoD.Border.new(arg0, arg1)
	registerVal55:setLeftRight(false, false, -25.000000, 115.000000)
	registerVal55:setTopBottom(false, false, -195.500000, -150.000000)
	registerVal55:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal55)
	registerVal2.waveFormBorder = registerVal55
	local registerVal56 = CoD.ChooseCharacterLoadout_CardBack_TransmissionWaveForm.new(arg0, arg1)
	registerVal56:setLeftRight(true, false, 229.000000, 368.000000)
	registerVal56:setTopBottom(true, false, 26.000000, 71.500000)
	local function __FUNC_4183_(arg0)
		registerVal56:setModel(arg0, arg1)
	end

	registerVal56:linkToElementModel(registerVal2, nil, false, __FUNC_4183_)
	local registerVal59 = {}
	local registerVal60 = {}
	registerVal60.stateName = "Visible"
	local function __FUNC_41D2_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "playingSound")
	end

	registerVal60.condition = __FUNC_41D2_
	registerVal59 = {registerVal60}
	registerVal56:mergeStateConditions(registerVal59)
	local function __FUNC_4248_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playingSound"
		arg0:updateElementState(registerVal56, registerVal4)
	end

	registerVal56:linkToElementModel(registerVal56, "playingSound", true, __FUNC_4248_)
	registerVal2:addElement(registerVal56)
	registerVal2.waveForm = registerVal56
	local registerVal57 = CoD.ChooseCharacterLoadout_CardBack_TransmissionContactsList.new(arg0, arg1)
	registerVal57:setLeftRight(true, false, 368.000000, 496.000000)
	registerVal57:setTopBottom(true, false, 114.750000, 404.750000)
	local function __FUNC_436A_(arg0)
		registerVal57:setModel(arg0, arg1)
	end

	registerVal57:linkToElementModel(registerVal2, nil, false, __FUNC_436A_)
	registerVal60 = {}
	local registerVal61 = {}
	registerVal61.stateName = "Visible"
	local function __FUNC_43BA_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "playingSound")
	end

	registerVal61.condition = __FUNC_43BA_
	registerVal60 = {registerVal61}
	registerVal57:mergeStateConditions(registerVal60)
	local function __FUNC_4430_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playingSound"
		arg0:updateElementState(registerVal57, registerVal4)
	end

	registerVal57:linkToElementModel(registerVal57, "playingSound", true, __FUNC_4430_)
	registerVal2:addElement(registerVal57)
	registerVal2.contacts = registerVal57
	local registerVal58 = CoD.ChooseCharacterLoadout_CardBack_FrontOfCardFooter.new(arg0, arg1)
	registerVal58:setLeftRight(true, false, 412.000000, 486.000000)
	registerVal58:setTopBottom(true, false, 23.000000, 57.000000)
	registerVal58:setAlpha(0.000000)
	registerVal58.text:setText(Engine.Localize("HEROES_PLAY_AUDIO"))
	registerVal58.clickableButton.label:setText(Engine.Localize("HEROES_PLAY_AUDIO"))
	local function __FUNC_4552_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal58.Button2:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal58:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_4552_)
	registerVal2:addElement(registerVal58)
	registerVal2.audioPromptPC = registerVal58
	registerVal59 = {}
	registerVal60 = {}
	local function __FUNC_4621_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_4917_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.face:setAlpha(0.000000)
		__FUNC_4917_(registerVal3, {})
		local function __FUNC_4AC9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_4AC9_)
		local function __FUNC_4C7D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_4C7D_)
		local function __FUNC_4E31_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.keyline10:setAlpha(0.000000)
		__FUNC_4E31_(registerVal10, {})
		local function __FUNC_4FE5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Border10:setAlpha(0.000000)
		__FUNC_4FE5_(registerVal11, {})
	end

	registerVal60.DefaultClip = __FUNC_4621_
	registerVal59.DefaultState = registerVal60
	registerVal60 = {}
	local function __FUNC_5199_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal54:completeAnimation()
		registerVal2.buttonprompt0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal54, {})
		registerVal58:completeAnimation()
		registerVal2.audioPromptPC:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal58, {})
	end

	registerVal60.DefaultClip = __FUNC_5199_
	registerVal59.PC = registerVal60
	registerVal2.clipsPerState = registerVal59
	registerVal61 = {}
	local registerVal62 = {}
	registerVal62.stateName = "PC"
	local function __FUNC_52FD_(arg0, arg1, arg2)
		return IsPC()
	end

	registerVal62.condition = __FUNC_52FD_
	registerVal61 = {registerVal62}
	registerVal2:mergeStateConditions(registerVal61)
	local function __FUNC_5342_(arg0)
		arg0.Border10:close()
		arg0.completeAssignmentText:close()
		arg0.TabBar3:close()
		arg0.classifiedBorder:close()
		arg0.buttonprompt0:close()
		arg0.waveFormBorder:close()
		arg0.waveForm:close()
		arg0.contacts:close()
		arg0.audioPromptPC:close()
		arg0.face:close()
		arg0.classifiedIndex:close()
		arg0.transmissionFrequency:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5342_)
	if __FUNC_5C0_ then
		__FUNC_5C0_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseCharacterLoadout_CardBack_Transmission.new = __FUNC_633_
