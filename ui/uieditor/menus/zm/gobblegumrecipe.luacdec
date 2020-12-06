-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ZM_Cookbook.GenericMenuFrame_Cookbook")
require("ui.uieditor.widgets.BubbleGumBuffs.GobbleGumCookbookDistillsBalance")
require("ui.uieditor.widgets.BubbleGumBuffs.GobbleGumCookbookRemainingTime")
require("ui.uieditor.widgets.BubbleGumBuffs.GobbleGumRecipeListItem")
require("ui.uieditor.widgets.ZM_Cookbook.Cookbook_Flipbook")
require("ui.uieditor.widgets.ZM_Cookbook.Cookbook_Indicator_Triangle")
require("ui.uieditor.widgets.ZM_Cookbook.Cookboook_ResultListItem")
require("ui.uieditor.widgets.ZM_Cookbook.Cookbook_Main")
require("ui.uieditor.widgets.ZM_Cookbook.Cookbook_Main_Result")
require("ui.uieditor.widgets.ZM_Cookbook.Cookbook_Distills_Required")
function CoD.BubbleGumBuffUtility.CookGobbleGumRecipe(arg0, arg1)
	local function __FUNC_DF9_(arg0, arg1)
		arg0:registerEventHandler("clip_over", nil)
		arg0:setState("DefaultState")
		arg0.playedClip = nil
		CoD.Menu.UpdateAllButtonPrompts(arg0, arg1)
	end

	if arg0.currentState == "Cooking" then
		return 
	end
	local registerVal5 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg1)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "recipeIndex"))
	local registerVal4 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeForIndex(arg1, registerVal3)
	if not registerVal4.haveAllIngredients then
		OpenSystemOverlay(arg0, arg0, arg1, "NotEnoughIngredients", nil)
		return 
	end
	LUI.CoDMetrics.CookGobbleGumRecipeEvent(arg1, registerVal3)
	arg0:setState("Cooking")
	CoD.Menu.UpdateAllButtonPrompts(arg0, arg1)
	registerVal5 = CoD.BubbleGumBuffUtility.IsDebuggingEnabled()
	if registerVal5 then
		arg0.PipeAnimLeft:AnimateAllPipes()
		arg0:DrainIngredientsAnimation()
		arg0:playClip("StartCooking")
		arg0.nextClip = "Cooking"
		arg0.playedClip = false
		local function __FUNC_F15_(arg2, arg3)
			if arg0.playedClip == false then
				LUI.UIElement.clipOver(arg2, arg3)
				arg0.playedClip = true
			else
				arg0.CookboookResultListItem:playClip("Animate")
				arg0.PipeAnimResult:playClip("Animate")
				arg0:playClip("EndCooking")
				local function __FUNC_1162_()
					local registerVal1 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg1)
					local registerVal0 = Engine.CreateModel(registerVal1, "update")
					registerVal1 = Engine.SetModelValue(registerVal0, 1.000000)
					if not registerVal1 then
						Engine.ForceNotifyModelSubscriptions(registerVal0)
					end
					arg0:RefillIngredientsAnimation()
				end

				arg0:addElement(LUI.UITimer.newElementTimer(1950.000000, true, __FUNC_1162_))
				local function __FUNC_12FC_(arg2, arg3)
					CoD.BubbleGumBuffUtility.SpendDistill(arg1)
					DataSources.GobbleGumDistills.getModel(arg1)
					__FUNC_DF9_(arg0, arg1)
					CoD.Menu.UpdateAllButtonPrompts(arg0, arg1)
					return 
				end

				arg0:registerEventHandler("clip_over", __FUNC_12FC_)
			end
		end

		arg0:registerEventHandler("clip_over", __FUNC_F15_)
		return 
	end
	local registerVal6 = CoD.BubbleGumBuffUtility.GetRemainingUsesForDistill(arg1, CoD.BubbleGumBuffUtility.FREE_DISTILL)
	local registerVal7 = CoD.BubbleGumBuffUtility.GetRecipeDistillCost()
	if registerVal7 <= registerVal6 then
	end
	registerVal6 = Engine.CookGobbleGumRecipe(arg1, registerVal3, CoD.BubbleGumBuffUtility.FreeDistillOffset)
	if registerVal6 == false then
		GoBack(arg0, arg1)
		LuaUtils.UI_ShowErrorMessageDialog(arg1, "ZMUI_COOKBOOK_RECIPE_FAILED")
		return 
	end
	arg0.PipeAnimLeft:AnimateAllPipes()
	arg0:DrainIngredientsAnimation()
	arg0:playClip("StartCooking")
	arg0.nextClip = "Cooking"
	local function __FUNC_145D_(arg2, arg3)
		local registerVal2 = Engine.LootResultsReady(arg1)
		registerVal2 = Engine.IsLootReady(arg1)
		registerVal2 = Engine.IsInventoryBusy(arg1)
		if registerVal2 and arg3 or registerVal2 then
			LUI.UIElement.clipOver(arg2, arg3)
		else
			registerVal2 = Engine.LootFailureReason(arg1)
			if registerVal2 == Enum.LootResultType.LOOT_RESULT_SUCCESS then
				arg0.CookboookResultListItem:playClip("Animate")
				arg0.PipeAnimResult:playClip("Animate")
				arg0:playClip("EndCooking")
				local function __FUNC_1862_()
					local registerVal1 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg1)
					local registerVal0 = Engine.CreateModel(registerVal1, "update")
					registerVal1 = Engine.SetModelValue(registerVal0, 1.000000)
					if not registerVal1 then
						Engine.ForceNotifyModelSubscriptions(registerVal0)
					end
					arg0:RefillIngredientsAnimation()
				end

				arg0:addElement(LUI.UITimer.newElementTimer(1950.000000, true, __FUNC_1862_))
			else
				GoBack(arg0, arg1)
				LuaUtils.UI_ShowErrorMessageDialog(arg1, "ZMUI_COOKBOOK_RECIPE_FAILED")
				return 
			end
			local function __FUNC_19FC_(arg2, arg3)
				__FUNC_DF9_(arg0, arg1)
				CoD.Menu.UpdateAllButtonPrompts(arg0, arg1)
			end

			arg0:registerEventHandler("clip_over", __FUNC_19FC_)
		end
	end

	arg0:registerEventHandler("clip_over", __FUNC_145D_)
