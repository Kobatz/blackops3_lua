-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.verticalScrollingTextBox")
require("ui.uieditor.widgets.Heroes.ChooseCharacterLoadout_TabBar")
require("ui.uieditor.widgets.CharacterCustomization.ChooseCharacterLoadout_CardBack_LockedTransmission_Assignment")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadout_CardBack_LockedTransmission = registerVal1
function CoD.ChooseCharacterLoadout_CardBack_LockedTransmission.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadout_CardBack_LockedTransmission)
	registerVal2.id = "ChooseCharacterLoadout_CardBack_LockedTransmission"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 506.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 443.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 72.000000)
	local function __FUNC_2D9C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "cardBackIcon", true, __FUNC_2D9C_)
	registerVal2:addElement(registerVal3)
	registerVal2.face = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 229.000000, 372.000000)
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
	registerVal32:setLeftRight(true, false, 282.000000, 324.000000)
	registerVal32:setTopBottom(true, false, 26.000000, 68.000000)
	registerVal32:setImage(RegisterImage("uie_t7_menu_cac_iconlock"))
	registerVal2:addElement(registerVal32)
	registerVal2.lockImage = registerVal32
	local registerVal33 = CoD.verticalScrollingTextBox.new(arg0, arg1)
	registerVal33:setLeftRight(true, true, 8.000000, -10.000000)
	registerVal33:setTopBottom(true, false, 113.500000, 158.000000)
	registerVal33:setRGB(0.820000, 0.980000, 1.000000)
	registerVal33:setAlpha(0.800000)
	registerVal33.textBox:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal33.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_2E50_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal33.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal33:linkToElementModel(registerVal2, "assignmentAccessString", true, __FUNC_2E50_)
	registerVal2:addElement(registerVal33)
	registerVal2.completeAssignmentText = registerVal33
	local registerVal34 = LUI.UIImage.new()
	registerVal34:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal34:setTopBottom(false, false, -133.250000, -130.250000)
	registerVal34:setRGB(0.820000, 0.980000, 1.000000)
	registerVal34:setZRot(180.000000)
	registerVal34:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal34:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal34)
	registerVal2.Image40 = registerVal34
	local registerVal35 = LUI.UIImage.new()
	registerVal35:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal35:setTopBottom(false, false, -133.250000, -130.250000)
	registerVal35:setRGB(0.820000, 0.980000, 1.000000)
	registerVal35:setZRot(180.000000)
	registerVal35:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal35:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal35)
	registerVal2.Image50 = registerVal35
	local registerVal36 = LUI.UIImage.new()
	registerVal36:setLeftRight(false, true, -4.000000, 21.000000)
	registerVal36:setTopBottom(false, false, -132.500000, -129.500000)
	registerVal36:setRGB(0.820000, 0.980000, 1.000000)
	registerVal36:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal36:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal36)
	registerVal2.Image60 = registerVal36
	local registerVal37 = LUI.UIImage.new()
	registerVal37:setLeftRight(false, true, -4.000000, 21.000000)
	registerVal37:setTopBottom(false, false, -132.500000, -129.500000)
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
	local function __FUNC_2F27_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal39:setText(registerVal1)
		end
	end

	registerVal39:linkToElementModel(registerVal2, "transmissionName", true, __FUNC_2F27_)
	registerVal2:addElement(registerVal39)
	registerVal2.classifiedIndex = registerVal39
	local registerVal40 = CoD.Border.new(arg0, arg1)
	registerVal40:setLeftRight(false, false, -254.000000, 253.000000)
	registerVal40:setTopBottom(false, false, -108.000000, -63.500000)
	registerVal40:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal40)
	registerVal2.classifiedBorder = registerVal40
	local registerVal41 = LUI.UIImage.new()
	registerVal41:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal41:setTopBottom(false, true, -288.500000, -284.500000)
	registerVal41:setRGB(0.820000, 0.980000, 1.000000)
	registerVal41:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal41:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal41)
	registerVal2.Image280 = registerVal41
	local registerVal42 = LUI.UIImage.new()
	registerVal42:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal42:setTopBottom(false, true, -288.500000, -284.500000)
	registerVal42:setRGB(0.820000, 0.980000, 1.000000)
	registerVal42:setYRot(180.000000)
	registerVal42:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal42:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal42)
	registerVal2.Image290 = registerVal42
	local registerVal43 = LUI.UIImage.new()
	registerVal43:setLeftRight(false, true, -508.000000, -504.000000)
	registerVal43:setTopBottom(false, true, -288.500000, -284.500000)
	registerVal43:setRGB(0.820000, 0.980000, 1.000000)
	registerVal43:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal43:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal43)
	registerVal2.Image38 = registerVal43
	local registerVal44 = LUI.UIImage.new()
	registerVal44:setLeftRight(false, true, -507.000000, -503.000000)
	registerVal44:setTopBottom(false, true, -288.500000, -284.500000)
	registerVal44:setRGB(0.820000, 0.980000, 1.000000)
	registerVal44:setYRot(180.000000)
	registerVal44:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal44:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal44)
	registerVal2.Image39 = registerVal44
	local registerVal45 = CoD.ChooseCharacterLoadout_CardBack_LockedTransmission_Assignment.new(arg0, arg1)
	registerVal45:setLeftRight(true, false, -20.000000, 527.000000)
	registerVal45:setTopBottom(true, false, 180.000000, 316.000000)
	local function __FUNC_2FB8_(arg0)
		registerVal45:setModel(arg0, arg1)
	end

	registerVal45:linkToElementModel(registerVal2, nil, false, __FUNC_2FB8_)
	registerVal2:addElement(registerVal45)
	registerVal2.assignmentBlock = registerVal45
	local registerVal46 = {}
	local registerVal47 = {}
	local function __FUNC_300A_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_32FF_(arg0, arg1)
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
		__FUNC_32FF_(registerVal3, {})
		local function __FUNC_34B1_(arg0, arg1)
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
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_34B1_)
		local function __FUNC_3665_(arg0, arg1)
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
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_3665_)
		local function __FUNC_3819_(arg0, arg1)
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
		__FUNC_3819_(registerVal10, {})
		local function __FUNC_39CD_(arg0, arg1)
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
		__FUNC_39CD_(registerVal11, {})
	end

	registerVal47.DefaultClip = __FUNC_300A_
	registerVal46.DefaultState = registerVal47
	registerVal2.clipsPerState = registerVal46
	local function __FUNC_3B81_(arg0)
		arg0.Border10:close()
		arg0.completeAssignmentText:close()
		arg0.TabBar3:close()
		arg0.classifiedBorder:close()
		arg0.assignmentBlock:close()
		arg0.face:close()
		arg0.classifiedIndex:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3B81_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

