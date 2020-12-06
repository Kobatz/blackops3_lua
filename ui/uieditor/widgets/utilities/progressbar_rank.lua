-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AAR.XPbarFrame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ProgressBar_Rank = registerVal1
function CoD.ProgressBar_Rank.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ProgressBar_Rank)
	registerVal2.id = "ProgressBar_Rank"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 121.000000, -118.000000)
	registerVal3:setTopBottom(true, false, 27.000000, 42.000000)
	registerVal3:setRGB(0.620000, 0.620000, 0.620000)
	registerVal3:setAlpha(0.280000)
	registerVal2:addElement(registerVal3)
	registerVal2.XpBarBg = registerVal3
	local registerVal4 = CoD.XPbarFrame.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 119.000000, -116.000000)
	registerVal4:setTopBottom(true, false, 23.000000, 46.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.XpBarFrame = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 62.000000, 110.000000)
	registerVal5:setTopBottom(false, true, -42.000000, -18.000000)
	registerVal5:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1496_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setRGB(SetToParagonColorIfPrestigeMasterByRank(255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "XPProgressionBar", "currentRank", __FUNC_1496_)
	local function __FUNC_1571_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "XPProgressionBar", "currentRank", __FUNC_1571_)
	registerVal2:addElement(registerVal5)
	registerVal2.curRank = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -0.500000, 62.000000)
	registerVal6:setTopBottom(false, true, -59.000000, -3.000000)
	local function __FUNC_162A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "XPProgressionBar", "currentRankIcon", __FUNC_162A_)
	registerVal2:addElement(registerVal6)
	registerVal2.curRankImg = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 121.000000, -118.000000)
	registerVal7:setTopBottom(true, false, 27.000000, 42.000000)
	registerVal7:setRGB(1.000000, 0.350000, 0.000000)
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_16FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal7:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "XPProgressionBar", "progress", __FUNC_16FE_)
	registerVal2:addElement(registerVal7)
	registerVal2.progress = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, true, -112.000000, -64.000000)
	registerVal8:setTopBottom(false, true, -41.000000, -17.000000)
	registerVal8:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1854_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setRGB(SetToParagonColorIfPrestigeMasterByRank(255.000000, 255.000000, 255.000000, registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "XPProgressionBar", "nextRank", __FUNC_1854_)
	local function __FUNC_1931_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "XPProgressionBar", "nextRank", __FUNC_1931_)
	registerVal2:addElement(registerVal8)
	registerVal2.nextRank = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -64.000000, 0.000000)
	registerVal9:setTopBottom(false, true, -58.500000, -2.500000)
	local function __FUNC_19EA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "XPProgressionBar", "nextRankIcon", __FUNC_19EA_)
	registerVal2:addElement(registerVal9)
	registerVal2.nextRankImage = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, true, -193.130000, -118.130000)
	registerVal10:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1ABE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(LocalizeIntoString("MPUI_N_XP", registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "XPProgressionBar", "xpToNextRank", __FUNC_1ABE_)
	registerVal2:addElement(registerVal10)
	registerVal2.nextRankDesc = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(false, true, -322.130000, -193.130000)
	registerVal11:setTopBottom(true, false, 2.000000, 22.000000)
	registerVal11:setText(Engine.Localize("MENU_NEXT_LEVEL"))
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.nextRankDesc0 = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(false, true, -316.130000, -187.130000)
	registerVal12:setTopBottom(true, false, 2.000000, 22.000000)
	registerVal12:setText(Engine.Localize(":"))
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.nextRankDesc00 = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(false, true, -104.000000, -27.000000)
	registerVal13:setTopBottom(false, true, -41.000000, -17.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setText(Engine.Localize("MPUI_MAX_CAPS"))
	registerVal13:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal13)
	registerVal2.maxRankTextBox = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1B8B_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.XpBarBg:setAlpha(0.280000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.XpBarFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.curRank:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.curRankImg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.progress:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.nextRank:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.nextRankImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.nextRankDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.nextRankDesc0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.nextRankDesc00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.maxRankTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1B8B_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_200A_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.XpBarBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.XpBarFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.curRank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.curRankImg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.progress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.nextRank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.nextRankImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.nextRankDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.nextRankDesc0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.nextRankDesc00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.maxRankTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_200A_
	registerVal14.Hidden = registerVal15
	registerVal15 = {}
	local function __FUNC_2480_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.XpBarBg:setAlpha(0.280000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.XpBarFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.curRank:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.curRankImg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.progress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.nextRank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.nextRankImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.nextRankDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.nextRankDesc0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.nextRankDesc00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.maxRankTextBox:setLeftRight(false, true, -104.000000, -27.000000)
		registerVal2.maxRankTextBox:setTopBottom(false, true, -41.000000, -17.000000)
		registerVal2.maxRankTextBox:setAlpha(0.000000)
		registerVal2.maxRankTextBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_2480_
	registerVal14.MaxLevelCP = registerVal15
	registerVal15 = {}
	local function __FUNC_2A1C_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.XpBarBg:setAlpha(0.280000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.XpBarFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.curRank:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.curRankImg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.progress:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.nextRank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.nextRankImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.nextRankDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.nextRankDesc0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.nextRankDesc00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.maxRankTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_2A1C_
	registerVal14.MaxLevel = registerVal15
	registerVal15 = {}
	local function __FUNC_2E9E_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.XpBarBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.XpBarFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.curRank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.curRankImg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.progress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.nextRank:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.nextRankImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.nextRankDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.nextRankDesc0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.nextRankDesc00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.maxRankTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_2E9E_
	registerVal14.MaxParagonLevel = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Hidden"
	local function __FUNC_3314_(arg0, arg1, arg2)
		return IsLobbyNetworkModeLAN()
	end

	registerVal17.condition = __FUNC_3314_
	local registerVal18 = {}
	registerVal18.stateName = "MaxLevelCP"
	local function __FUNC_336B_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueGreaterThan(arg1, "XPProgressionBar.nextRank", (CoD.MAX_RANK + 1.000000))
		if registerVal3 then
			registerVal3 = IsCampaign()
		end
		return registerVal3
	end

	registerVal18.condition = __FUNC_336B_
	local registerVal19 = {}
	registerVal19.stateName = "MaxLevel"
	local function __FUNC_3448_(arg0, arg2, arg3)
		local registerVal3 = IsMaxPrestigeLevel(arg1)
		if not registerVal3 then
			registerVal3 = IsModelValueGreaterThan(arg1, "XPProgressionBar.nextRank", (CoD.MAX_RANK + 1.000000))
		else
		end
		return true
	end

	registerVal19.condition = __FUNC_3448_
	local registerVal20 = {}
	registerVal20.stateName = "MaxParagonLevel"
	local function __FUNC_3540_(arg0, arg2, arg3)
		local registerVal3 = IsInParagonCapableGameMode()
		registerVal3 = IsMaxPrestigeLevel(arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsModelValueGreaterThan(arg1, "XPProgressionBar.nextRank", ((CoD.MAX_PARAGON_RANK + CoD.MAX_RANK) + 2.000000))
		end
		return registerVal3
	end

	registerVal20.condition = __FUNC_3540_
	registerVal16 = {registerVal17, registerVal18, registerVal19, registerVal20}
	registerVal2:mergeStateConditions(registerVal16)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, "XPProgressionBar.nextRank")
	local function __FUNC_368E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "XPProgressionBar.nextRank"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_368E_)
	registerVal17 = Engine.GetGlobalModel()
	registerVal16 = Engine.GetModel(registerVal17, "lobbyRoot.lobbyNav")
	local function __FUNC_37BB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_37BB_)
	local function __FUNC_38E0_(arg0)
		arg0.XpBarFrame:close()
		arg0.curRank:close()
		arg0.curRankImg:close()
		arg0.progress:close()
		arg0.nextRank:close()
		arg0.nextRankImage:close()
		arg0.nextRankDesc:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_38E0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