end

local registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal2.title = "ZMUI_COOKBOOK_NOT_ENOUGH_GOBBLEGUM_CAPS"
registerVal2.description = "ZMUI_COOKBOOK_NOT_ENOUGH_GOBBLEGUM_DESC"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_1A9B_(arg0, arg1)
	local function __FUNC_1B5D_(arg0, arg1)
		local function __FUNC_1BFC_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = GoBack(arg4, arg2)
		end

		local function __FUNC_1C48_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = {}
			local registerVal6 = {}
			registerVal6.displayText = arg3
			registerVal5.models = registerVal6
			registerVal6 = {}
			registerVal6.action = arg1
			registerVal6.actionParam = arg2
			registerVal6.selectIndex = arg4
			registerVal5.properties = registerVal6
			return registerVal5
		end

		table.insert({}, __FUNC_1C48_(arg0, __FUNC_1BFC_, {}, "MENU_OK", true))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("NotEnoughIngredientsItemList", __FUNC_1B5D_, true)
	DataSources.NotEnoughIngredientsItemList = registerVal3
	return "NotEnoughIngredientsItemList"
end

registerVal2.listDatasource = __FUNC_1A9B_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
CoD.OverlayUtility.AddSystemOverlay("NotEnoughIngredients", registerVal2)
local function __FUNC_1D0F_(arg0, arg1)
	local function __FUNC_20D5_()
		CoD.BubbleGumBuffUtility.ScheduleTimerTick(arg1)
	end

	arg0:addElement(LUI.UITimer.newElementTimer(100.000000, false, __FUNC_20D5_))
	local registerVal5 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg1)
	local registerVal4 = Engine.GetModel(registerVal5, "scheduleIndex")
	local function __FUNC_216A_(arg2)
		DelayGoBack(arg0, arg1)
	end

	arg0:subscribeToModel(registerVal4, __FUNC_216A_, false)
	local registerVal2 = arg0.IngredientList:getItemAtPosition(1.000000, 1.000000)
	if registerVal2 then
		arg0.PipeAnimLeft.CookbookFlowAnimTopBg:setModel(registerVal2:getModel())
	end
	local registerVal3 = arg0.IngredientList:getItemAtPosition(2.000000, 1.000000)
	if registerVal3 then
		arg0.PipeAnimLeft.CookbookFlowAnimMiddleBg:setModel(registerVal3:getModel())
	end
	registerVal4 = arg0.IngredientList:getItemAtPosition(3.000000, 1.000000)
	if registerVal4 then
		arg0.PipeAnimLeft.CookbookFlowAnimBottomBg:setModel(registerVal4:getModel())
	end
	local function __FUNC_21B9_(arg0)
		if arg0.IngredientList then
			for index1=1.000000, arg0.IngredientList.itemCount, 1.000000 do
				local registerVal5 = arg0.IngredientList:getItemAtPosition(index1, 1.000000)
				registerVal5.CookbookRecipeFill:playClip("Drain")
			end
		end
	end

	arg0.DrainIngredientsAnimation = __FUNC_21B9_
	local function __FUNC_22DC_(arg0)
		if arg0.IngredientList then
			for index1=1.000000, arg0.IngredientList.itemCount, 1.000000 do
				local registerVal5 = arg0.IngredientList:getItemAtPosition(index1, 1.000000)
				local registerVal8 = registerVal5.CookbookRecipeFill:getModel()
				local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal8, "itemIndex"))
				local registerVal9 = registerVal5.CookbookRecipeFill:getModel()
				local registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal9, "count"))
				registerVal8 = GetConsumableCountFromIndex(arg1, registerVal6)
				registerVal9 = math.min(registerVal8, registerVal7)
				registerVal5.CookbookRecipeFill.fill:setAlpha(1.000000)
				registerVal5.CookbookRecipeFill.fillAnimated:setAlpha(0.000000)
				registerVal5.CookbookRecipeFill.fill:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				registerVal5.CookbookRecipeFill.fill:beginAnimation("fill_bar", 750.000000, true, true)
				registerVal5.CookbookRecipeFill.fill:setShaderVector(0.000000, (registerVal9 / registerVal7), 0.000000, 0.000000, 0.000000)
			end
		end
	end

	arg0.RefillIngredientsAnimation = __FUNC_22DC_
