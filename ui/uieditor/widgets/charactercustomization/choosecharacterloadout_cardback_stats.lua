-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.Heroes.ChooseCharacterLoadout_TabBar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadout_CardBack_Stats = registerVal1
function CoD.ChooseCharacterLoadout_CardBack_Stats.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadout_CardBack_Stats)
	registerVal2.id = "ChooseCharacterLoadout_CardBack_Stats"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 506.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 443.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 72.000000)
	local function __FUNC_3E2B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "cardBackIcon", true, __FUNC_3E2B_)
	registerVal2:addElement(registerVal3)
	registerVal2.face = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 143.000000, 343.000000)
	registerVal4:setTopBottom(true, false, 13.940000, 33.940000)
	registerVal4:setRGB(0.820000, 0.980000, 1.000000)
	registerVal4:setAlpha(0.800000)
	registerVal4:setText(Engine.Localize("HEROES_NAME"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.nameTitle = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 143.000000, 184.000000)
	registerVal5:setTopBottom(true, false, 37.940000, 57.940000)
	registerVal5:setRGB(0.820000, 0.980000, 1.000000)
	registerVal5:setAlpha(0.800000)
	registerVal5:setText(Engine.Localize("HEROES_GENDER"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.genderTitle = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 237.500000, 270.500000)
	registerVal6:setTopBottom(true, false, 13.940000, 33.940000)
	registerVal6:setRGB(0.820000, 0.980000, 1.000000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_3EDC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "realName", true, __FUNC_3EDC_)
	registerVal2:addElement(registerVal6)
	registerVal2.name = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 237.500000, 278.500000)
	registerVal7:setTopBottom(true, false, 37.940000, 57.940000)
	registerVal7:setRGB(0.820000, 0.980000, 1.000000)
	registerVal7:setAlpha(0.800000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_3F96_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "genderString", true, __FUNC_3F96_)
	registerVal2:addElement(registerVal7)
	registerVal2.gender = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 5.000000, 5.000000)
	registerVal8:setTopBottom(true, false, 109.250000, 110.000000)
	registerVal8:setRGB(0.820000, 0.980000, 1.000000)
	registerVal8:setAlpha(0.700000)
	registerVal2:addElement(registerVal8)
	registerVal2.keyline = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal9:setTopBottom(false, false, -114.000000, -111.000000)
	registerVal9:setRGB(0.820000, 0.980000, 1.000000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image2 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal10:setTopBottom(false, false, 219.500000, 222.500000)
	registerVal10:setRGB(0.820000, 0.980000, 1.000000)
	registerVal10:setZRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal11:setTopBottom(false, false, 219.500000, 222.500000)
	registerVal11:setRGB(0.820000, 0.980000, 1.000000)
	registerVal11:setZRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image1 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal12:setTopBottom(false, false, -152.000000, -149.000000)
	registerVal12:setRGB(0.820000, 0.980000, 1.000000)
	registerVal12:setZRot(180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Image3 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal13:setTopBottom(false, false, -152.000000, -149.000000)
	registerVal13:setRGB(0.820000, 0.980000, 1.000000)
	registerVal13:setZRot(180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Image30 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal14:setTopBottom(false, false, -222.000000, -219.000000)
	registerVal14:setRGB(0.820000, 0.980000, 1.000000)
	registerVal14:setZRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Image4 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal15:setTopBottom(false, false, -223.000000, -220.000000)
	registerVal15:setRGB(0.820000, 0.980000, 1.000000)
	registerVal15:setZRot(180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Image5 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal16:setTopBottom(false, false, -114.000000, -111.000000)
	registerVal16:setRGB(0.820000, 0.980000, 1.000000)
	registerVal16:setZRot(180.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Image20 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal17:setTopBottom(true, false, 71.250000, 72.000000)
	registerVal17:setRGB(0.820000, 0.980000, 1.000000)
	registerVal17:setAlpha(0.700000)
	registerVal2:addElement(registerVal17)
	registerVal2.keyline1 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal18:setTopBottom(true, false, 0.650000, 0.000000)
	registerVal18:setRGB(0.820000, 0.980000, 1.000000)
	registerVal18:setAlpha(0.700000)
	registerVal2:addElement(registerVal18)
	registerVal2.keyline10 = registerVal18
	local registerVal19 = CoD.Border.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, -1.000000, 128.000000)
	registerVal19:setTopBottom(true, false, 0.380000, 71.500000)
	registerVal19:setRGB(0.820000, 0.980000, 1.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.Border10 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(false, true, -381.000000, -377.000000)
	registerVal20:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal20:setRGB(0.820000, 0.980000, 1.000000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.Image94 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(false, true, -380.000000, -376.000000)
	registerVal21:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal21:setRGB(0.820000, 0.980000, 1.000000)
	registerVal21:setYRot(180.000000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.Image14 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(false, true, -380.000000, -376.000000)
	registerVal22:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal22:setRGB(0.820000, 0.980000, 1.000000)
	registerVal22:setZRot(180.000000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.Image15 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(false, true, -381.000000, -377.000000)
	registerVal23:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal23:setRGB(0.820000, 0.980000, 1.000000)
	registerVal23:setXRot(180.000000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.Image16 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(false, true, -284.000000, -280.000000)
	registerVal24:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal24:setRGB(0.820000, 0.980000, 1.000000)
	registerVal24:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal24:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal24)
	registerVal2.Image17 = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(false, true, -283.000000, -279.000000)
	registerVal25:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal25:setRGB(0.820000, 0.980000, 1.000000)
	registerVal25:setYRot(180.000000)
	registerVal25:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal25:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal25)
	registerVal2.Image18 = registerVal25
	local registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(false, true, -284.000000, -280.000000)
	registerVal26:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal26:setRGB(0.820000, 0.980000, 1.000000)
	registerVal26:setZRot(180.000000)
	registerVal26:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal26:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal26)
	registerVal2.Image19 = registerVal26
	local registerVal27 = LUI.UIImage.new()
	registerVal27:setLeftRight(false, true, -285.000000, -281.000000)
	registerVal27:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal27:setRGB(0.820000, 0.980000, 1.000000)
	registerVal27:setXRot(180.000000)
	registerVal27:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal27:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal27)
	registerVal2.Image21 = registerVal27
	local registerVal28 = LUI.UIImage.new()
	registerVal28:setLeftRight(false, true, -508.000000, -504.000000)
	registerVal28:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal28:setRGB(0.820000, 0.980000, 1.000000)
	registerVal28:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal28:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal28)
	registerVal2.Image22 = registerVal28
	local registerVal29 = LUI.UIImage.new()
	registerVal29:setLeftRight(false, true, -507.000000, -503.000000)
	registerVal29:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal29:setRGB(0.820000, 0.980000, 1.000000)
	registerVal29:setYRot(180.000000)
	registerVal29:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal29:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal29)
	registerVal2.Image23 = registerVal29
	local registerVal30 = LUI.UIImage.new()
	registerVal30:setLeftRight(false, true, -507.500000, -503.500000)
	registerVal30:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal30:setRGB(0.820000, 0.980000, 1.000000)
	registerVal30:setZRot(180.000000)
	registerVal30:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal30:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal30)
	registerVal2.Image24 = registerVal30
	local registerVal31 = LUI.UIImage.new()
	registerVal31:setLeftRight(false, true, -508.500000, -504.500000)
	registerVal31:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal31:setRGB(0.820000, 0.980000, 1.000000)
	registerVal31:setXRot(180.000000)
	registerVal31:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal31:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal31)
	registerVal2.Image25 = registerVal31
	local registerVal32 = LUI.UIImage.new()
	registerVal32:setLeftRight(false, true, -133.000000, -129.000000)
	registerVal32:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal32:setRGB(0.820000, 0.980000, 1.000000)
	registerVal32:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal32:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal32)
	registerVal2.Image6 = registerVal32
	local registerVal33 = LUI.UIImage.new()
	registerVal33:setLeftRight(false, true, -132.000000, -128.000000)
	registerVal33:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal33:setRGB(0.820000, 0.980000, 1.000000)
	registerVal33:setYRot(180.000000)
	registerVal33:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal33:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal33)
	registerVal2.Image7 = registerVal33
	local registerVal34 = LUI.UIImage.new()
	registerVal34:setLeftRight(false, true, -133.000000, -129.000000)
	registerVal34:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal34:setRGB(0.820000, 0.980000, 1.000000)
	registerVal34:setZRot(180.000000)
	registerVal34:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal34:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal34)
	registerVal2.Image28 = registerVal34
	local registerVal35 = LUI.UIImage.new()
	registerVal35:setLeftRight(false, true, -134.000000, -130.000000)
	registerVal35:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal35:setRGB(0.820000, 0.980000, 1.000000)
	registerVal35:setXRot(180.000000)
	registerVal35:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal35:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal35)
	registerVal2.Image29 = registerVal35
	local registerVal36 = LUI.UIImage.new()
	registerVal36:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal36:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal36:setRGB(0.820000, 0.980000, 1.000000)
	registerVal36:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal36:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal36)
	registerVal2.Image31 = registerVal36
	local registerVal37 = LUI.UIImage.new()
	registerVal37:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal37:setTopBottom(false, true, -374.500000, -370.500000)
	registerVal37:setRGB(0.820000, 0.980000, 1.000000)
	registerVal37:setYRot(180.000000)
	registerVal37:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal37:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal37)
	registerVal2.Image32 = registerVal37
	local registerVal38 = LUI.UIImage.new()
	registerVal38:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal38:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal38:setRGB(0.820000, 0.980000, 1.000000)
	registerVal38:setZRot(180.000000)
	registerVal38:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal38:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal38)
	registerVal2.Image33 = registerVal38
	local registerVal39 = LUI.UIImage.new()
	registerVal39:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal39:setTopBottom(false, true, -444.000000, -440.000000)
	registerVal39:setRGB(0.820000, 0.980000, 1.000000)
	registerVal39:setXRot(180.000000)
	registerVal39:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal39:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal39)
	registerVal2.Image34 = registerVal39
	local registerVal40 = LUI.UIImage.new()
	registerVal40:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal40:setTopBottom(false, true, -334.500000, -330.500000)
	registerVal40:setRGB(0.410000, 0.760000, 0.600000)
	registerVal40:setZRot(180.000000)
	registerVal40:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal40:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal40)
	registerVal2.Image8 = registerVal40
	local registerVal41 = LUI.UIImage.new()
	registerVal41:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal41:setTopBottom(false, true, -334.500000, -330.500000)
	registerVal41:setRGB(0.820000, 0.980000, 1.000000)
	registerVal41:setXRot(180.000000)
	registerVal41:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal41:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal41)
	registerVal2.Image9 = registerVal41
	local registerVal42 = LUI.UIImage.new()
	registerVal42:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal42:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal42:setRGB(0.820000, 0.980000, 1.000000)
	registerVal42:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal42:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal42)
	registerVal2.Image10 = registerVal42
	local registerVal43 = LUI.UIImage.new()
	registerVal43:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal43:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal43:setRGB(0.820000, 0.980000, 1.000000)
	registerVal43:setYRot(180.000000)
	registerVal43:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal43:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal43)
	registerVal2.Image11 = registerVal43
	local registerVal44 = LUI.UIImage.new()
	registerVal44:setLeftRight(false, true, -507.500000, -503.500000)
	registerVal44:setTopBottom(false, true, -334.500000, -330.500000)
	registerVal44:setRGB(0.820000, 0.980000, 1.000000)
	registerVal44:setZRot(180.000000)
	registerVal44:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal44:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal44)
	registerVal2.Image12 = registerVal44
	local registerVal45 = LUI.UIImage.new()
	registerVal45:setLeftRight(false, true, -508.500000, -504.500000)
	registerVal45:setTopBottom(false, true, -334.500000, -330.500000)
	registerVal45:setRGB(0.820000, 0.980000, 1.000000)
	registerVal45:setXRot(180.000000)
	registerVal45:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal45:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal45)
	registerVal2.Image13 = registerVal45
	local registerVal46 = LUI.UIImage.new()
	registerVal46:setLeftRight(false, true, -508.000000, -504.000000)
	registerVal46:setTopBottom(false, true, -3.500000, 0.500000)
	registerVal46:setRGB(0.820000, 0.980000, 1.000000)
	registerVal46:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal46:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal46)
	registerVal2.Image26 = registerVal46
	local registerVal47 = LUI.UIImage.new()
	registerVal47:setLeftRight(false, true, -507.000000, -503.000000)
	registerVal47:setTopBottom(false, true, -3.500000, 0.500000)
	registerVal47:setRGB(0.820000, 0.980000, 1.000000)
	registerVal47:setYRot(180.000000)
	registerVal47:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal47:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal47)
	registerVal2.Image27 = registerVal47
	local registerVal48 = CoD.Border.new(arg0, arg1)
	registerVal48:setLeftRight(false, false, -254.000000, 253.000000)
	registerVal48:setTopBottom(false, false, -112.000000, 221.500000)
	registerVal48:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal48)
	registerVal2.iconBorder00 = registerVal48
	local registerVal49 = CoD.ChooseCharacterLoadout_TabBar.new(arg0, arg1)
	registerVal49:setLeftRight(true, false, -2.000000, 508.000000)
	registerVal49:setTopBottom(true, false, 84.500000, 112.500000)
	registerVal49:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal49)
	registerVal2.TabBar3 = registerVal49
	local registerVal50 = LUI.UITightText.new()
	registerVal50:setLeftRight(true, false, 7.500000, 207.500000)
	registerVal50:setTopBottom(true, false, 89.000000, 109.000000)
	registerVal50:setRGB(0.000000, 0.000000, 0.000000)
	registerVal50:setTTF("fonts/escom.ttf")
	registerVal50:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal50:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal50:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal50:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal50:setLetterSpacing(1.000000)
	local function __FUNC_404E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal50:setText(registerVal1)
		end
	end

	registerVal50:linkToElementModel(registerVal2, "text", true, __FUNC_404E_)
	registerVal2:addElement(registerVal50)
	registerVal2.index = registerVal50
	local registerVal51 = CoD.ChooseCharacterLoadout_TabBar.new(arg0, arg1)
	registerVal51:setLeftRight(true, true, 5.000000, -255.500000)
	registerVal51:setTopBottom(true, false, 123.500000, 151.500000)
	registerVal51:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal51)
	registerVal2.weaponHeaderBar = registerVal51
	local registerVal52 = CoD.ChooseCharacterLoadout_TabBar.new(arg0, arg1)
	registerVal52:setLeftRight(true, true, 255.500000, -5.000000)
	registerVal52:setTopBottom(true, false, 123.500000, 151.500000)
	registerVal52:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal52)
	registerVal2.abilityHeaderBard = registerVal52
	local registerVal53 = LUI.UIText.new()
	registerVal53:setLeftRight(true, true, 5.000000, -255.500000)
	registerVal53:setTopBottom(true, false, 127.500000, 147.500000)
	registerVal53:setRGB(0.000000, 0.000000, 0.000000)
	registerVal53:setTTF("fonts/default.ttf")
	registerVal53:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal53:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_40E0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal53:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal53:linkToElementModel(registerVal2, "weaponName", true, __FUNC_40E0_)
	registerVal2:addElement(registerVal53)
	registerVal2.weaponName = registerVal53
	local registerVal54 = LUI.UIText.new()
	registerVal54:setLeftRight(true, true, 255.500000, -5.000000)
	registerVal54:setTopBottom(true, false, 127.500000, 147.500000)
	registerVal54:setRGB(0.000000, 0.000000, 0.000000)
	registerVal54:setTTF("fonts/default.ttf")
	registerVal54:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal54:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_419B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal54:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal54:linkToElementModel(registerVal2, "abilityName", true, __FUNC_419B_)
	registerVal2:addElement(registerVal54)
	registerVal2.abilityName = registerVal54
	local registerVal55 = CoD.Border.new(arg0, arg1)
	registerVal55:setLeftRight(true, true, 5.500000, -255.500000)
	registerVal55:setTopBottom(true, false, 151.500000, 255.250000)
	registerVal55:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal55)
	registerVal2.weaponBorder = registerVal55
	local registerVal56 = CoD.Border.new(arg0, arg1)
	registerVal56:setLeftRight(true, true, 255.500000, -5.000000)
	registerVal56:setTopBottom(true, false, 151.500000, 255.250000)
	registerVal56:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal56)
	registerVal2.abilityBorder = registerVal56
	local registerVal57 = LUI.UIImage.new()
	registerVal57:setLeftRight(true, true, 6.500000, -256.500000)
	registerVal57:setTopBottom(true, false, 200.880000, 201.880000)
	registerVal57:setRGB(0.820000, 0.980000, 1.000000)
	registerVal57:setAlpha(0.700000)
	registerVal2:addElement(registerVal57)
	registerVal2.weaponKeyline = registerVal57
	local registerVal58 = LUI.UIImage.new()
	registerVal58:setLeftRight(true, true, 256.500000, -5.500000)
	registerVal58:setTopBottom(true, false, 200.880000, 201.880000)
	registerVal58:setRGB(0.820000, 0.980000, 1.000000)
	registerVal58:setAlpha(0.700000)
	registerVal2:addElement(registerVal58)
	registerVal2.abilityKeyline = registerVal58
	local registerVal59 = LUI.UIText.new()
	registerVal59:setLeftRight(true, true, 6.250000, -254.250000)
	registerVal59:setTopBottom(true, false, 185.880000, 199.880000)
	registerVal59:setRGB(0.820000, 0.980000, 1.000000)
	registerVal59:setText(Engine.Localize("MENU_KILLS"))
	registerVal59:setTTF("fonts/default.ttf")
	registerVal59:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal59:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal59)
	registerVal2.weaponKillsLabel = registerVal59
	local registerVal60 = LUI.UIText.new()
	registerVal60:setLeftRight(true, true, 255.500000, -5.000000)
	registerVal60:setTopBottom(true, false, 185.880000, 199.880000)
	registerVal60:setRGB(0.820000, 0.980000, 1.000000)
	registerVal60:setTTF("fonts/default.ttf")
	registerVal60:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal60:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_4253_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal60:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal60:linkToElementModel(registerVal2, "abilityKillsLabel", true, __FUNC_4253_)
	registerVal2:addElement(registerVal60)
	registerVal2.abilityKillsLabel = registerVal60
	local registerVal61 = LUI.UIText.new()
	registerVal61:setLeftRight(true, true, 5.000000, -255.500000)
	registerVal61:setTopBottom(true, false, 156.500000, 182.500000)
	registerVal61:setRGB(0.870000, 0.990000, 1.000000)
	registerVal61:setTTF("fonts/default.ttf")
	registerVal61:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal61:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_430A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal61:setText(registerVal1)
		end
	end

	registerVal61:linkToElementModel(registerVal2, "weaponKills", true, __FUNC_430A_)
	registerVal2:addElement(registerVal61)
	registerVal2.weaponKills = registerVal61
	local registerVal62 = LUI.UIText.new()
	registerVal62:setLeftRight(true, true, 255.250000, -5.250000)
	registerVal62:setTopBottom(true, false, 156.500000, 182.500000)
	registerVal62:setRGB(0.870000, 0.990000, 1.000000)
	registerVal62:setTTF("fonts/default.ttf")
	registerVal62:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal62:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_439C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal62:setText(registerVal1)
		end
	end

	registerVal62:linkToElementModel(registerVal2, "abilityKills", true, __FUNC_439C_)
	registerVal2:addElement(registerVal62)
	registerVal2.abilityKills = registerVal62
	local registerVal63 = LUI.UIText.new()
	registerVal63:setLeftRight(true, true, 6.250000, -254.250000)
	registerVal63:setTopBottom(true, false, 206.880000, 220.880000)
	registerVal63:setRGB(0.820000, 0.980000, 1.000000)
	registerVal63:setText(Engine.Localize("MENU_KILLS_PER_USE"))
	registerVal63:setTTF("fonts/default.ttf")
	registerVal63:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal63:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal63)
	registerVal2.weaponKillsPerUseLAbel = registerVal63
	local registerVal64 = LUI.UIText.new()
	registerVal64:setLeftRight(true, true, 256.500000, -4.000000)
	registerVal64:setTopBottom(true, false, 206.880000, 220.880000)
	registerVal64:setRGB(0.820000, 0.980000, 1.000000)
	registerVal64:setTTF("fonts/default.ttf")
	registerVal64:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal64:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_4430_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal64:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal64:linkToElementModel(registerVal2, "abilityKillsPerUseLabel", true, __FUNC_4430_)
	registerVal2:addElement(registerVal64)
	registerVal2.abilityKillsPerUseLabel = registerVal64
	local registerVal65 = LUI.UIText.new()
	registerVal65:setLeftRight(true, true, 6.250000, -254.250000)
	registerVal65:setTopBottom(true, false, 224.880000, 250.880000)
	registerVal65:setRGB(0.870000, 0.990000, 1.000000)
	registerVal65:setTTF("fonts/default.ttf")
	registerVal65:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal65:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_44EA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal65:setText(registerVal1)
		end
	end

	registerVal65:linkToElementModel(registerVal2, "weaponKillsPerUse", true, __FUNC_44EA_)
	registerVal2:addElement(registerVal65)
	registerVal2.weaponKillsPerUse = registerVal65
	local registerVal66 = LUI.UIText.new()
	registerVal66:setLeftRight(true, true, 256.500000, -4.000000)
	registerVal66:setTopBottom(true, false, 224.880000, 250.880000)
	registerVal66:setRGB(0.870000, 0.990000, 1.000000)
	registerVal66:setTTF("fonts/default.ttf")
	registerVal66:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal66:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_457C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal66:setText(registerVal1)
		end
	end

	registerVal66:linkToElementModel(registerVal2, "abilityKillsPerUse", true, __FUNC_457C_)
	registerVal2:addElement(registerVal66)
	registerVal2.abilityKillsPerUse = registerVal66
	local registerVal67 = {}
	local registerVal68 = {}
	local function __FUNC_4610_()
		registerVal2:setupElementClipCounter(12.000000)
		local function __FUNC_4BAA_(arg0, arg1)
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
		__FUNC_4BAA_(registerVal3, {})
		local function __FUNC_4D5D_(arg0, arg1)
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
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_4D5D_)
		local function __FUNC_4F11_(arg0, arg1)
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

		registerVal5:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_4F11_)
		local function __FUNC_50C5_(arg0, arg1)
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
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_50C5_)
		local function __FUNC_5279_(arg0, arg1)
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

		registerVal7:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_5279_)
		local function __FUNC_542D_(arg0, arg1)
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

		registerVal8:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_542D_)
		local function __FUNC_55E1_(arg0, arg1)
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

		registerVal17:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal17:setAlpha(0.000000)
		registerVal17:registerEventHandler("transition_complete_keyframe", __FUNC_55E1_)
		local function __FUNC_5795_(arg0, arg1)
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

		registerVal18:completeAnimation()
		registerVal2.keyline10:setAlpha(0.000000)
		__FUNC_5795_(registerVal18, {})
		local function __FUNC_5949_(arg0, arg1)
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

		registerVal19:completeAnimation()
		registerVal2.Border10:setAlpha(0.000000)
		__FUNC_5949_(registerVal19, {})
		local function __FUNC_5AFD_(arg0, arg1)
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

		registerVal48:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
		registerVal48:setAlpha(0.000000)
		registerVal48:registerEventHandler("transition_complete_keyframe", __FUNC_5AFD_)
		local function __FUNC_5CB1_(arg0, arg1)
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

		registerVal49:completeAnimation()
		registerVal2.TabBar3:setAlpha(0.000000)
		__FUNC_5CB1_(registerVal49, {})
		local function __FUNC_5E65_(arg0, arg1)
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

		registerVal50:completeAnimation()
		registerVal2.index:setAlpha(0.000000)
		__FUNC_5E65_(registerVal50, {})
	end

	registerVal68.DefaultClip = __FUNC_4610_
	registerVal67.DefaultState = registerVal68
	registerVal2.clipsPerState = registerVal67
	local function __FUNC_6019_(arg0)
		arg0.Border10:close()
		arg0.iconBorder00:close()
		arg0.TabBar3:close()
		arg0.weaponHeaderBar:close()
		arg0.abilityHeaderBard:close()
		arg0.weaponBorder:close()
		arg0.abilityBorder:close()
		arg0.face:close()
		arg0.name:close()
		arg0.gender:close()
		arg0.index:close()
		arg0.weaponName:close()
		arg0.abilityName:close()
		arg0.abilityKillsLabel:close()
		arg0.weaponKills:close()
		arg0.abilityKills:close()
		arg0.abilityKillsPerUseLabel:close()
		arg0.weaponKillsPerUse:close()
		arg0.abilityKillsPerUse:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6019_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

