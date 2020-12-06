-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Leaderboard.LeaderboardHeader_ColumnText")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LeaderboardHeader = registerVal1
function CoD.LeaderboardHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LeaderboardHeader)
	registerVal2.id = "LeaderboardHeader"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 780.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 5.000000, 89.000000)
	registerVal3:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal3:setRGB(0.640000, 0.640000, 0.640000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_EF0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "position", true, __FUNC_EF0_)
	registerVal2:addElement(registerVal3)
	registerVal2.Position = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 89.000000, 137.000000)
	registerVal4:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal4:setRGB(0.640000, 0.640000, 0.640000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_FAA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "rank", true, __FUNC_FAA_)
	registerVal2:addElement(registerVal4)
	registerVal2.Rank = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 138.000000, 308.000000)
	registerVal5:setTopBottom(true, false, 3.500000, 23.500000)
	registerVal5:setRGB(0.640000, 0.640000, 0.640000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1062_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "name", true, __FUNC_1062_)
	registerVal2:addElement(registerVal5)
	registerVal2.Name = registerVal5
	local registerVal6 = CoD.LeaderboardHeader_ColumnText.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 308.000000, 401.500000)
	registerVal6:setTopBottom(true, false, 2.500000, 22.500000)
	local function __FUNC_111A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.ColumnText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "LeaderboardHeader", "column0", __FUNC_111A_)
	registerVal2:addElement(registerVal6)
	registerVal2.Column0 = registerVal6
	local registerVal7 = CoD.LeaderboardHeader_ColumnText.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 401.500000, 495.000000)
	registerVal7:setTopBottom(true, false, 2.500000, 22.500000)
	local function __FUNC_11F2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.ColumnText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "LeaderboardHeader", "column1", __FUNC_11F2_)
	registerVal2:addElement(registerVal7)
	registerVal2.Column1 = registerVal7
	local registerVal8 = CoD.LeaderboardHeader_ColumnText.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 495.000000, 588.500000)
	registerVal8:setTopBottom(true, false, 2.500000, 22.500000)
	local function __FUNC_12CA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.ColumnText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "LeaderboardHeader", "column2", __FUNC_12CA_)
	registerVal2:addElement(registerVal8)
	registerVal2.Column2 = registerVal8
	local registerVal9 = CoD.LeaderboardHeader_ColumnText.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 588.500000, 682.000000)
	registerVal9:setTopBottom(true, false, 2.500000, 22.500000)
	local function __FUNC_13A2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.ColumnText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "LeaderboardHeader", "column3", __FUNC_13A2_)
	registerVal2:addElement(registerVal9)
	registerVal2.Column3 = registerVal9
	local registerVal10 = CoD.LeaderboardHeader_ColumnText.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 682.000000, 775.000000)
	registerVal10:setTopBottom(true, false, 2.500000, 22.500000)
	local function __FUNC_147A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.ColumnText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "LeaderboardHeader", "column4", __FUNC_147A_)
	registerVal2:addElement(registerVal10)
	registerVal2.Column4 = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1552_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.Rank:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal12.DefaultClip = __FUNC_1552_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1647_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.Rank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal12.DefaultClip = __FUNC_1647_
	registerVal11.Freerun = registerVal12
	registerVal12 = {}
	local function __FUNC_1740_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Position:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Rank:setAlpha(1.000000)
		registerVal2.Rank:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Name:setLeftRight(true, false, 138.000000, 308.000000)
		registerVal2.Name:setTopBottom(true, false, 2.500000, 22.500000)
		registerVal2.Name:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal12.DefaultClip = __FUNC_1740_
	registerVal11.DefaultStateArabic = registerVal12
	registerVal12 = {}
	local function __FUNC_1A2F_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Position:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Rank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Name:setLeftRight(true, false, 95.000000, 308.000000)
		registerVal2.Name:setTopBottom(true, false, 3.500000, 23.500000)
		registerVal2.Name:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal12.DefaultClip = __FUNC_1A2F_
	registerVal11.FreerunArabic = registerVal12
	registerVal12 = {}
	local function __FUNC_1CE7_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.Rank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Name:setLeftRight(true, false, 95.000000, 308.000000)
		registerVal2.Name:setTopBottom(true, false, 2.500000, 22.500000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal12.DefaultClip = __FUNC_1CE7_
	registerVal11.DOA = registerVal12
	registerVal12 = {}
	local function __FUNC_1EA6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Position:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Rank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Name:setLeftRight(true, false, 95.000000, 308.000000)
		registerVal2.Name:setTopBottom(true, false, 2.500000, 22.500000)
		registerVal2.Name:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal12.DefaultClip = __FUNC_1EA6_
	registerVal11.DOAArabic = registerVal12
	registerVal12 = {}
	local function __FUNC_215F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.Rank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Name:setLeftRight(true, false, 95.000000, 308.000000)
		registerVal2.Name:setTopBottom(true, false, 2.500000, 22.500000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal12.DefaultClip = __FUNC_215F_
	registerVal11.Rankless = registerVal12
	registerVal12 = {}
	local function __FUNC_231E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Position:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Rank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Name:setLeftRight(true, false, 95.000000, 308.000000)
		registerVal2.Name:setTopBottom(true, false, 2.500000, 22.500000)
		registerVal2.Name:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal12.DefaultClip = __FUNC_231E_
	registerVal11.RanklessArabic = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Freerun"
	local function __FUNC_25D7_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_25D7_
	local registerVal15 = {}
	registerVal15.stateName = "DefaultStateArabic"
	local function __FUNC_2621_(arg0, arg1, arg2)
		return IsCurrentLanguageArabic()
	end

	registerVal15.condition = __FUNC_2621_
	local registerVal16 = {}
	registerVal16.stateName = "FreerunArabic"
	local function __FUNC_2679_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_2679_
	local registerVal17 = {}
	registerVal17.stateName = "DOA"
	local function __FUNC_26C5_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal17.condition = __FUNC_26C5_
	local registerVal18 = {}
	registerVal18.stateName = "DOAArabic"
	local function __FUNC_2711_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal18.condition = __FUNC_2711_
	local registerVal19 = {}
	registerVal19.stateName = "Rankless"
	local function __FUNC_275D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal19.condition = __FUNC_275D_
	local registerVal20 = {}
	registerVal20.stateName = "RanklessArabic"
	local function __FUNC_27A9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal20.condition = __FUNC_27A9_
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17, registerVal18, registerVal19, registerVal20}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_27F5_(arg0)
		arg0.Column0:close()
		arg0.Column1:close()
		arg0.Column2:close()
		arg0.Column3:close()
		arg0.Column4:close()
		arg0.Position:close()
		arg0.Rank:close()
		arg0.Name:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_27F5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