end

local function __FUNC_2643_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GobbleGumRecipe")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "AbilityWheel"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GobbleGumRecipe.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_cookbook_bg"))
	registerVal1:addElement(registerVal3)
	registerVal1.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal4:setImage(RegisterImage("uie_t7_zm_cookbook_bg_receipe"))
	registerVal1:addElement(registerVal4)
	registerVal1.Drawing = registerVal4
	local registerVal5 = CoD.GenericMenuFrame_Cookbook.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_NEW"))
	registerVal1:addElement(registerVal5)
	registerVal1.GenericMenuFrameCookbook = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, 355.000000, 578.000000)
	registerVal6:setTopBottom(false, false, -290.340000, -160.380000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setImage(RegisterImage("uie_t7_zm_cookbook_timeframe"))
	registerVal1:addElement(registerVal6)
	registerVal1.Backing = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 569.000000, 769.000000)
	registerVal7:setTopBottom(true, false, 163.240000, 197.240000)
	registerVal7:setRGB(0.300000, 0.200000, 0.140000)
	registerVal7:setAlpha(0.700000)
	registerVal7:setText(LocalizeToUpperString("ZMUI_COOKBOOK_DISTILL"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.DistillTextBox = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 910.000000, 1110.000000)
	registerVal8:setTopBottom(true, false, 163.240000, 197.240000)
	registerVal8:setRGB(0.300000, 0.200000, 0.140000)
	registerVal8:setAlpha(0.700000)
	registerVal8:setText(LocalizeToUpperString("ZMUI_COOKBOOK_RESULT"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.ResultTextBox = registerVal8
	local registerVal9 = CoD.GobbleGumCookbookDistillsBalance.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 1065.000000, 1170.000000)
	registerVal9:setTopBottom(true, false, 96.660000, 121.660000)
	registerVal1:addElement(registerVal9)
	registerVal1.GobbleGumCookbookDistillsBalance = registerVal9
	local registerVal10 = CoD.GobbleGumCookbookRemainingTime.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 1016.000000, 1170.000000)
	registerVal10:setTopBottom(true, false, 125.830000, 150.830000)
	registerVal10:setRGB(0.300000, 0.200000, 0.140000)
	registerVal10:setAlpha(0.700000)
	registerVal10:setScale(0.800000)
	registerVal1:addElement(registerVal10)
	registerVal1.GobbleGumCookbookRemainingTime = registerVal10
	local registerVal11 = LUI.GridLayout.new(registerVal1, arg0, false, 0.000000, 0.000000, 31.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal11:setLeftRight(true, false, 187.570000, 295.570000)
	registerVal11:setTopBottom(true, false, 97.140000, 639.140000)
	registerVal11:setWidgetType(CoD.GobbleGumRecipeListItem)
	registerVal11:setVerticalCount(3.000000)
	registerVal11:setSpacing(31.000000)
	registerVal11:setDataSource("GobbleGumRecipeIngredientList")
	registerVal1:addElement(registerVal11)
	registerVal1.IngredientList = registerVal11
	local registerVal12 = CoD.Cookbook_Flipbook.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 618.000000, 714.000000)
	registerVal12:setTopBottom(true, false, 297.000000, 393.000000)
	registerVal12:setAlpha(0.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.CookbookFlipbook0 = registerVal12
	local registerVal13 = CoD.Cookbook_Indicator_Triangle.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 598.770000, 622.770000)
	registerVal13:setTopBottom(true, false, 269.240000, 293.240000)
	registerVal13:setScale(0.700000)
	registerVal1:addElement(registerVal13)
	registerVal1.CookbookIndicatorTriangleTopLeft = registerVal13
	local registerVal14 = CoD.Cookbook_Indicator_Triangle.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 710.000000, 734.000000)
	registerVal14:setTopBottom(true, false, 269.240000, 293.240000)
	registerVal14:setYRot(-180.000000)
	registerVal14:setScale(0.700000)
	registerVal1:addElement(registerVal14)
	registerVal1.CookbookIndicatorTriangleTopRight = registerVal14
	local registerVal15 = CoD.Cookbook_Indicator_Triangle.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 710.000000, 734.000000)
	registerVal15:setTopBottom(true, false, 402.240000, 426.240000)
	registerVal15:setXRot(-180.000000)
	registerVal15:setYRot(-180.000000)
	registerVal15:setScale(0.700000)
	registerVal1:addElement(registerVal15)
	registerVal1.CookbookIndicatorTriangleBottomRight = registerVal15
	local registerVal16 = CoD.Cookbook_Indicator_Triangle.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 598.770000, 622.770000)
	registerVal16:setTopBottom(true, false, 402.240000, 426.240000)
	registerVal16:setXRot(-180.000000)
	registerVal16:setScale(0.700000)
	registerVal1:addElement(registerVal16)
	registerVal1.CookbookIndicatorTriangleBottomLeft = registerVal16
	local registerVal17 = CoD.Cookboook_ResultListItem.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 858.500000, 1158.500000)
	registerVal17:setTopBottom(true, false, 201.800000, 541.800000)
	local function __FUNC_4236_(arg1)
		registerVal17:setModel(arg1, arg0)
	end

	registerVal17:subscribeToGlobalModel(arg0, "GobbleGumRecipeResult", nil, __FUNC_4236_)
	registerVal1:addElement(registerVal17)
	registerVal1.CookboookResultListItem = registerVal17
	local registerVal18 = CoD.Cookbook_Main.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 435.520000, 531.870000)
	registerVal18:setTopBottom(true, false, 144.490000, 543.510000)
	registerVal1:addElement(registerVal18)
	registerVal1.PipeAnimLeft = registerVal18
	local registerVal19 = CoD.Cookbook_Main_Result.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, false, 797.400000, 887.400000)
	registerVal19:setTopBottom(true, false, 267.500000, 420.500000)
	local function __FUNC_4286_(arg1)
		registerVal19:setModel(arg1, arg0)
	end

	registerVal19:subscribeToGlobalModel(arg0, "GobbleGumRecipeResult", nil, __FUNC_4286_)
	registerVal1:addElement(registerVal19)
	registerVal1.PipeAnimResult = registerVal19
	local registerVal20 = CoD.Cookbook_Distills_Required.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 631.000000, 710.000000)
	registerVal20:setTopBottom(true, false, 221.140000, 252.140000)
	registerVal1:addElement(registerVal20)
	registerVal1.CookbookDistillsRequired = registerVal20
	local registerVal21 = LUI.UIText.new()
	registerVal21:setLeftRight(true, false, 129.000000, 466.000000)
	registerVal21:setTopBottom(true, false, 52.660000, 77.660000)
	registerVal21:setRGB(0.300000, 0.200000, 0.140000)
	registerVal21:setZRot(-1.500000)
	registerVal21:setText(Engine.Localize("MENU_NEWTONS_COOKBOOK_CAPS"))
	registerVal21:setTTF("fonts/default.ttf")
	registerVal21:setLetterSpacing(2.799999)
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal21)
	registerVal1.Title0 = registerVal21
	local registerVal22 = LUI.UIElement.new()
	registerVal22:setLeftRight(true, false, -48.000000, 0.000000)
	registerVal22:setTopBottom(true, false, 29.660000, 77.660000)
	registerVal1:addElement(registerVal22)
	registerVal1.Audio = registerVal22
	local registerVal23 = {}
	local registerVal24 = {}
	local function __FUNC_42D6_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal9:completeAnimation()
		registerVal1.GobbleGumCookbookDistillsBalance:setLeftRight(true, false, 1065.000000, 1170.000000)
		registerVal1.GobbleGumCookbookDistillsBalance:setTopBottom(true, false, 96.660000, 121.660000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal1.CookbookFlipbook0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
	end

	registerVal24.DefaultClip = __FUNC_42D6_
	registerVal23.DefaultState = registerVal24
	registerVal24 = {}
	local function __FUNC_44BF_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal12:completeAnimation()
		registerVal1.CookbookFlipbook0:setLeftRight(true, false, 617.000000, 713.000000)
		registerVal1.CookbookFlipbook0:setTopBottom(true, false, 297.000000, 393.000000)
		registerVal1.CookbookFlipbook0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
	end

	registerVal24.DefaultClip = __FUNC_44BF_
	local function __FUNC_4655_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_4817_(arg0, arg1)
			local function __FUNC_496C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_496C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_496C_)
		end

		registerVal12:completeAnimation()
		registerVal1.CookbookFlipbook0:setAlpha(0.000000)
		__FUNC_4817_(registerVal12, {})
		registerVal22:completeAnimation()
		registerVal1.Audio:setPlaySoundDirect(true)
		registerVal1.Audio:playSound("uin_cookbook_mix_1", arg0)
		registerVal1.clipFinished(registerVal22, {})
	end

	registerVal24.StartCooking = __FUNC_4655_
	local function __FUNC_4B21_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_4D0E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.CookbookFlipbook0:setAlpha(1.000000)
		__FUNC_4D0E_(registerVal12, {})
		registerVal22:completeAnimation()
		registerVal1.Audio:setPlaySoundDirect(true)
		registerVal1.Audio:playSound("uin_cookbook_mix_2", arg0)
		registerVal1.clipFinished(registerVal22, {})
		registerVal1.nextClip = "Cooking"
	end

	registerVal24.Cooking = __FUNC_4B21_
	local function __FUNC_4EC1_()
		registerVal1:setupElementClipCounter(2.000000)
		local function __FUNC_5083_(arg0, arg1)
			local function __FUNC_51D8_(arg0, arg1)
				local function __FUNC_5353_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1540.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal1.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5353_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5353_)
			end

			if arg1.interrupted then
				__FUNC_51D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51D8_)
		end

		registerVal12:completeAnimation()
		registerVal1.CookbookFlipbook0:setAlpha(1.000000)
		__FUNC_5083_(registerVal12, {})
		registerVal22:completeAnimation()
		registerVal1.Audio:setPlaySoundDirect(true)
		registerVal1.Audio:playSound("uin_cookbook_mix_3", arg0)
		registerVal1.clipFinished(registerVal22, {})
	end

	registerVal24.EndCooking = __FUNC_4EC1_
	registerVal23.Cooking = registerVal24
	registerVal1.clipsPerState = registerVal23
	local registerVal26 = Engine.GetModelForController(arg0)
	local registerVal25 = Engine.GetModel(registerVal26, "GobbleGumDistills.totalDistills")
	local function __FUNC_5505_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "GobbleGumDistills.totalDistills"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal1:subscribeToModel(registerVal25, __FUNC_5505_)
	registerVal26 = Engine.GetModelForController(arg0)
	registerVal25 = Engine.GetModel(registerVal26, "GobbleGumRecipeInfo.haveAllIngredients")
	local function __FUNC_56D8_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "GobbleGumRecipeInfo.haveAllIngredients"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal1:subscribeToModel(registerVal25, __FUNC_56D8_)
	local function __FUNC_58B3_(arg1, arg2)
		local registerVal3 = HasSeenNewtonsCookbookFirstTimePopup(arg0)
		if not registerVal3 then
			OpenSystemOverlay(registerVal1, registerVal1, arg0, "NewtonsCookbookWelcomePopup", "")
		else
			registerVal3 = HasSeenNewtonsCookbookFirstTimePopup(arg0)
			registerVal3 = CanGetFreeGobblegumCookbookUses(arg0)
			registerVal3 = IsPerControllerTablePropertyValue(arg0, "came_from_lobby", true)
			if registerVal3 and registerVal3 and registerVal3 then
				OpenSystemOverlay(registerVal1, registerVal1, arg0, "PurchaseDistills", nil)
			end
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_58B3_)
	local function __FUNC_5AB0_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal1, "Cooking")
		if not registerVal4 then
			GoBack(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_5B44_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		local registerVal3 = IsSelfInState(registerVal1, "Cooking")
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_5AB0_, __FUNC_5B44_, true)
	local function __FUNC_5C89_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal1, "Cooking")
		registerVal4 = HasGobbleGumCookbookUses(arg2)
		if not registerVal4 and not registerVal4 then
			OpenSystemOverlay(registerVal1, arg1, arg2, "PurchaseDistills", nil)
			return true
		else
			registerVal4 = IsSelfInState(registerVal1, "Cooking")
			registerVal4 = HasGobbleGumCookbookIngredients(arg2)
			if not registerVal4 and not registerVal4 then
				OpenSystemOverlay(registerVal1, arg1, arg2, "NotEnoughIngredients", "")
				return true
			else
				registerVal4 = IsSelfInState(registerVal1, "Cooking")
				if not registerVal4 then
					CookGobbleGumRecipe(registerVal1, arg2)
					return true
				end
			end
		end
	end

	local function __FUNC_5E79_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ZMUI_COOKBOOK_ACTIVATE_RECIPE")
		local registerVal3 = IsSelfInState(registerVal1, "Cooking")
		registerVal3 = HasGobbleGumCookbookUses(arg2)
		if not registerVal3 and not registerVal3 then
			return true
		else
			registerVal3 = IsSelfInState(registerVal1, "Cooking")
			registerVal3 = HasGobbleGumCookbookIngredients(arg2)
			if not registerVal3 and not registerVal3 then
				return true
			else
				registerVal3 = IsSelfInState(registerVal1, "Cooking")
				if not registerVal3 then
					return true
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_5C89_, __FUNC_5E79_, true)
	local function __FUNC_608B_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfInState(registerVal1, "Cooking")
		if not registerVal4 then
			OpenSystemOverlay(registerVal1, arg1, arg2, "PurchaseDistills", nil)
			return true
		end
	end

	local function __FUNC_614D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "ZMUI_COOKBOOK_BUY_DISTILLS")
		local registerVal3 = IsSelfInState(registerVal1, "Cooking")
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "P", __FUNC_608B_, __FUNC_614D_, true)
	local function __FUNC_62A2_(arg1)
		SetPerControllerTableProperty(arg0, "came_from_lobby", nil)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_62A2_)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal17.id = "CookboookResultListItem"
	registerVal25 = {}
	registerVal25.name = "menu_loaded"
	registerVal25.controller = arg0
	registerVal1:processEvent(registerVal25)
	registerVal25 = {}
	registerVal25.name = "update_state"
	registerVal25.menu = registerVal1
	registerVal1:processEvent(registerVal25)
	registerVal23 = registerVal1:restoreState()
	if not registerVal23 then
		registerVal25 = {}
		registerVal25.name = "gain_focus"
		registerVal25.controller = arg0
		registerVal1.CookboookResultListItem:processEvent(registerVal25)
	end
	local function __FUNC_6320_(arg1)
		arg1.GenericMenuFrameCookbook:close()
		arg1.GobbleGumCookbookDistillsBalance:close()
		arg1.GobbleGumCookbookRemainingTime:close()
		arg1.IngredientList:close()
		arg1.CookbookFlipbook0:close()
		arg1.CookbookIndicatorTriangleTopLeft:close()
		arg1.CookbookIndicatorTriangleTopRight:close()
		arg1.CookbookIndicatorTriangleBottomRight:close()
		arg1.CookbookIndicatorTriangleBottomLeft:close()
		arg1.CookboookResultListItem:close()
		arg1.PipeAnimLeft:close()
		arg1.PipeAnimResult:close()
		arg1.CookbookDistillsRequired:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GobbleGumRecipe.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_6320_)
	if __FUNC_1D0F_ then
		__FUNC_1D0F_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GobbleGumRecipe = __FUNC_2643_
