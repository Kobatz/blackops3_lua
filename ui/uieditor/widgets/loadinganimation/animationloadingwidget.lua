-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AnimationLoadingWidget = registerVal1
function CoD.AnimationLoadingWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.AnimationLoadingWidget)
	registerVal2.id = "AnimationLoadingWidget"
	registerVal2.soundSet = "Special_widgets"
	registerVal2:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 144.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 144.880000)
	registerVal3:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Black = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal4:setRGB(1.000000, 0.390000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_loadingspinner_glow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_loadingspinner_dotshex2"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.DotsHex2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal6:setRGB(1.000000, 0.390000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape1"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Shape1 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal7:setRGB(1.000000, 0.390000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape2"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Shape2 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal8:setRGB(1.000000, 0.390000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape3"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Shape3 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal9:setRGB(1.000000, 0.390000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape4"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Shape4 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal10:setRGB(1.000000, 0.390000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape5"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Shape5 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal11:setRGB(1.000000, 0.390000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape6"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Shape6 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal12:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal12:setRGB(1.000000, 0.390000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape7"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Shape7 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal13:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal13:setRGB(1.000000, 0.390000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape8"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Shape8 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal14:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal14:setRGB(1.000000, 0.390000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape9"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Shape9 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal15:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal15:setRGB(1.000000, 0.390000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape10"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Shape10 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal16:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal16:setRGB(1.000000, 0.390000, 0.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape11"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Shape11 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal17:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal17:setRGB(1.000000, 0.390000, 0.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape12"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Shape12 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal18:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal18:setRGB(1.000000, 0.390000, 0.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape13"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.Shape13 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal19:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal19:setRGB(1.000000, 0.390000, 0.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape14"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.Shape14 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal20:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal20:setRGB(1.000000, 0.390000, 0.000000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape15"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.Shape15 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal21:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal21:setRGB(1.000000, 0.390000, 0.000000)
	registerVal21:setAlpha(0.000000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape16"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.Shape16 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal22:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal22:setRGB(1.000000, 0.390000, 0.000000)
	registerVal22:setAlpha(0.000000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape17"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.Shape17 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal23:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal23:setRGB(1.000000, 0.390000, 0.000000)
	registerVal23:setAlpha(0.000000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape18"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.Shape18 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal24:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal24:setRGB(1.000000, 0.390000, 0.000000)
	registerVal24:setAlpha(0.000000)
	registerVal24:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape19"))
	registerVal24:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal24)
	registerVal2.Shape19 = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal25:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal25:setRGB(1.000000, 0.390000, 0.000000)
	registerVal25:setAlpha(0.000000)
	registerVal25:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape20"))
	registerVal25:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal25)
	registerVal2.Shape20 = registerVal25
	local registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal26:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal26:setRGB(1.000000, 0.390000, 0.000000)
	registerVal26:setAlpha(0.000000)
	registerVal26:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape21"))
	registerVal26:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal26)
	registerVal2.Shape21 = registerVal26
	local registerVal27 = LUI.UIImage.new()
	registerVal27:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal27:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal27:setRGB(1.000000, 0.390000, 0.000000)
	registerVal27:setAlpha(0.000000)
	registerVal27:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape22"))
	registerVal27:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal27)
	registerVal2.Shape22 = registerVal27
	local registerVal28 = LUI.UIImage.new()
	registerVal28:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal28:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal28:setRGB(1.000000, 0.390000, 0.000000)
	registerVal28:setAlpha(0.000000)
	registerVal28:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape23"))
	registerVal28:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal28)
	registerVal2.Shape23 = registerVal28
	local registerVal29 = LUI.UIImage.new()
	registerVal29:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal29:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal29:setRGB(1.000000, 0.390000, 0.000000)
	registerVal29:setAlpha(0.000000)
	registerVal29:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape24"))
	registerVal29:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal29)
	registerVal2.Shape24 = registerVal29
	local registerVal30 = LUI.UIImage.new()
	registerVal30:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal30:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal30:setRGB(1.000000, 0.390000, 0.000000)
	registerVal30:setAlpha(0.000000)
	registerVal30:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape25"))
	registerVal30:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal30)
	registerVal2.Shape25 = registerVal30
	local registerVal31 = LUI.UIImage.new()
	registerVal31:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal31:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal31:setRGB(1.000000, 0.390000, 0.000000)
	registerVal31:setAlpha(0.000000)
	registerVal31:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape26"))
	registerVal31:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal31)
	registerVal2.Shape26 = registerVal31
	local registerVal32 = LUI.UIImage.new()
	registerVal32:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal32:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal32:setRGB(1.000000, 0.390000, 0.000000)
	registerVal32:setAlpha(0.000000)
	registerVal32:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape27"))
	registerVal32:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal32)
	registerVal2.Shape27 = registerVal32
	local registerVal33 = LUI.UIImage.new()
	registerVal33:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal33:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal33:setRGB(1.000000, 0.390000, 0.000000)
	registerVal33:setAlpha(0.000000)
	registerVal33:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape28"))
	registerVal33:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal33)
	registerVal2.Shape28 = registerVal33
	local registerVal34 = LUI.UIImage.new()
	registerVal34:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal34:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal34:setRGB(1.000000, 0.390000, 0.000000)
	registerVal34:setAlpha(0.000000)
	registerVal34:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape29"))
	registerVal34:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal34)
	registerVal2.Shape29 = registerVal34
	local registerVal35 = LUI.UIImage.new()
	registerVal35:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal35:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal35:setRGB(1.000000, 0.390000, 0.000000)
	registerVal35:setAlpha(0.000000)
	registerVal35:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape30"))
	registerVal35:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal35)
	registerVal2.Shape30 = registerVal35
	local registerVal36 = LUI.UIImage.new()
	registerVal36:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal36:setTopBottom(true, false, 0.000000, 144.000000)
	registerVal36:setRGB(1.000000, 0.390000, 0.000000)
	registerVal36:setAlpha(0.000000)
	registerVal36:setImage(RegisterImage("uie_t7_menu_loadingspinner_shape31"))
	registerVal36:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal36)
	registerVal2.Shape31 = registerVal36
	local registerVal37 = LUI.UIImage.new()
	registerVal37:setLeftRight(true, false, 71.000000, 133.000000)
	registerVal37:setTopBottom(true, false, 101.850000, 140.000000)
	registerVal37:setAlpha(0.000000)
	registerVal37:setImage(RegisterImage("uie_t7_menu_loadingspinner_linemidlr"))
	registerVal37:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal37)
	registerVal2.LineMidLR = registerVal37
	local registerVal38 = LUI.UIImage.new()
	registerVal38:setLeftRight(true, false, 122.300000, 131.880000)
	registerVal38:setTopBottom(true, false, 41.000000, 108.000000)
	registerVal38:setAlpha(0.000000)
	registerVal38:setImage(RegisterImage("uie_t7_menu_loadingspinner_linemidr"))
	registerVal38:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal38)
	registerVal2.LineMidR = registerVal38
	local registerVal39 = LUI.UIImage.new()
	registerVal39:setLeftRight(true, false, 70.000000, 131.880000)
	registerVal39:setTopBottom(true, false, 2.920000, 41.000000)
	registerVal39:setAlpha(0.000000)
	registerVal39:setImage(RegisterImage("uie_t7_menu_loadingspinner_linemidur"))
	registerVal39:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal39)
	registerVal2.LineMidUR = registerVal39
	local registerVal40 = LUI.UIImage.new()
	registerVal40:setLeftRight(true, false, 10.000000, 72.000000)
	registerVal40:setTopBottom(true, false, 101.850000, 140.000000)
	registerVal40:setAlpha(0.000000)
	registerVal40:setYRot(180.000000)
	registerVal40:setImage(RegisterImage("uie_t7_menu_loadingspinner_linemidlr"))
	registerVal40:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal40)
	registerVal2.LineMidLL = registerVal40
	local registerVal41 = LUI.UIImage.new()
	registerVal41:setLeftRight(true, false, 10.300000, 19.880000)
	registerVal41:setTopBottom(true, false, 41.000000, 108.000000)
	registerVal41:setAlpha(0.000000)
	registerVal41:setYRot(180.000000)
	registerVal41:setImage(RegisterImage("uie_t7_menu_loadingspinner_linemidr"))
	registerVal41:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal41)
	registerVal2.LineMidL = registerVal41
	local registerVal42 = LUI.UIImage.new()
	registerVal42:setLeftRight(true, false, 11.000000, 72.880000)
	registerVal42:setTopBottom(true, false, 2.920000, 41.000000)
	registerVal42:setAlpha(0.000000)
	registerVal42:setYRot(180.000000)
	registerVal42:setImage(RegisterImage("uie_t7_menu_loadingspinner_linemidur"))
	registerVal42:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal42)
	registerVal2.LineMidUL = registerVal42
	local registerVal43 = LUI.UIImage.new()
	registerVal43:setLeftRight(true, false, 66.380000, 75.880000)
	registerVal43:setTopBottom(true, false, 105.000000, 143.000000)
	registerVal43:setAlpha(0.000000)
	registerVal43:setImage(RegisterImage("uie_t7_menu_loadingspinner_linesinsidebottom"))
	registerVal43:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal43)
	registerVal2.LineInsideBottom = registerVal43
	local registerVal44 = LUI.UIImage.new()
	registerVal44:setLeftRight(true, false, 93.000000, 136.070000)
	registerVal44:setTopBottom(true, false, 32.000000, 65.500000)
	registerVal44:setAlpha(0.000000)
	registerVal44:setYRot(180.000000)
	registerVal44:setImage(RegisterImage("uie_t7_menu_loadingspinner_linesinsideleft"))
	registerVal44:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal44)
	registerVal2.LineInsideRight = registerVal44
	local registerVal45 = LUI.UIImage.new()
	registerVal45:setLeftRight(true, false, 8.000000, 51.070000)
	registerVal45:setTopBottom(true, false, 32.000000, 65.500000)
	registerVal45:setAlpha(0.000000)
	registerVal45:setImage(RegisterImage("uie_t7_menu_loadingspinner_linesinsideleft"))
	registerVal45:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal45)
	registerVal2.LineInsideLeft = registerVal45
	local registerVal46 = LUI.UIImage.new()
	registerVal46:setLeftRight(true, false, 129.880000, 139.540000)
	registerVal46:setTopBottom(true, false, 42.000000, 100.000000)
	registerVal46:setAlpha(0.000000)
	registerVal46:setYRot(180.000000)
	registerVal46:setImage(RegisterImage("uie_t7_menu_loadingspinner_linesoutsideright"))
	registerVal46:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal46)
	registerVal2.LineOutsideR = registerVal46
	local registerVal47 = LUI.UIImage.new()
	registerVal47:setLeftRight(true, false, 78.000000, 129.140000)
	registerVal47:setTopBottom(true, false, 0.450000, 33.000000)
	registerVal47:setAlpha(0.000000)
	registerVal47:setYRot(180.000000)
	registerVal47:setImage(RegisterImage("uie_t7_menu_loadingspinner_linesoutsideul"))
	registerVal47:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal47)
	registerVal2.LineOutsideUR = registerVal47
	local registerVal48 = LUI.UIImage.new()
	registerVal48:setLeftRight(true, false, 14.000000, 65.140000)
	registerVal48:setTopBottom(true, false, 0.450000, 33.000000)
	registerVal48:setAlpha(0.000000)
	registerVal48:setImage(RegisterImage("uie_t7_menu_loadingspinner_linesoutsideul"))
	registerVal48:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal48)
	registerVal2.LineOutsideUL = registerVal48
	local registerVal49 = LUI.UIImage.new()
	registerVal49:setLeftRight(true, false, 3.170000, 12.830000)
	registerVal49:setTopBottom(true, false, 42.000000, 100.000000)
	registerVal49:setAlpha(0.000000)
	registerVal49:setYRot(180.000000)
	registerVal49:setImage(RegisterImage("uie_t7_menu_loadingspinner_linesoutsideright"))
	registerVal49:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal49)
	registerVal2.LineOutsideL = registerVal49
	local registerVal50 = LUI.UIImage.new()
	registerVal50:setLeftRight(true, false, 78.000000, 129.140000)
	registerVal50:setTopBottom(true, false, 111.450000, 144.000000)
	registerVal50:setAlpha(0.000000)
	registerVal50:setXRot(180.000000)
	registerVal50:setYRot(180.000000)
	registerVal50:setImage(RegisterImage("uie_t7_menu_loadingspinner_linesoutsideul"))
	registerVal50:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal50)
	registerVal2.LineOutsideLR = registerVal50
	local registerVal51 = LUI.UIImage.new()
	registerVal51:setLeftRight(true, false, 14.000000, 65.140000)
	registerVal51:setTopBottom(true, false, 111.450000, 144.000000)
	registerVal51:setAlpha(0.000000)
	registerVal51:setXRot(180.000000)
	registerVal51:setImage(RegisterImage("uie_t7_menu_loadingspinner_linesoutsideul"))
	registerVal51:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal51)
	registerVal2.LineOutsideLL = registerVal51
	local registerVal52 = {}
	local registerVal53 = {}
	local function __FUNC_34B3_()
		registerVal2:setupElementClipCounter(48.000000)
		local function __FUNC_4814_(arg0, arg1)
			local function __FUNC_498F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 719.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.100000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_498F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_498F_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setAlpha(0.100000)
		__FUNC_4814_(registerVal4, {})
		local function __FUNC_4B41_(arg0, arg1)
			local function __FUNC_4C98_(arg0, arg1)
				local function __FUNC_4E13_(arg0, arg1)
					local function __FUNC_4F8B_(arg0, arg1)
						local function __FUNC_50E0_(arg0, arg1)
							local function __FUNC_525B_(arg0, arg1)
								local function __FUNC_53D3_(arg0, arg1)
									local function __FUNC_5528_(arg0, arg1)
										local function __FUNC_56A3_(arg0, arg1)
											local function __FUNC_581B_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_581B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_581B_)
										end

										if arg1.interrupted then
											__FUNC_56A3_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.400000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56A3_)
									end

									if arg1.interrupted then
										__FUNC_5528_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5528_)
								end

								if arg1.interrupted then
									__FUNC_53D3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53D3_)
							end

							if arg1.interrupted then
								__FUNC_525B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.400000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_525B_)
						end

						if arg1.interrupted then
							__FUNC_50E0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 410.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50E0_)
					end

					if arg1.interrupted then
						__FUNC_4F8B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F8B_)
				end

				if arg1.interrupted then
					__FUNC_4E13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E13_)
			end

			if arg1.interrupted then
				__FUNC_4C98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C98_)
		end

		registerVal5:completeAnimation()
		registerVal2.DotsHex2:setAlpha(0.000000)
		__FUNC_4B41_(registerVal5, {})
		local function __FUNC_59CD_(arg0, arg1)
			local function __FUNC_5B47_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5B47_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B47_)
		end

		registerVal6:completeAnimation()
		registerVal2.Shape1:setAlpha(0.000000)
		__FUNC_59CD_(registerVal6, {})
		local function __FUNC_5CF9_(arg0, arg1)
			local function __FUNC_5E73_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5E73_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E73_)
		end

		registerVal7:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_5CF9_)
		local function __FUNC_6025_(arg0, arg1)
			local function __FUNC_619F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_619F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_619F_)
		end

		registerVal8:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_6025_)
		local function __FUNC_6351_(arg0, arg1)
			local function __FUNC_64CB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_64CB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64CB_)
		end

		registerVal9:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_6351_)
		local function __FUNC_667D_(arg0, arg1)
			local function __FUNC_67F7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_67F7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67F7_)
		end

		registerVal10:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(0.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_667D_)
		local function __FUNC_69A9_(arg0, arg1)
			local function __FUNC_6B23_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 410.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6B23_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B23_)
		end

		registerVal11:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setAlpha(0.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_69A9_)
		local function __FUNC_6CD5_(arg0, arg1)
			local function __FUNC_6E4F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6E4F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E4F_)
		end

		registerVal12:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setAlpha(0.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_6CD5_)
		local function __FUNC_7001_(arg0, arg1)
			local function __FUNC_717B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_717B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_717B_)
		end

		registerVal13:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
		registerVal13:setAlpha(0.000000)
		registerVal13:registerEventHandler("transition_complete_keyframe", __FUNC_7001_)
		local function __FUNC_732D_(arg0, arg1)
			local function __FUNC_74A7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_74A7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74A7_)
		end

		registerVal14:beginAnimation("keyframe", 419.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", __FUNC_732D_)
		local function __FUNC_7659_(arg0, arg1)
			local function __FUNC_77D3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_77D3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77D3_)
		end

		registerVal15:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
		registerVal15:setAlpha(0.000000)
		registerVal15:registerEventHandler("transition_complete_keyframe", __FUNC_7659_)
		local function __FUNC_7985_(arg0, arg1)
			local function __FUNC_7AFF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7AFF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AFF_)
		end

		registerVal16:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
		registerVal16:setAlpha(0.000000)
		registerVal16:registerEventHandler("transition_complete_keyframe", __FUNC_7985_)
		local function __FUNC_7CB1_(arg0, arg1)
			local function __FUNC_7E2B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7E2B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E2B_)
		end

		registerVal17:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
		registerVal17:setAlpha(0.000000)
		registerVal17:registerEventHandler("transition_complete_keyframe", __FUNC_7CB1_)
		local function __FUNC_7FDD_(arg0, arg1)
			local function __FUNC_8157_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8157_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8157_)
		end

		registerVal18:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
		registerVal18:setAlpha(0.000000)
		registerVal18:registerEventHandler("transition_complete_keyframe", __FUNC_7FDD_)
		local function __FUNC_8309_(arg0, arg1)
			local function __FUNC_8483_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8483_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8483_)
		end

		registerVal19:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
		registerVal19:setAlpha(0.000000)
		registerVal19:registerEventHandler("transition_complete_keyframe", __FUNC_8309_)
		local function __FUNC_8635_(arg0, arg1)
			local function __FUNC_87AF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_87AF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87AF_)
		end

		registerVal20:beginAnimation("keyframe", 660.000000, false, false, CoD.TweenType.Linear)
		registerVal20:setAlpha(0.000000)
		registerVal20:registerEventHandler("transition_complete_keyframe", __FUNC_8635_)
		local function __FUNC_8961_(arg0, arg1)
			local function __FUNC_8ADB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 410.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8ADB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8ADB_)
		end

		registerVal21:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
		registerVal21:setAlpha(0.000000)
		registerVal21:registerEventHandler("transition_complete_keyframe", __FUNC_8961_)
		local function __FUNC_8C8D_(arg0, arg1)
			local function __FUNC_8E07_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8E07_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E07_)
		end

		registerVal22:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
		registerVal22:setAlpha(0.000000)
		registerVal22:registerEventHandler("transition_complete_keyframe", __FUNC_8C8D_)
		local function __FUNC_8FB9_(arg0, arg1)
			local function __FUNC_9133_(arg0, arg1)
				local function __FUNC_92AB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_92AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92AB_)
			end

			if arg1.interrupted then
				__FUNC_9133_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9133_)
		end

		registerVal23:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
		registerVal23:setAlpha(0.000000)
		registerVal23:registerEventHandler("transition_complete_keyframe", __FUNC_8FB9_)
		local function __FUNC_945D_(arg0, arg1)
			local function __FUNC_95D7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_95D7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95D7_)
		end

		registerVal24:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
		registerVal24:setAlpha(0.000000)
		registerVal24:registerEventHandler("transition_complete_keyframe", __FUNC_945D_)
		local function __FUNC_9789_(arg0, arg1)
			local function __FUNC_9903_(arg0, arg1)
				local function __FUNC_9A58_(arg0, arg1)
					local function __FUNC_9BD3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 390.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.020000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_9BD3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BD3_)
				end

				if arg1.interrupted then
					__FUNC_9A58_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A58_)
			end

			if arg1.interrupted then
				__FUNC_9903_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9903_)
		end

		registerVal25:completeAnimation()
		registerVal2.Shape20:setAlpha(0.020000)
		__FUNC_9789_(registerVal25, {})
		local function __FUNC_9D85_(arg0, arg1)
			local function __FUNC_9EFF_(arg0, arg1)
				local function __FUNC_A054_(arg0, arg1)
					local function __FUNC_A1CF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.120000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_A1CF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1CF_)
				end

				if arg1.interrupted then
					__FUNC_A054_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A054_)
			end

			if arg1.interrupted then
				__FUNC_9EFF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9EFF_)
		end

		registerVal26:completeAnimation()
		registerVal2.Shape21:setAlpha(0.120000)
		__FUNC_9D85_(registerVal26, {})
		local function __FUNC_A381_(arg0, arg1)
			local function __FUNC_A4FB_(arg0, arg1)
				local function __FUNC_A650_(arg0, arg1)
					local function __FUNC_A7CB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.230000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_A7CB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A7CB_)
				end

				if arg1.interrupted then
					__FUNC_A650_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 849.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A650_)
			end

			if arg1.interrupted then
				__FUNC_A4FB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A4FB_)
		end

		registerVal27:completeAnimation()
		registerVal2.Shape22:setAlpha(0.230000)
		__FUNC_A381_(registerVal27, {})
		local function __FUNC_A97D_(arg0, arg1)
			local function __FUNC_AAF7_(arg0, arg1)
				local function __FUNC_AC4C_(arg0, arg1)
					local function __FUNC_ADC7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.330000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_ADC7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ADC7_)
				end

				if arg1.interrupted then
					__FUNC_AC4C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AC4C_)
			end

			if arg1.interrupted then
				__FUNC_AAF7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AAF7_)
		end

		registerVal28:completeAnimation()
		registerVal2.Shape23:setAlpha(0.330000)
		__FUNC_A97D_(registerVal28, {})
		local function __FUNC_AF79_(arg0, arg1)
			local function __FUNC_B0F3_(arg0, arg1)
				local function __FUNC_B248_(arg0, arg1)
					local function __FUNC_B3C3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.440000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B3C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B3C3_)
				end

				if arg1.interrupted then
					__FUNC_B248_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 849.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B248_)
			end

			if arg1.interrupted then
				__FUNC_B0F3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0F3_)
		end

		registerVal29:completeAnimation()
		registerVal2.Shape24:setAlpha(0.440000)
		__FUNC_AF79_(registerVal29, {})
		local function __FUNC_B575_(arg0, arg1)
			local function __FUNC_B6EF_(arg0, arg1)
				local function __FUNC_B844_(arg0, arg1)
					local function __FUNC_B9BF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.500000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B9BF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9BF_)
				end

				if arg1.interrupted then
					__FUNC_B844_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 860.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B844_)
			end

			if arg1.interrupted then
				__FUNC_B6EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6EF_)
		end

		registerVal30:completeAnimation()
		registerVal2.Shape25:setAlpha(0.500000)
		__FUNC_B575_(registerVal30, {})
		local function __FUNC_BB71_(arg0, arg1)
			local function __FUNC_BCEB_(arg0, arg1)
				local function __FUNC_BE40_(arg0, arg1)
					local function __FUNC_BFBB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.620000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_BFBB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFBB_)
				end

				if arg1.interrupted then
					__FUNC_BE40_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 860.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE40_)
			end

			if arg1.interrupted then
				__FUNC_BCEB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCEB_)
		end

		registerVal31:completeAnimation()
		registerVal2.Shape26:setAlpha(0.620000)
		__FUNC_BB71_(registerVal31, {})
		local function __FUNC_C16D_(arg0, arg1)
			local function __FUNC_C2E7_(arg0, arg1)
				local function __FUNC_C43C_(arg0, arg1)
					local function __FUNC_C5B7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.740000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C5B7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5B7_)
				end

				if arg1.interrupted then
					__FUNC_C43C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C43C_)
			end

			if arg1.interrupted then
				__FUNC_C2E7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2E7_)
		end

		registerVal32:completeAnimation()
		registerVal2.Shape27:setAlpha(0.740000)
		__FUNC_C16D_(registerVal32, {})
		local function __FUNC_C769_(arg0, arg1)
			local function __FUNC_C8E3_(arg0, arg1)
				local function __FUNC_CA38_(arg0, arg1)
					local function __FUNC_CBB3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.820000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_CBB3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CBB3_)
				end

				if arg1.interrupted then
					__FUNC_CA38_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA38_)
			end

			if arg1.interrupted then
				__FUNC_C8E3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8E3_)
		end

		registerVal33:completeAnimation()
		registerVal2.Shape28:setAlpha(0.820000)
		__FUNC_C769_(registerVal33, {})
		local function __FUNC_CD65_(arg0, arg1)
			local function __FUNC_CEDF_(arg0, arg1)
				local function __FUNC_D034_(arg0, arg1)
					local function __FUNC_D1AF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.930000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_D1AF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1AF_)
				end

				if arg1.interrupted then
					__FUNC_D034_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D034_)
			end

			if arg1.interrupted then
				__FUNC_CEDF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CEDF_)
		end

		registerVal34:completeAnimation()
		registerVal2.Shape29:setAlpha(0.930000)
		__FUNC_CD65_(registerVal34, {})
		local function __FUNC_D361_(arg0, arg1)
			local function __FUNC_D4DB_(arg0, arg1)
				local function __FUNC_D653_(arg0, arg1)
					local function __FUNC_D7A8_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.900000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_D7A8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D7A8_)
				end

				if arg1.interrupted then
					__FUNC_D653_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D653_)
			end

			if arg1.interrupted then
				__FUNC_D4DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D4DB_)
		end

		registerVal35:completeAnimation()
		registerVal2.Shape30:setAlpha(0.900000)
		__FUNC_D361_(registerVal35, {})
		local function __FUNC_D95D_(arg0, arg1)
			local function __FUNC_DAD7_(arg0, arg1)
				local function __FUNC_DC4F_(arg0, arg1)
					local function __FUNC_DDA4_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.500000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_DDA4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DDA4_)
				end

				if arg1.interrupted then
					__FUNC_DC4F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC4F_)
			end

			if arg1.interrupted then
				__FUNC_DAD7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DAD7_)
		end

		registerVal36:completeAnimation()
		registerVal2.Shape31:setAlpha(0.500000)
		__FUNC_D95D_(registerVal36, {})
		local function __FUNC_DF59_(arg0, arg1)
			local function __FUNC_E0D3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1090.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E0D3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E0D3_)
		end

		registerVal37:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
		registerVal37:setAlpha(0.500000)
		registerVal37:registerEventHandler("transition_complete_keyframe", __FUNC_DF59_)
		local function __FUNC_E285_(arg0, arg1)
			local function __FUNC_E3FF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E3FF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E3FF_)
		end

		registerVal38:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
		registerVal38:setAlpha(0.000000)
		registerVal38:registerEventHandler("transition_complete_keyframe", __FUNC_E285_)
		local function __FUNC_E5B1_(arg0, arg1)
			local function __FUNC_E708_(arg0, arg1)
				local function __FUNC_E883_(arg0, arg1)
					local function __FUNC_E9FB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 520.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_E9FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9FB_)
				end

				if arg1.interrupted then
					__FUNC_E883_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E883_)
			end

			if arg1.interrupted then
				__FUNC_E708_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E708_)
		end

		registerVal39:completeAnimation()
		registerVal2.LineMidUR:setAlpha(0.000000)
		__FUNC_E5B1_(registerVal39, {})
		local function __FUNC_EBAD_(arg0, arg1)
			local function __FUNC_ED27_(arg0, arg1)
				local function __FUNC_EE7C_(arg0, arg1)
					local function __FUNC_EFF7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.290000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_EFF7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EFF7_)
				end

				if arg1.interrupted then
					__FUNC_EE7C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE7C_)
			end

			if arg1.interrupted then
				__FUNC_ED27_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED27_)
		end

		registerVal40:completeAnimation()
		registerVal2.LineMidLL:setAlpha(0.290000)
		__FUNC_EBAD_(registerVal40, {})
		local function __FUNC_F1A9_(arg0, arg1)
			local function __FUNC_F300_(arg0, arg1)
				local function __FUNC_F47B_(arg0, arg1)
					local function __FUNC_F5F3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_F5F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F5F3_)
				end

				if arg1.interrupted then
					__FUNC_F47B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F47B_)
			end

			if arg1.interrupted then
				__FUNC_F300_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1049.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F300_)
		end

		registerVal41:completeAnimation()
		registerVal2.LineMidL:setAlpha(0.000000)
		__FUNC_F1A9_(registerVal41, {})
		local function __FUNC_F7A5_(arg0, arg1)
			local function __FUNC_F91F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F91F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F91F_)
		end

		registerVal42:beginAnimation("keyframe", 790.000000, false, false, CoD.TweenType.Linear)
		registerVal42:setAlpha(0.000000)
		registerVal42:registerEventHandler("transition_complete_keyframe", __FUNC_F7A5_)
		local function __FUNC_FAD1_(arg0, arg1)
			local function __FUNC_FC4B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.150000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_FC4B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC4B_)
		end

		registerVal43:beginAnimation("keyframe", 1100.000000, false, false, CoD.TweenType.Linear)
		registerVal43:setAlpha(0.000000)
		registerVal43:registerEventHandler("transition_complete_keyframe", __FUNC_FAD1_)
		local function __FUNC_FDFD_(arg0, arg1)
			local function __FUNC_FF77_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_FF77_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF77_)
		end

		registerVal44:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
		registerVal44:setAlpha(0.000000)
		registerVal44:registerEventHandler("transition_complete_keyframe", __FUNC_FDFD_)
		local function __FUNC_10129_(arg0, arg1)
			local function __FUNC_102A3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_102A3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_102A3_)
		end

		registerVal45:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
		registerVal45:setAlpha(0.000000)
		registerVal45:registerEventHandler("transition_complete_keyframe", __FUNC_10129_)
		local function __FUNC_10455_(arg0, arg1)
			local function __FUNC_105CF_(arg0, arg1)
				local function __FUNC_10747_(arg0, arg1)
					local function __FUNC_108BF_(arg0, arg1)
						local function __FUNC_10A37_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_10A37_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 529.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A37_)
					end

					if arg1.interrupted then
						__FUNC_108BF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108BF_)
				end

				if arg1.interrupted then
					__FUNC_10747_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10747_)
			end

			if arg1.interrupted then
				__FUNC_105CF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_105CF_)
		end

		registerVal46:completeAnimation()
		registerVal2.LineOutsideR:setAlpha(0.000000)
		__FUNC_10455_(registerVal46, {})
		local function __FUNC_10BE9_(arg0, arg1)
			local function __FUNC_10D63_(arg0, arg1)
				local function __FUNC_10EDB_(arg0, arg1)
					local function __FUNC_11053_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_11053_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11053_)
				end

				if arg1.interrupted then
					__FUNC_10EDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10EDB_)
			end

			if arg1.interrupted then
				__FUNC_10D63_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D63_)
		end

		registerVal47:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
		registerVal47:setAlpha(0.000000)
		registerVal47:registerEventHandler("transition_complete_keyframe", __FUNC_10BE9_)
		local function __FUNC_11205_(arg0, arg1)
			local function __FUNC_1137F_(arg0, arg1)
				local function __FUNC_114F7_(arg0, arg1)
					local function __FUNC_1166F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1166F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1166F_)
				end

				if arg1.interrupted then
					__FUNC_114F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_114F7_)
			end

			if arg1.interrupted then
				__FUNC_1137F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1137F_)
		end

		registerVal48:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
		registerVal48:setAlpha(0.000000)
		registerVal48:registerEventHandler("transition_complete_keyframe", __FUNC_11205_)
		local function __FUNC_11821_(arg0, arg1)
			local function __FUNC_1199B_(arg0, arg1)
				local function __FUNC_11AF0_(arg0, arg1)
					local function __FUNC_11C6B_(arg0, arg1)
						local function __FUNC_11DE3_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.110000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_11DE3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.700000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11DE3_)
					end

					if arg1.interrupted then
						__FUNC_11C6B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11C6B_)
				end

				if arg1.interrupted then
					__FUNC_11AF0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11AF0_)
			end

			if arg1.interrupted then
				__FUNC_1199B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1199B_)
		end

		registerVal49:completeAnimation()
		registerVal2.LineOutsideL:setAlpha(0.110000)
		__FUNC_11821_(registerVal49, {})
		local function __FUNC_11F95_(arg0, arg1)
			local function __FUNC_1210F_(arg0, arg1)
				local function __FUNC_12264_(arg0, arg1)
					local function __FUNC_123DF_(arg0, arg1)
						local function __FUNC_12557_(arg0, arg1)
							local function __FUNC_126CF_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.220000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_126CF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.700000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_126CF_)
						end

						if arg1.interrupted then
							__FUNC_12557_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12557_)
					end

					if arg1.interrupted then
						__FUNC_123DF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_123DF_)
				end

				if arg1.interrupted then
					__FUNC_12264_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12264_)
			end

			if arg1.interrupted then
				__FUNC_1210F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1210F_)
		end

		registerVal50:completeAnimation()
		registerVal2.LineOutsideLR:setAlpha(0.220000)
		__FUNC_11F95_(registerVal50, {})
		local function __FUNC_12881_(arg0, arg1)
			local function __FUNC_129FB_(arg0, arg1)
				local function __FUNC_12B50_(arg0, arg1)
					local function __FUNC_12CA8_(arg0, arg1)
						local function __FUNC_12E23_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.250000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_12E23_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.700000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12E23_)
					end

					if arg1.interrupted then
						__FUNC_12CA8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12CA8_)
				end

				if arg1.interrupted then
					__FUNC_12B50_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12B50_)
			end

			if arg1.interrupted then
				__FUNC_129FB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_129FB_)
		end

		registerVal51:completeAnimation()
		registerVal2.LineOutsideLL:setAlpha(0.250000)
		__FUNC_12881_(registerVal51, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal53.DefaultClip = __FUNC_34B3_
	registerVal52.DefaultState = registerVal53
	registerVal2.clipsPerState = registerVal52
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

