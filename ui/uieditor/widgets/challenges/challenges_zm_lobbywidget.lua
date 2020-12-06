-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Challenges.Challenges_PercentCompleteWidget_MD")
local function __FUNC_233_(arg0, arg1, arg2)
	local registerVal3 = DataSources.DailyChallengeWidget.getModel(arg1)
	local registerVal4 = Engine.GetModel(registerVal3, "data")
	local registerVal5 = Engine.GetModel(registerVal3, "update")
	local function __FUNC_36F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 == 0.000000 then
			return 
		end
		CoD.ChallengesUtility.UpdateDailyChallengeModel(arg1, registerVal4, Enum.eModes.MODE_ZOMBIES)
		Engine.SetModelValue(arg0, 0.000000)
	end

	arg0:subscribeToModel(registerVal5, __FUNC_36F_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Challenges_ZM_LobbyWidget = registerVal2
local function __FUNC_4DE_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_ZM_LobbyWidget)
	registerVal2.id = "Challenges_ZM_LobbyWidget"
	registerVal2.soundSet = "Special_widgets"
	registerVal2:setLeftRight(true, false, 0.000000, 306.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 87.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.100000, 0.100000, 0.100000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 88.500000, 302.500000)
	registerVal4:setTopBottom(true, false, 8.250000, 33.250000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1330_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "DailyChallengeWidget", "Data.title", __FUNC_1330_)
	registerVal2:addElement(registerVal4)
	registerVal2.Title = registerVal4
	local registerVal5 = CoD.Challenges_PercentCompleteWidget_MD.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 8.050000, 66.180000)
	registerVal5:setTopBottom(true, false, 4.880000, 63.000000)
	local function __FUNC_13EA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal5.percentCompleteCircle:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "DailyChallengeWidget", "Data.progressPercentage", __FUNC_13EA_)
	local function __FUNC_156B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.percentText:setText(FractionToPercentageRounded(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "DailyChallengeWidget", "Data.progressPercentage", __FUNC_156B_)
	registerVal2:addElement(registerVal5)
	registerVal2.PercentCompleteWidget = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 3.530000, 70.700000)
	registerVal6:setTopBottom(true, false, -0.680000, 66.500000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_challenges_complete_icon"))
	registerVal2:addElement(registerVal6)
	registerVal2.CompleteImage = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -79.000000, 131.000000)
	registerVal7:setTopBottom(true, false, 8.250000, 33.250000)
	registerVal7:setRGB(ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("MENU_RTS_COMPLETE_CAPS"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.CompletedText = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, false, 66.500000, 87.400000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.400000)
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal8:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal8)
	registerVal2.TitleBg = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 5.880000, 96.880000)
	registerVal9:setTopBottom(true, false, 66.500000, 86.500000)
	registerVal9:setText(Engine.Localize("MENU_DAILY_CHALLENGE"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal9)
	registerVal2.Title0 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_164A_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PercentCompleteWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CompleteImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CompletedText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.DefaultClip = __FUNC_164A_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_18B3_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PercentCompleteWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CompleteImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CompletedText:setLeftRight(false, false, -63.500000, 146.500000)
		registerVal2.CompletedText:setTopBottom(true, false, 30.880000, 55.880000)
		registerVal2.CompletedText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.DefaultClip = __FUNC_18B3_
	registerVal10.Complete = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Complete"
	local function __FUNC_1BAB_(arg0, arg2, arg3)
		local registerVal3 = IsLive()
		registerVal3 = IsZombies()
		if registerVal3 and registerVal3 then
			registerVal3 = IsModelValueGreaterThanOrEqualTo(arg1, "DailyChallengeWidget.Data.progressPercentage", 1.000000)
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_1BAB_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_1C94_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_1C94_)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.lobbyNav")
	local function __FUNC_1DC4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_1DC4_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "DailyChallengeWidget.Data.progressPercentage")
	local function __FUNC_1EEC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "DailyChallengeWidget.Data.progressPercentage"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_1EEC_)
	local function __FUNC_202E_(arg0)
		arg0.PercentCompleteWidget:close()
		arg0.Title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_202E_)
	if __FUNC_233_ then
		__FUNC_233_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Challenges_ZM_LobbyWidget.new = __FUNC_4DE_
