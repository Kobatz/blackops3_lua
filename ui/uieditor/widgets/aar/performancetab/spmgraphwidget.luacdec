-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.HelperWidgets.TextWithBg")
require("ui.uieditor.widgets.AAR.PerformanceTab.MidLine")
require("ui.uieditor.widgets.AAR.PerformanceTab.GraphArrow")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SPMGraphWidget = registerVal1
function CoD.SPMGraphWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SPMGraphWidget)
	registerVal2.id = "SPMGraphWidget"
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
	registerVal5:setTopBottom(true, false, 13.500000, 54.500000)
	registerVal5:setRGB(0.950000, 0.910000, 0.110000)
	registerVal5:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1EF4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "AARSPMGraph", "value1", __FUNC_1EF4_)
	registerVal2:addElement(registerVal5)
	registerVal2.LastMatchScore = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 254.000000, 312.000000)
	registerVal6:setTopBottom(true, false, 30.000000, 48.000000)
	registerVal6:setRGB(0.880000, 0.890000, 0.910000)
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1FAE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setAlpha(ZeroIfEqualElseArg(0.000000, 0.700000, registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "AARSPMGraph", "value2Valid", __FUNC_1FAE_)
	local function __FUNC_2077_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "AARSPMGraph", "value2", __FUNC_2077_)
	registerVal2:addElement(registerVal6)
	registerVal2.SecondLastMatchScore = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 177.500000, 235.500000)
	registerVal7:setTopBottom(true, false, 30.000000, 48.000000)
	registerVal7:setRGB(0.880000, 0.890000, 0.910000)
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_212E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setAlpha(ZeroIfEqualElseArg(0.000000, 0.700000, registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "AARSPMGraph", "value3Valid", __FUNC_212E_)
	local function __FUNC_21F7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "AARSPMGraph", "value3", __FUNC_21F7_)
	registerVal2:addElement(registerVal7)
	registerVal2.ThirdLastMatchScore = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 30.000000, 88.000000)
	registerVal8:setTopBottom(true, false, 30.000000, 48.000000)
	registerVal8:setRGB(0.880000, 0.890000, 0.910000)
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_22AE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setAlpha(ZeroIfEqualElseArg(0.000000, 0.700000, registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "AARSPMGraph", "value5Valid", __FUNC_22AE_)
	local function __FUNC_2377_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "AARSPMGraph", "value5", __FUNC_2377_)
	registerVal2:addElement(registerVal8)
	registerVal2.FifthLastMatchScore = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 281.500000, 285.500000)
	registerVal9:setTopBottom(true, false, 50.000000, 150.000000)
	registerVal9:setAlpha(0.500000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Vline4 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 205.500000, 209.500000)
	registerVal10:setTopBottom(true, false, 50.000000, 150.000000)
	registerVal10:setAlpha(0.500000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Vline3 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 130.500000, 134.500000)
	registerVal11:setTopBottom(true, false, 50.000000, 150.000000)
	registerVal11:setAlpha(0.500000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Vline2 = registerVal11
	local registerVal12 = CoD.MidLine.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 57.500000, 358.000000)
	registerVal12:setTopBottom(true, false, 98.000000, 102.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.MidLine = registerVal12
	local registerVal13 = CoD.GraphArrow.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, -41.000000, 88.000000)
	registerVal13:setTopBottom(true, false, 83.000000, 116.000000)
	registerVal13:setRGB(0.880000, 0.890000, 0.910000)
	registerVal13.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_242E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.Text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "AARSPMGraph", "avgSPM", __FUNC_242E_)
	registerVal2:addElement(registerVal13)
	registerVal2.Average = registerVal13
	local registerVal14 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 55.500000, 360.270000)
	registerVal14:setTopBottom(true, false, 49.000000, 177.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, 57.500000, 358.000000)
	registerVal15:setTopBottom(true, false, 180.000000, 192.000000)
	registerVal15:setRGB(0.930000, 0.740000, 0.290000)
	registerVal15:setAlpha(0.900000)
	registerVal15:setText(Engine.Localize("MENU_AAR_GLOBAL_SPM"))
	registerVal15:setTTF("fonts/escom.ttf")
	registerVal15:setLetterSpacing(3.500000)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal15)
	registerVal2.GlobalScore = registerVal15
	local registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(true, false, 103.500000, 161.500000)
	registerVal16:setTopBottom(true, false, 30.000000, 48.000000)
	registerVal16:setRGB(0.880000, 0.890000, 0.910000)
	registerVal16:setTTF("fonts/escom.ttf")
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2500_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setAlpha(ZeroIfEqualElseArg(0.000000, 0.700000, registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "AARSPMGraph", "value4Valid", __FUNC_2500_)
	local function __FUNC_25CB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "AARSPMGraph", "value4", __FUNC_25CB_)
	registerVal2:addElement(registerVal16)
	registerVal2.FourthLastMatchScore = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, false, -12.500000, 69.500000)
	registerVal17:setTopBottom(true, false, 113.000000, 127.000000)
	registerVal17:setRGB(0.880000, 0.890000, 0.910000)
	registerVal17:setText(Engine.Localize("MENU_MY_AVERAGE"))
	registerVal17:setTTF("fonts/escom.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal17)
	registerVal2.MyAverageLabel = registerVal17
	local registerVal18 = LUI.UIText.new()
	registerVal18:setLeftRight(true, false, 317.000000, 399.000000)
	registerVal18:setTopBottom(true, false, 3.000000, 17.000000)
	registerVal18:setRGB(0.880000, 0.890000, 0.910000)
	registerVal18:setText(Engine.Localize("MENU_LATEST_GAME"))
	registerVal18:setTTF("fonts/escom.ttf")
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal18:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal18)
	registerVal2.MyAverageLabel0 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 55.000000, 136.000000)
	registerVal19:setTopBottom(true, false, 50.000000, 148.000000)
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("uie_aar_segment"))
	registerVal19:setShaderVector(2.000000, 256.000000, 256.000000, 256.000000, 0.400000)
	registerVal19:setShaderVector(3.000000, 0.080000, 0.070000, 0.040000, 0.000000)
	local function __FUNC_2682_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal19:setAlpha(registerVal1)
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "AARSPMGraph", "value5Valid", __FUNC_2682_)
	local function __FUNC_2715_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal19:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "AARSPMGraph", "graphValue5", __FUNC_2715_)
	local function __FUNC_286C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal19:setShaderVector(1.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal19:subscribeToGlobalModel(arg1, "AARSPMGraph", "graphValue4", __FUNC_286C_)
	registerVal2:addElement(registerVal19)
	registerVal2.Segment4 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 129.000000, 211.000000)
	registerVal20:setTopBottom(true, false, 50.000000, 148.000000)
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("uie_aar_segment"))
	registerVal20:setShaderVector(2.000000, 256.000000, 256.000000, 256.000000, 0.400000)
	registerVal20:setShaderVector(3.000000, 0.080000, 0.070000, 1.000000, 0.000000)
	local function __FUNC_29BF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20:setAlpha(registerVal1)
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "AARSPMGraph", "value4Valid", __FUNC_29BF_)
	local function __FUNC_2A51_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal20:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "AARSPMGraph", "graphValue4", __FUNC_2A51_)
	local function __FUNC_2BA8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal20:setShaderVector(1.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal20:subscribeToGlobalModel(arg1, "AARSPMGraph", "graphValue3", __FUNC_2BA8_)
	registerVal2:addElement(registerVal20)
	registerVal2.Segment3 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 204.000000, 287.000000)
	registerVal21:setTopBottom(true, false, 50.000000, 148.000000)
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("uie_aar_segment"))
	registerVal21:setShaderVector(2.000000, 256.000000, 256.000000, 256.000000, 0.400000)
	registerVal21:setShaderVector(3.000000, 0.080000, 0.070000, 1.000000, 0.000000)
	local function __FUNC_2CFB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal21:setAlpha(registerVal1)
		end
	end

	registerVal21:subscribeToGlobalModel(arg1, "AARSPMGraph", "value3Valid", __FUNC_2CFB_)
	local function __FUNC_2D8D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal21:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal21:subscribeToGlobalModel(arg1, "AARSPMGraph", "graphValue3", __FUNC_2D8D_)
	local function __FUNC_2EE4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal21:setShaderVector(1.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal21:subscribeToGlobalModel(arg1, "AARSPMGraph", "graphValue2", __FUNC_2EE4_)
	registerVal2:addElement(registerVal21)
	registerVal2.Segment2 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, 280.000000, 361.000000)
	registerVal22:setTopBottom(true, false, 50.000000, 148.000000)
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("uie_aar_segment"))
	registerVal22:setShaderVector(2.000000, 256.000000, 256.000000, 256.000000, 0.400000)
	registerVal22:setShaderVector(3.000000, 0.080000, 0.070000, 1.000000, 1.000000)
	local function __FUNC_3037_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22:setAlpha(registerVal1)
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "AARSPMGraph", "value2Valid", __FUNC_3037_)
	local function __FUNC_30C9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal22:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "AARSPMGraph", "graphValue2", __FUNC_30C9_)
	local function __FUNC_3220_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal22:setShaderVector(1.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal22:subscribeToGlobalModel(arg1, "AARSPMGraph", "graphValue1", __FUNC_3220_)
	local function __FUNC_3373_(arg0, arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal22, "setState", __FUNC_3373_)
	registerVal2:addElement(registerVal22)
	registerVal2.Segment1 = registerVal22
	local function __FUNC_339C_(arg0)
		arg0.FEButtonPanel0:close()
		arg0.GraphDesc:close()
		arg0.MidLine:close()
		arg0.Average:close()
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.LastMatchScore:close()
		arg0.SecondLastMatchScore:close()
		arg0.ThirdLastMatchScore:close()
		arg0.FifthLastMatchScore:close()
		arg0.FourthLastMatchScore:close()
		arg0.Segment4:close()
		arg0.Segment3:close()
		arg0.Segment2:close()
		arg0.Segment1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_339C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

