-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartGameFlow.TeamIconAndNameWidgetElemSide")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.StartGameFlow.LoadingScreenHeroListWidget")
require("ui.uieditor.widgets.LoadingAnimation.LoadingScreenHeaderFooter")
local function __FUNC_2E1_(arg0, arg1)
	arg0:setLeftRight(true, false, (640.000000 - (((160.000000 * arg1) + (2.000000 * (arg1 - 1.000000))) / 2.000000)), ((640.000000 - (((160.000000 * arg1) + (2.000000 * (arg1 - 1.000000))) / 2.000000)) + ((160.000000 * arg1) + (2.000000 * (arg1 - 1.000000)))))
end

local function __FUNC_372_(arg0, arg1)
	local function __FUNC_62B_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0.LoadingScreenHeaderFooter.LoadingBar:setShaderVector(0.000000, registerVal1, 0.000000, 0.000000, 0.000000)
		end
	end

	arg0.LoadingScreenHeaderFooter.LoadingBar:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "loadedFraction", __FUNC_62B_)
	local function __FUNC_728_(arg0)
		arg0.LoadingScreenHeaderFooter.LoadingBar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_728_)
	local registerVal2 = DataSources.LoadingScreenPlayerListTeam1.getCount(arg0.Team1PlayerList)
	if 8.000000 < registerVal2 and registerVal2 < 11.000000 then
		arg0.Team1PlayerList:setHorizontalCount(5.000000)
	else
		if 10.000000 < registerVal2 then
			arg0.Team1PlayerList:setHorizontalCount(6.000000)
		else
			arg0.Team1PlayerList:setHorizontalCount(4.000000)
		end
	end
	if registerVal2 < 4.000000 then
	end
	__FUNC_2E1_(arg0.Team1PlayerList, registerVal2)
end

