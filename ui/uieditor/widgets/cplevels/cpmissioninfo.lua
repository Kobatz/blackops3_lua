-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CPLevels.CPMapPerformanceRecord")
require("ui.uieditor.widgets.CPLevels.CPMissionTitle")
require("ui.uieditor.widgets.CPLevels.CPMapInfoWidget")
require("ui.uieditor.widgets.CPLevels.CPMapPerformanceRecord_Classified")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CPMissionInfo = registerVal1
function CoD.CPMissionInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CPMissionInfo)
	registerVal2.id = "CPMissionInfo"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 869.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 417.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 35.000000, 587.000000)
	registerVal3:setTopBottom(true, false, 349.780000, 371.780000)
	registerVal3:setAlpha(0.550000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_134C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "mapDescription", true, __FUNC_134C_)
	registerVal2:addElement(registerVal3)
	registerVal2.Description = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 35.000000, 587.000000)
	registerVal4:setTopBottom(true, false, 349.780000, 371.780000)
	registerVal4:setAlpha(0.550000)
	registerVal4:setText(Engine.Localize("MENU_CLASSIFIED"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Description0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 587.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 281.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cp_front_end_classified"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image0 = registerVal5
	local registerVal6 = CoD.CPMapPerformanceRecord.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -273.000000, 151.000000)
	registerVal6:setTopBottom(true, false, -1.000000, 315.280000)
	local function __FUNC_1406_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_1406_)
	registerVal2:addElement(registerVal6)
	registerVal2.CPMapPerformanceRecord = registerVal6
	local registerVal7 = CoD.CPMissionTitle.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -4.450000, 537.550000)
	registerVal7:setTopBottom(true, false, 290.780000, 339.780000)
	registerVal7.BriefingHeading:setText(Engine.Localize("MENU_MISSION_BRIEFING_CAPS"))
	registerVal2:addElement(registerVal7)
	registerVal2.CPMissionTitle = registerVal7
	local registerVal8 = CoD.CPMapInfoWidget.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 587.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 281.000000)
	local function __FUNC_1456_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_1456_)
	registerVal2:addElement(registerVal8)
	registerVal2.CPMapInfoWidget = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 630.750000, 713.250000)
	registerVal9:setTopBottom(true, false, 191.000000, 275.000000)
	local function __FUNC_14A6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setAlpha(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal2, "completedDifficultyAlpha", true, __FUNC_14A6_)
	local function __FUNC_1539_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "completedDifficulty", true, __FUNC_1539_)
	registerVal2:addElement(registerVal9)
	registerVal2.CompletedDifficultyImage = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 630.000000, 769.000000)
	registerVal10:setTopBottom(true, false, 158.000000, 180.000000)
	registerVal10:setRGB(0.950000, 0.890000, 0.030000)
	registerVal10:setText(Engine.Localize("MENU_DIFFICULTY_COMPLETED"))
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_15EC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setAlpha(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal2, "completedDifficultyAlpha", true, __FUNC_15EC_)
	registerVal2:addElement(registerVal10)
	registerVal2.CompletedDifficultyLabel = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 0.000000, 587.000000)
	registerVal11:setTopBottom(true, false, 115.000000, 165.000000)
	registerVal11:setText(Engine.Localize("MENU_CLASSIFIED"))
	registerVal11:setTTF("fonts/escom.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.ClassifiedText = registerVal11
	local registerVal12 = CoD.CPMapPerformanceRecord_Classified.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 596.000000, 941.000000)
	registerVal12:setTopBottom(true, false, -1.000000, 263.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.CPMapPerformanceRecordClassified = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 636.650000, 769.150000)
	registerVal13:setTopBottom(true, false, 275.000000, 295.000000)
	registerVal13:setTTF("fonts/default.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1681_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setAlpha(registerVal1)
		end
	end

	registerVal13:linkToElementModel(registerVal2, "completedDifficultyAlpha", true, __FUNC_1681_)
	local function __FUNC_1715_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "completedDifficultyText", true, __FUNC_1715_)
	registerVal2:addElement(registerVal13)
	registerVal2.difficulty = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_17CE_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.Description:setAlpha(0.550000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Description0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CPMapPerformanceRecord:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CPMissionTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CPMapInfoWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal2.ClassifiedText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CPMapPerformanceRecordClassified:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_17CE_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_1B96_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.Description:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Description0:setAlpha(0.550000)
		registerVal2.Description0:setText(Engine.Localize("MENU_CLASSIFIED"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image0:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CPMapPerformanceRecord:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CPMissionTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.CPMapInfoWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal11:completeAnimation()
		registerVal2.ClassifiedText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CPMapPerformanceRecordClassified:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1B96_
	registerVal14.Classified = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Classified"
	local function __FUNC_1FDF_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "classified")
	end

	registerVal17.condition = __FUNC_1FDF_
	registerVal16 = {registerVal17}
	registerVal2:mergeStateConditions(registerVal16)
	local function __FUNC_2052_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "classified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "classified", true, __FUNC_2052_)
	local function __FUNC_2170_(arg0)
		arg0.CPMapPerformanceRecord:close()
		arg0.CPMissionTitle:close()
		arg0.CPMapInfoWidget:close()
		arg0.CPMapPerformanceRecordClassified:close()
		arg0.Description:close()
		arg0.CompletedDifficultyImage:close()
		arg0.CompletedDifficultyLabel:close()
		arg0.difficulty:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2170_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

