-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.verticalScrollingTextBox")
require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.Heroes.ChooseCharacterLoadout_TabBar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadout_CardBack_Bio = registerVal1
function CoD.ChooseCharacterLoadout_CardBack_Bio.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadout_CardBack_Bio)
	registerVal2.id = "ChooseCharacterLoadout_CardBack_Bio"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 506.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 443.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -81.250000, -0.250000)
	registerVal3:setAlpha(0.900000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_hero_cardback_gradient"))
	registerVal2:addElement(registerVal3)
	registerVal2.BlackGradient = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 72.000000)
	local function __FUNC_322C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "cardBackIcon", true, __FUNC_322C_)
	registerVal2:addElement(registerVal4)
	registerVal2.face = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 143.000000, 343.000000)
	registerVal5:setTopBottom(true, false, 13.940000, 33.940000)
	registerVal5:setRGB(0.820000, 0.980000, 1.000000)
	registerVal5:setAlpha(0.800000)
	registerVal5:setText(Engine.Localize("HEROES_NAME"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.nameTitle = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 143.000000, 184.000000)
	registerVal6:setTopBottom(true, false, 37.940000, 57.940000)
	registerVal6:setRGB(0.820000, 0.980000, 1.000000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setText(Engine.Localize("HEROES_GENDER"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.genderTitle = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 237.500000, 270.500000)
	registerVal7:setTopBottom(true, false, 13.940000, 33.940000)
	registerVal7:setRGB(0.820000, 0.980000, 1.000000)
	registerVal7:setAlpha(0.800000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_32E0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "realName", true, __FUNC_32E0_)
	registerVal2:addElement(registerVal7)
	registerVal2.name = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 237.500000, 278.500000)
	registerVal8:setTopBottom(true, false, 37.940000, 57.940000)
	registerVal8:setRGB(0.820000, 0.980000, 1.000000)
	registerVal8:setAlpha(0.800000)
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_339A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "genderString", true, __FUNC_339A_)
	registerVal2:addElement(registerVal8)
	registerVal2.gender = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 5.000000, 5.000000)
	registerVal9:setTopBottom(true, false, 109.250000, 110.000000)
	registerVal9:setRGB(0.820000, 0.980000, 1.000000)
	registerVal9:setAlpha(0.700000)
	registerVal2:addElement(registerVal9)
	registerVal2.keyline = registerVal9
	local registerVal10 = CoD.verticalScrollingTextBox.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 7.500000, 495.500000)
	registerVal10:setTopBottom(true, false, 113.500000, 433.000000)
	registerVal10:setRGB(0.820000, 0.980000, 1.000000)
	registerVal10:setAlpha(0.800000)
	registerVal10.textBox:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_3452_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "bio", true, __FUNC_3452_)
	registerVal2:addElement(registerVal10)
	registerVal2.verticalScrollingTextBox0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal11:setTopBottom(false, false, -114.000000, -111.000000)
	registerVal11:setRGB(0.820000, 0.980000, 1.000000)
	registerVal11:setZRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal12:setTopBottom(false, false, 219.500000, 222.500000)
	registerVal12:setRGB(0.820000, 0.980000, 1.000000)
	registerVal12:setZRot(180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Image0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal13:setTopBottom(false, false, 219.500000, 222.500000)
	registerVal13:setRGB(0.820000, 0.980000, 1.000000)
	registerVal13:setZRot(180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Image1 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal14:setTopBottom(false, false, -152.000000, -149.000000)
	registerVal14:setRGB(0.820000, 0.980000, 1.000000)
	registerVal14:setZRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Image3 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal15:setTopBottom(false, false, -152.000000, -149.000000)
	registerVal15:setRGB(0.820000, 0.980000, 1.000000)
	registerVal15:setZRot(180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Image30 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal16:setTopBottom(false, false, -222.000000, -219.000000)
	registerVal16:setRGB(0.820000, 0.980000, 1.000000)
	registerVal16:setZRot(180.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Image4 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal17:setTopBottom(false, false, -223.000000, -220.000000)
	registerVal17:setRGB(0.820000, 0.980000, 1.000000)
	registerVal17:setZRot(180.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Image5 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal18:setTopBottom(false, false, -114.000000, -111.000000)
	registerVal18:setRGB(0.820000, 0.980000, 1.000000)
	registerVal18:setZRot(180.000000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.Image20 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal19:setTopBottom(true, false, 71.250000, 72.000000)
	registerVal19:setRGB(0.820000, 0.980000, 1.000000)
	registerVal19:setAlpha(0.700000)
	registerVal2:addElement(registerVal19)
	registerVal2.keyline1 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal20:setTopBottom(true, false, 0.650000, 0.000000)
	registerVal20:setRGB(0.820000, 0.980000, 1.000000)
	registerVal20:setAlpha(0.700000)
	registerVal2:addElement(registerVal20)
	registerVal2.keyline10 = registerVal20
	local registerVal21 = CoD.Border.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, -1.000000, 128.000000)
	registerVal21:setTopBottom(true, false, 0.380000, 71.500000)
	registerVal21:setRGB(0.820000, 0.980000, 1.000000)
	registerVal2:addElement(registerVal21)
	registerVal2.Border10 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(false, true, -381.000000, -377.000000)
	registerVal22:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal22:setRGB(0.820000, 0.980000, 1.000000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.Image94 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(false, true, -380.000000, -376.000000)
	registerVal23:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal23:setRGB(0.820000, 0.980000, 1.000000)
	registerVal23:setYRot(180.000000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.Image14 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(false, true, -380.000000, -376.000000)
	registerVal24:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal24:setRGB(0.820000, 0.980000, 1.000000)
	registerVal24:setZRot(180.000000)
	registerVal24:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal24:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal24)
	registerVal2.Image15 = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(false, true, -381.000000, -377.000000)
	registerVal25:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal25:setRGB(0.820000, 0.980000, 1.000000)
	registerVal25:setXRot(180.000000)
	registerVal25:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal25:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal25)
	registerVal2.Image16 = registerVal25
	local registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(false, true, -284.000000, -280.000000)
	registerVal26:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal26:setRGB(0.820000, 0.980000, 1.000000)
	registerVal26:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal26:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal26)
	registerVal2.Image17 = registerVal26
	local registerVal27 = LUI.UIImage.new()
	registerVal27:setLeftRight(false, true, -283.000000, -279.000000)
	registerVal27:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal27:setRGB(0.820000, 0.980000, 1.000000)
	registerVal27:setYRot(180.000000)
	registerVal27:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal27:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal27)
	registerVal2.Image18 = registerVal27
	local registerVal28 = LUI.UIImage.new()
	registerVal28:setLeftRight(false, true, -284.000000, -280.000000)
	registerVal28:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal28:setRGB(0.820000, 0.980000, 1.000000)
	registerVal28:setZRot(180.000000)
	registerVal28:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal28:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal28)
	registerVal2.Image19 = registerVal28
	local registerVal29 = LUI.UIImage.new()
	registerVal29:setLeftRight(false, true, -285.000000, -281.000000)
	registerVal29:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal29:setRGB(0.820000, 0.980000, 1.000000)
	registerVal29:setXRot(180.000000)
	registerVal29:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal29:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal29)
	registerVal2.Image21 = registerVal29
	local registerVal30 = LUI.UIImage.new()
	registerVal30:setLeftRight(false, true, -508.000000, -504.000000)
	registerVal30:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal30:setRGB(0.820000, 0.980000, 1.000000)
	registerVal30:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal30:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal30)
	registerVal2.Image22 = registerVal30
	local registerVal31 = LUI.UIImage.new()
	registerVal31:setLeftRight(false, true, -507.000000, -503.000000)
	registerVal31:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal31:setRGB(0.820000, 0.980000, 1.000000)
	registerVal31:setYRot(180.000000)
	registerVal31:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal31:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal31)
	registerVal2.Image23 = registerVal31
	local registerVal32 = LUI.UIImage.new()
	registerVal32:setLeftRight(false, true, -507.500000, -503.500000)
	registerVal32:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal32:setRGB(0.820000, 0.980000, 1.000000)
	registerVal32:setZRot(180.000000)
	registerVal32:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal32:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal32)
	registerVal2.Image24 = registerVal32
	local registerVal33 = LUI.UIImage.new()
	registerVal33:setLeftRight(false, true, -508.500000, -504.500000)
	registerVal33:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal33:setRGB(0.820000, 0.980000, 1.000000)
	registerVal33:setXRot(180.000000)
	registerVal33:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal33:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal33)
	registerVal2.Image25 = registerVal33
	local registerVal34 = LUI.UIImage.new()
	registerVal34:setLeftRight(false, true, -133.000000, -129.000000)
	registerVal34:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal34:setRGB(0.820000, 0.980000, 1.000000)
	registerVal34:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal34:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal34)
	registerVal2.Image6 = registerVal34
	local registerVal35 = LUI.UIImage.new()
	registerVal35:setLeftRight(false, true, -132.000000, -128.000000)
	registerVal35:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal35:setRGB(0.820000, 0.980000, 1.000000)
	registerVal35:setYRot(180.000000)
	registerVal35:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal35:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal35)
	registerVal2.Image7 = registerVal35
	local registerVal36 = LUI.UIImage.new()
	registerVal36:setLeftRight(false, true, -133.000000, -129.000000)
	registerVal36:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal36:setRGB(0.820000, 0.980000, 1.000000)
	registerVal36:setZRot(180.000000)
	registerVal36:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal36:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal36)
	registerVal2.Image28 = registerVal36
	local registerVal37 = LUI.UIImage.new()
	registerVal37:setLeftRight(false, true, -134.000000, -130.000000)
	registerVal37:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal37:setRGB(0.820000, 0.980000, 1.000000)
	registerVal37:setXRot(180.000000)
	registerVal37:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal37:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal37)
	registerVal2.Image29 = registerVal37
	local registerVal38 = LUI.UIImage.new()
	registerVal38:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal38:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal38:setRGB(0.820000, 0.980000, 1.000000)
	registerVal38:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal38:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal38)
	registerVal2.Image31 = registerVal38
	local registerVal39 = LUI.UIImage.new()
	registerVal39:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal39:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal39:setRGB(0.820000, 0.980000, 1.000000)
	registerVal39:setYRot(180.000000)
	registerVal39:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal39:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal39)
	registerVal2.Image32 = registerVal39
	local registerVal40 = LUI.UIImage.new()
	registerVal40:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal40:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal40:setRGB(0.820000, 0.980000, 1.000000)
	registerVal40:setZRot(180.000000)
	registerVal40:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal40:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal40)
	registerVal2.Image33 = registerVal40
	local registerVal41 = LUI.UIImage.new()
	registerVal41:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal41:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal41:setRGB(0.820000, 0.980000, 1.000000)
	registerVal41:setXRot(180.000000)
	registerVal41:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal41:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal41)
	registerVal2.Image34 = registerVal41
	local registerVal42 = LUI.UIImage.new()
	registerVal42:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal42:setTopBottom(false, true, -334.500000, -330.500000)
	registerVal42:setRGB(0.410000, 0.760000, 0.600000)
	registerVal42:setZRot(180.000000)
	registerVal42:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal42:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal42)
	registerVal2.Image8 = registerVal42
	local registerVal43 = LUI.UIImage.new()
	registerVal43:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal43:setTopBottom(false, true, -334.500000, -330.500000)
	registerVal43:setRGB(0.820000, 0.980000, 1.000000)
	registerVal43:setXRot(180.000000)
	registerVal43:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal43:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal43)
	registerVal2.Image9 = registerVal43
	local registerVal44 = LUI.UIImage.new()
	registerVal44:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal44:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal44:setRGB(0.820000, 0.980000, 1.000000)
	registerVal44:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal44:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal44)
	registerVal2.Image10 = registerVal44
	local registerVal45 = LUI.UIImage.new()
	registerVal45:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal45:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal45:setRGB(0.820000, 0.980000, 1.000000)
	registerVal45:setYRot(180.000000)
	registerVal45:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal45:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal45)
	registerVal2.Image11 = registerVal45
	local registerVal46 = LUI.UIImage.new()
	registerVal46:setLeftRight(false, true, -507.500000, -503.500000)
	registerVal46:setTopBottom(false, true, -334.500000, -330.500000)
	registerVal46:setRGB(0.820000, 0.980000, 1.000000)
	registerVal46:setZRot(180.000000)
	registerVal46:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal46:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal46)
	registerVal2.Image12 = registerVal46
	local registerVal47 = LUI.UIImage.new()
	registerVal47:setLeftRight(false, true, -508.500000, -504.500000)
	registerVal47:setTopBottom(false, true, -334.500000, -330.500000)
	registerVal47:setRGB(0.820000, 0.980000, 1.000000)
	registerVal47:setXRot(180.000000)
	registerVal47:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal47:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal47)
	registerVal2.Image13 = registerVal47
	local registerVal48 = LUI.UIImage.new()
	registerVal48:setLeftRight(false, true, -508.000000, -504.000000)
	registerVal48:setTopBottom(false, true, -3.500000, 0.500000)
	registerVal48:setRGB(0.820000, 0.980000, 1.000000)
	registerVal48:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal48:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal48)
	registerVal2.Image26 = registerVal48
	local registerVal49 = LUI.UIImage.new()
	registerVal49:setLeftRight(false, true, -507.000000, -503.000000)
	registerVal49:setTopBottom(false, true, -3.500000, 0.500000)
	registerVal49:setRGB(0.820000, 0.980000, 1.000000)
	registerVal49:setYRot(180.000000)
	registerVal49:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal49:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal49)
	registerVal2.Image27 = registerVal49
	local registerVal50 = CoD.Border.new(arg0, arg1)
	registerVal50:setLeftRight(false, false, -254.000000, 253.000000)
	registerVal50:setTopBottom(false, false, -112.000000, 221.500000)
	registerVal50:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal50)
	registerVal2.iconBorder00 = registerVal50
	local registerVal51 = CoD.ChooseCharacterLoadout_TabBar.new(arg0, arg1)
	registerVal51:setLeftRight(true, false, -2.000000, 508.000000)
	registerVal51:setTopBottom(true, false, 84.500000, 112.500000)
	registerVal51:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal51)
	registerVal2.TabBar3 = registerVal51
	local registerVal52 = LUI.UITightText.new()
	registerVal52:setLeftRight(true, false, 7.500000, 207.500000)
	registerVal52:setTopBottom(true, false, 89.000000, 109.000000)
	registerVal52:setRGB(0.000000, 0.000000, 0.000000)
	registerVal52:setTTF("fonts/escom.ttf")
	registerVal52:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal52:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal52:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal52:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal52:setLetterSpacing(1.000000)
	local function __FUNC_3527_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal52:setText(registerVal1)
		end
	end

	registerVal52:linkToElementModel(registerVal2, "text", true, __FUNC_3527_)
	registerVal2:addElement(registerVal52)
	registerVal2.index = registerVal52
	local registerVal53 = {}
	local registerVal54 = {}
	local function __FUNC_35B8_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_3BB5_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.face:setAlpha(0.000000)
		__FUNC_3BB5_(registerVal4, {})
		local function __FUNC_3D69_(arg0, arg1)
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

		registerVal5:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_3D69_)
		local function __FUNC_3F1D_(arg0, arg1)
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

		registerVal6:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_3F1D_)
		local function __FUNC_40D1_(arg0, arg1)
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

		registerVal7:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_40D1_)
		local function __FUNC_4285_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_4285_)
		local function __FUNC_4439_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_4439_)
		local function __FUNC_45ED_(arg0, arg1)
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

		registerVal10:completeAnimation()
		registerVal2.verticalScrollingTextBox0:setAlpha(0.000000)
		__FUNC_45ED_(registerVal10, {})
		local function __FUNC_47A1_(arg0, arg1)
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

		registerVal19:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal19:setAlpha(0.000000)
		registerVal19:registerEventHandler("transition_complete_keyframe", __FUNC_47A1_)
		local function __FUNC_4955_(arg0, arg1)
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

		registerVal20:completeAnimation()
		registerVal2.keyline10:setAlpha(0.000000)
		__FUNC_4955_(registerVal20, {})
		local function __FUNC_4B09_(arg0, arg1)
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

		registerVal21:completeAnimation()
		registerVal2.Border10:setAlpha(0.000000)
		__FUNC_4B09_(registerVal21, {})
		local function __FUNC_4CBD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal50:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
		registerVal50:setAlpha(0.000000)
		registerVal50:registerEventHandler("transition_complete_keyframe", __FUNC_4CBD_)
		local function __FUNC_4E71_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal51:completeAnimation()
		registerVal2.TabBar3:setAlpha(0.000000)
		__FUNC_4E71_(registerVal51, {})
		local function __FUNC_5025_(arg0, arg1)
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

		registerVal52:completeAnimation()
		registerVal2.index:setAlpha(0.000000)
		__FUNC_5025_(registerVal52, {})
	end

	registerVal54.DefaultClip = __FUNC_35B8_
	registerVal53.DefaultState = registerVal54
	registerVal2.clipsPerState = registerVal53
	local function __FUNC_51D9_(arg0)
		arg0.verticalScrollingTextBox0:close()
		arg0.Border10:close()
		arg0.iconBorder00:close()
		arg0.TabBar3:close()
		arg0.face:close()
		arg0.name:close()
		arg0.gender:close()
		arg0.index:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_51D9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