local function __FUNC_7BA_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LoadingScreenOverlayForNonTeamGames")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "none"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LoadingScreenOverlayForNonTeamGames.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage(MapNameToMapLoadingImage(GetCurrentMapID("uie_img_t7_menu_mp_loadscreen_sector"))))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_expensive_blur"))
	registerVal3:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.backgroundImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -669.000000, 651.000000)
	registerVal4:setTopBottom(false, false, -376.000000, 372.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.Fade = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.BLACKfade = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal6:setTopBottom(true, false, 370.000000, 554.000000)
	registerVal6:setAlpha(0.440000)
	registerVal6:setXRot(-180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_mp_menu_startflow_vignette"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal1:addElement(registerVal6)
	registerVal1.Team1Vignette = registerVal6
	local registerVal7 = CoD.TeamIconAndNameWidgetElemSide.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, true, -66.100000, -37.100000)
	registerVal7:setTopBottom(true, false, 674.000000, 700.000000)
	registerVal7:setYRot(-180.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.LoadingElem2 = registerVal7
	local registerVal8 = CoD.TeamIconAndNameWidgetElemSide.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, true, -1241.100000, -1212.100000)
	registerVal8:setTopBottom(true, false, 673.500000, 700.500000)
	registerVal1:addElement(registerVal8)
	registerVal1.LoadingElem1 = registerVal8
	local registerVal9 = CoD.FE_TitleNumBrdr.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 64.000000, 232.000000)
	registerVal9:setTopBottom(false, false, 308.000000, 332.000000)
	registerVal9:setAlpha(0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.LoadingStatusBox = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -11.000000, 11.000000)
	registerVal10:setTopBottom(false, false, 6.000000, 14.000000)
	registerVal10:setAlpha(0.200000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Team1Line = registerVal10
	local registerVal11 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal11:makeFocusable()
	registerVal11:setLeftRight(false, false, -492.500000, 492.500000)
	registerVal11:setTopBottom(true, false, 278.000000, 623.000000)
	registerVal11:setDataSource("LoadingScreenPlayerListTeam1")
	registerVal11:setWidgetType(CoD.LoadingScreenHeroListWidget)
	registerVal11:setHorizontalCount(6.000000)
	registerVal11:setVerticalCount(2.000000)
	registerVal11:setSpacing(5.000000)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "FFA"
	local function __FUNC_180D_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal15.condition = __FUNC_180D_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal1:addElement(registerVal11)
	registerVal1.Team1PlayerList = registerVal11
	local registerVal12 = CoD.LoadingScreenHeaderFooter.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal12:setTopBottom(false, false, -360.000000, 360.000000)
	local function __FUNC_1858_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		local registerVal5 = {}
		registerVal5.elementName = "LoadingScreenHeaderFooter"
		registerVal5.clipName = "StartLoading"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("menu_loaded", __FUNC_1858_)
	registerVal1:addElement(registerVal12)
	registerVal1.LoadingScreenHeaderFooter = registerVal12
	local registerVal13 = {}
	registerVal14 = {}
	local function __FUNC_1984_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal14.DefaultClip = __FUNC_1984_
	local function __FUNC_19E6_()
		registerVal1:setupElementClipCounter(9.000000)
		local function __FUNC_200A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1309.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_expensive_blur"))
			arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 2.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:beginAnimation("keyframe", 790.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_expensive_blur"))
		registerVal3:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal3:setShaderVector(1.000000, 2.000000, 0.000000, 0.000000, 0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_200A_)
		local function __FUNC_2290_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.Fade:setAlpha(1.000000)
		__FUNC_2290_(registerVal4, {})
		local function __FUNC_2445_(arg0, arg1)
			local function __FUNC_259C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1029.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.300000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_259C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1070.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_259C_)
		end

		registerVal5:completeAnimation()
		registerVal1.BLACKfade:setAlpha(0.000000)
		__FUNC_2445_(registerVal5, {})
		local function __FUNC_2751_(arg0, arg1)
			local function __FUNC_28A8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.440000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_28A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1360.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28A8_)
		end

		registerVal6:completeAnimation()
		registerVal1.Team1Vignette:setAlpha(0.000000)
		__FUNC_2751_(registerVal6, {})
		local function __FUNC_2A5D_(arg0, arg1)
			local function __FUNC_2BB4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2BB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2210.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BB4_)
		end

		registerVal7:completeAnimation()
		registerVal1.LoadingElem2:setAlpha(0.000000)
		__FUNC_2A5D_(registerVal7, {})
		local function __FUNC_2D69_(arg0, arg1)
			local function __FUNC_2EC0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 130.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2EC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EC0_)
		end

		registerVal8:completeAnimation()
		registerVal1.LoadingElem1:setAlpha(0.000000)
		__FUNC_2D69_(registerVal8, {})
		local function __FUNC_3075_(arg0, arg1)
			local function __FUNC_31CC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 64.000000, 232.000000)
				arg0:setTopBottom(false, false, 308.000000, 332.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_31CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1919.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31CC_)
		end

		registerVal9:completeAnimation()
		registerVal1.LoadingStatusBox:setLeftRight(true, false, 64.000000, 232.000000)
		registerVal1.LoadingStatusBox:setTopBottom(false, false, 347.000000, 371.000000)
		registerVal1.LoadingStatusBox:setAlpha(0.000000)
		__FUNC_3075_(registerVal9, {})
		local function __FUNC_33F1_(arg0, arg1)
			local function __FUNC_3548_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -11.000000, 11.000000)
				arg0:setTopBottom(false, false, 6.000000, 14.000000)
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3548_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1389.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3548_)
		end

		registerVal10:completeAnimation()
		registerVal1.Team1Line:setLeftRight(true, true, -11.000000, 11.000000)
		registerVal1.Team1Line:setTopBottom(false, false, 6.000000, 14.000000)
		registerVal1.Team1Line:setAlpha(0.000000)
		__FUNC_33F1_(registerVal10, {})
		local function __FUNC_376D_(arg0, arg1)
			local function __FUNC_38C4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_38C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38C4_)
		end

		registerVal11:completeAnimation()
		registerVal1.Team1PlayerList:setAlpha(0.000000)
		__FUNC_376D_(registerVal11, {})
	end

	registerVal14.StartLoading = __FUNC_19E6_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_3A79_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal11:completeAnimation()
		registerVal1.Team1PlayerList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
	end

	registerVal14.DefaultClip = __FUNC_3A79_
	registerVal13.Demo = registerVal14
	registerVal1.clipsPerState = registerVal13
	registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Demo"
	local function __FUNC_3B7F_(arg0, arg1, arg2)
		return IsDemoPlaying()
	end

	registerVal16.condition = __FUNC_3B7F_
	registerVal15 = {registerVal16}
	registerVal1:mergeStateConditions(registerVal15)
	registerVal11.id = "Team1PlayerList"
	registerVal15 = {}
	registerVal15.name = "menu_loaded"
	registerVal15.controller = arg0
	registerVal1:processEvent(registerVal15)
	registerVal15 = {}
	registerVal15.name = "update_state"
	registerVal15.menu = registerVal1
	registerVal1:processEvent(registerVal15)
	registerVal13 = registerVal1:restoreState()
	if not registerVal13 then
		registerVal15 = {}
		registerVal15.name = "gain_focus"
		registerVal15.controller = arg0
		registerVal1.Team1PlayerList:processEvent(registerVal15)
	end
	local function __FUNC_3BCB_(arg1)
		arg1.LoadingElem2:close()
		arg1.LoadingElem1:close()
		arg1.LoadingStatusBox:close()
		arg1.Team1PlayerList:close()
		arg1.LoadingScreenHeaderFooter:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LoadingScreenOverlayForNonTeamGames.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3BCB_)
	if __FUNC_372_ then
		__FUNC_372_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.LoadingScreenOverlayForNonTeamGames = __FUNC_7BA_
