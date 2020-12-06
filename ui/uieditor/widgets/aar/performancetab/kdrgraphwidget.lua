-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.HelperWidgets.TextWithBg")
require("ui.uieditor.widgets.AAR.PerformanceTab.MidLine")
require("ui.uieditor.widgets.AAR.PerformanceTab.GraphArrow")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.KDRGraphWidget = registerVal1
function CoD.KDRGraphWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.KDRGraphWidget)
	registerVal2.id = "KDRGraphWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 206.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 57.500000, 358.000000)
	registerVal3:setTopBottom(true, false, 50.000000, 148.000000)
	registerVal3:setRGB(0.240000, 0.240000, 0.260000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = CoD.TextWithBg.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 57.500000, 358.000000)
	registerVal4:setTopBottom(true, false, 148.000000, 175.000000)
	registerVal4.Bg:setAlpha(0.400000)
	registerVal4.Text:setText(Engine.Localize("MENU_AAR_LAST_FIVE_GAMETYPE_GAMES"))
	registerVal4.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal4)
	registerVal2.GraphDesc = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 317.000000, 399.000000)
	registerVal5:setTopBottom(true, false, 15.000000, 56.000000)
	registerVal5:setRGB(0.950000, 0.910000, 0.110000)
	registerVal5:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1EA5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "AARKDRGraph", "value1", __FUNC_1EA5_)
	registerVal2:addElement(registerVal5)
	registerVal2.LastMatchScore = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 252.500000, 310.500000)
	registerVal6:setTopBottom(true, false, 29.000000, 47.000000)
	registerVal6:setRGB(0.880000, 0.890000, 0.910000)
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1F5E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setAlpha(ZeroIfEqualElseArg(0.000000, 0.700000, registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "AARKDRGraph", "value2Valid", __FUNC_1F5E_)
	local function __FUNC_2027_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "AARKDRGraph", "value2", __FUNC_2027_)
	registerVal2:addElement(registerVal6)
	registerVal2.SecondLastMatchScore = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 178.750000, 236.750000)
	registerVal7:setTopBottom(true, false, 29.000000, 47.000000)
	registerVal7:setRGB(0.880000, 0.890000, 0.910000)
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_20DE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setAlpha(ZeroIfEqualElseArg(0.000000, 0.700000, registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "AARKDRGraph", "value3Valid", __FUNC_20DE_)
	local function __FUNC_21A7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "AARKDRGraph", "value3", __FUNC_21A7_)
	registerVal2:addElement(registerVal7)
	registerVal2.ThirdLastMatchScore = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 103.000000, 161.000000)
	registerVal8:setTopBottom(true, false, 29.000000, 47.000000)
	registerVal8:setRGB(0.880000, 0.890000, 0.910000)
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_225E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setAlpha(ZeroIfEqualElseArg(0.000000, 0.700000, registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "AARKDRGraph", "value4Valid", __FUNC_225E_)
	local function __FUNC_2327_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "AARKDRGraph", "value4", __FUNC_2327_)
	registerVal2:addElement(registerVal8)
	registerVal2.FourthLastMatchScore = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 30.000000, 88.000000)
	registerVal9:setTopBottom(true, false, 29.000000, 47.000000)
	registerVal9:setRGB(0.880000, 0.890000, 0.910000)
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_23DE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setAlpha(ZeroIfEqualElseArg(0.000000, 0.700000, registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "AARKDRGraph", "value5Valid", __FUNC_23DE_)
	local function __FUNC_24A7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "AARKDRGraph", "value5", __FUNC_24A7_)
	registerVal2:addElement(registerVal9)
	registerVal2.FifthLastMatchScore = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, -9.500000, 69.500000)
	registerVal10:setTopBottom(true, false, 113.000000, 127.000000)
	registerVal10:setRGB(0.880000, 0.890000, 0.910000)
	registerVal10:setText(Engine.Localize("MENU_MY_AVERAGE"))
	registerVal10:setTTF("fonts/escom.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.MyAverageLabel = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 130.500000, 134.500000)
	registerVal11:setTopBottom(true, false, 50.000000, 150.000000)
	registerVal11:setAlpha(0.500000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Vline2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 205.500000, 209.500000)
	registerVal12:setTopBottom(true, false, 50.000000, 150.000000)
	registerVal12:setAlpha(0.500000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Vline3 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 279.500000, 283.500000)
	registerVal13:setTopBottom(true, false, 50.000000, 150.000000)
	registerVal13:setAlpha(0.500000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Vline4 = registerVal13
	local registerVal14 = CoD.MidLine.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 57.500000, 358.000000)
	registerVal14:setTopBottom(true, false, 98.000000, 102.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.MidLine = registerVal14
	local registerVal15 = CoD.GraphArrow.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, -41.000000, 88.000000)
	registerVal15:setTopBottom(true, false, 83.180000, 115.820000)
	registerVal15:setRGB(0.880000, 0.890000, 0.910000)
	registerVal15.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_255E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.Text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "AARKDRGraph", "avgKDR", __FUNC_255E_)
	registerVal2:addElement(registerVal15)
	registerVal2.Average = registerVal15
	local registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(true, false, 324.000000, 397.000000)
	registerVal16:setTopBottom(true, false, 5.000000, 19.000000)
	registerVal16:setRGB(0.880000, 0.890000, 0.910000)
	registerVal16:setText(Engine.Localize("MENU_LATEST_GAME"))
	registerVal16:setTTF("fonts/escom.ttf")
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal16)
	registerVal2.MyAverageLabel0 = registerVal16
	local registerVal17 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 55.500000, 360.270000)
	registerVal17:setTopBottom(true, false, 49.000000, 177.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal17
	local registerVal18 = LUI.UIText.new()
	registerVal18:setLeftRight(true, false, 57.500000, 358.000000)
	registerVal18:setTopBottom(true, false, 180.000000, 192.000000)
	registerVal18:setRGB(0.930000, 0.740000, 0.290000)
	registerVal18:setAlpha(0.900000)
	registerVal18:setText(Engine.Localize("MENU_AAR_GLOBAL_KDR"))
	registerVal18:setTTF("fonts/escom.ttf")
	registerVal18:setLetterSpacing(3.500000)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal18)
	registerVal2.GlobalScore = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 54.500000, 135.000000)
	registerVal19:setTopBottom(true, false, 50.000000, 148.000000)
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("uie_aar_segment"))
	registerVal19:setShaderVector(2.000000, 256.000000, 256.000000, 256.000000, 0.400000)
	registerVal19:setShaderVector(3.000000, 0.080000, 0.070000, 1.000000, 0.000000)
	local function __FUNC_2630_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setAlpha(registerVal1)
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "AARKDRGraph", "value5Valid", __FUNC_2630_)
	local function __FUNC_26C5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal19:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "AARKDRGraph", "graphValue5", __FUNC_26C5_)
	local function __FUNC_281C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal19:setShaderVector(1.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "AARKDRGraph", "graphValue4", __FUNC_281C_)
	registerVal2:addElement(registerVal19)
	registerVal2.Segment4 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 129.000000, 211.000000)
	registerVal20:setTopBottom(true, false, 50.000000, 148.000000)
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("uie_aar_segment"))
	registerVal20:setShaderVector(2.000000, 256.000000, 256.000000, 256.000000, 0.400000)
	registerVal20:setShaderVector(3.000000, 0.080000, 0.070000, 1.000000, 0.000000)
	local function __FUNC_296F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20:setAlpha(registerVal1)
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "AARKDRGraph", "value4Valid", __FUNC_296F_)
	local function __FUNC_2A01_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal20:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "AARKDRGraph", "graphValue4", __FUNC_2A01_)
	local function __FUNC_2B58_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal20:setShaderVector(1.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "AARKDRGraph", "graphValue3", __FUNC_2B58_)
	registerVal2:addElement(registerVal20)
	registerVal2.Segment3 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 204.000000, 285.000000)
	registerVal21:setTopBottom(true, false, 50.000000, 148.000000)
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("uie_aar_segment"))
	registerVal21:setShaderVector(2.000000, 256.000000, 256.000000, 256.000000, 0.400000)
	registerVal21:setShaderVector(3.000000, 0.080000, 0.070000, 1.000000, 0.000000)
	local function __FUNC_2CAB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21:setAlpha(registerVal1)
		end
	end

	registerVal21:subscribeToGlobalModel(arg1, "AARKDRGraph", "value3Valid", __FUNC_2CAB_)
	local function __FUNC_2D3D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal21:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal21:subscribeToGlobalModel(arg1, "AARKDRGraph", "graphValue3", __FUNC_2D3D_)
	local function __FUNC_2E94_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal21:setShaderVector(1.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal21:subscribeToGlobalModel(arg1, "AARKDRGraph", "graphValue2", __FUNC_2E94_)
	registerVal2:addElement(registerVal21)
	registerVal2.Segment2 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, 278.000000, 361.000000)
	registerVal22:setTopBottom(true, false, 50.000000, 148.000000)
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("uie_aar_segment"))
	registerVal22:setShaderVector(2.000000, 256.000000, 256.000000, 256.000000, 0.400000)
	registerVal22:setShaderVector(3.000000, 0.080000, 0.070000, 1.000000, 1.000000)
	local function __FUNC_2FE7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22:setAlpha(registerVal1)
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "AARKDRGraph", "value2Valid", __FUNC_2FE7_)
	local function __FUNC_3079_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal22:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "AARKDRGraph", "graphValue2", __FUNC_3079_)
	local function __FUNC_31D0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal22:setShaderVector(1.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "AARKDRGraph", "graphValue1", __FUNC_31D0_)
	registerVal2:addElement(registerVal22)
	registerVal2.Segment1 = registerVal22
	local function __FUNC_3323_(arg0)
		arg0.FEButtonPanel0:close()
		arg0.GraphDesc:close()
		arg0.MidLine:close()
		arg0.Average:close()
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.LastMatchScore:close()
		arg0.SecondLastMatchScore:close()
		arg0.ThirdLastMatchScore:close()
		arg0.FourthLastMatchScore:close()
		arg0.FifthLastMatchScore:close()
		arg0.Segment4:close()
		arg0.Segment3:close()
		arg0.Segment2:close()
		arg0.Segment1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3323_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

