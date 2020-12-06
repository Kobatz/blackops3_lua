-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.CharacterCustomization.ChooseTaunts_TauntCategoryList")
require("ui.uieditor.widgets.CharacterCustomization.ChooseTaunts_TauntOptions")
require("ui.uieditor.widgets.CharacterCustomization.ChooseTaunts_GestureOptions")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local function __FUNC_3D0_(arg0, arg1)
	arg0.disableBlur = true
	arg0.disableDarkenElement = true
end

local function __FUNC_439_(arg0, arg1)
	local function __FUNC_530_(arg2, arg3, arg4)
		CoD.CCUtility.TauntsData.EdittingTauntOrGestureType = nil
		if arg2 == CoD.CCUtility.TauntsData.Modes.ExploringTaunts then
			CoD.SwapFocusableElements(arg1, nil, arg0.categoryList)
			if arg0.currentMode == CoD.CCUtility.TauntsData.Modes.EdittingTaunt then
				local registerVal5 = {}
				registerVal5.name = "lose_focus"
				registerVal5.controller = arg1
				arg0.categoryList:processEvent(registerVal5)
				registerVal5 = {}
				registerVal5.name = "gain_focus"
				registerVal5.controller = arg1
				arg0.categoryList.tauntList:processEvent(registerVal5)
			else
				if arg0.currentMode == CoD.CCUtility.TauntsData.Modes.EdittingGesture then
					registerVal5 = {}
					registerVal5.name = "lose_focus"
					registerVal5.controller = arg1
					arg0.categoryList:processEvent(registerVal5)
					registerVal5 = {}
					registerVal5.name = "gain_focus"
					registerVal5.controller = arg1
					arg0.categoryList.gestureList:processEvent(registerVal5)
				end
			end
			if arg3 then
				if arg0.currentMode == CoD.CCUtility.TauntsData.Modes.EdittingTaunt then
					arg0.categoryList.tauntList:updateDataSource()
				else
					if arg0.currentMode == CoD.CCUtility.TauntsData.Modes.EdittingGesture then
						arg0.categoryList.gestureList:updateDataSource()
					end
				end
			end
			Unhandled OpCode: HKS_OPCODE_SETUPVAL_R1 (3, 1, 0, 0x4E)
			arg0:setState("DefaultState")
		else
			if arg2 == CoD.CCUtility.TauntsData.Modes.EdittingGesture then
				CoD.CCUtility.TauntsData.EdittingTauntOrGestureType = arg4
				CoD.SwapFocusableElements(arg1, nil, arg0.gestureOptionsList)
				Unhandled OpCode: HKS_OPCODE_SETUPVAL_R1 (3, 1, 0, 0x4E)
				arg0:setState("SelectingGesture")
			else
				if arg2 == CoD.CCUtility.TauntsData.Modes.EdittingTaunt then
					CoD.CCUtility.TauntsData.EdittingTauntOrGestureType = arg4
					CoD.SwapFocusableElements(arg1, nil, arg0.tauntOptionsList)
					Unhandled OpCode: HKS_OPCODE_SETUPVAL_R1 (3, 1, 0, 0x4E)
					arg0:setState("SelectingTaunt")
				end
			end
		end
		arg0.currentMode = arg2
		UpdateAllMenuButtonPrompts(arg0, arg1)
	end

	arg0.updateMode = __FUNC_530_
	arg0.updateMode(CoD.CCUtility.TauntsData.Modes.ExploringTaunts)
end

local function __FUNC_C11_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ChooseTaunts")
	if __FUNC_3D0_ then
		__FUNC_3D0_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ChooseTaunts.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 597.000000)
	registerVal3:setTopBottom(true, false, 78.000000, 667.000000)
	registerVal3:setRGB(0.140000, 0.140000, 0.140000)
	registerVal3:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 64.000000, 496.000000)
	registerVal4:setTopBottom(true, false, 78.000000, 667.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal4)
	registerVal1.LeftPanel0 = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("HEROES_TAUNTS_AND_GESTURES_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("HEROES_TAUNTS_AND_GESTURES_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_character"))
	registerVal1:addElement(registerVal5)
	registerVal1.Frame = registerVal5
	local registerVal6 = CoD.ChooseTaunts_TauntCategoryList.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 75.000000, 585.000000)
	registerVal6:setTopBottom(true, false, 115.000000, 686.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.categoryList = registerVal6
	local registerVal7 = CoD.ChooseTaunts_TauntOptions.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 77.000000, 285.000000)
	registerVal7:setTopBottom(true, false, 115.000000, 686.000000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.tauntOptionsList = registerVal7
	local registerVal8 = CoD.ChooseTaunts_GestureOptions.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 77.000000, 285.000000)
	registerVal8:setTopBottom(true, false, 115.000000, 686.000000)
	registerVal8:setAlpha(0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.gestureOptionsList = registerVal8
	local registerVal9 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal9:setTopBottom(true, false, 84.000000, 701.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.FEMenuLeftGraphics = registerVal9
	local registerVal11 = IsPC()
	if registerVal11 then
		registerVal11 = CoD.XCamMouseControl.new(registerVal1, arg0)
	else
		registerVal11 = LUI.UIElement.createFake()
	end
	registerVal11:setLeftRight(true, false, 507.080000, 1216.000000)
	registerVal11:setTopBottom(true, false, 84.000000, 667.000000)
	registerVal11 = IsPC()
	if registerVal11 then
		registerVal1:addElement(registerVal11)
	end
	registerVal1.XCamMouseControl = registerVal11
	local function __FUNC_1BFA_(arg1)
		registerVal7:setModel(arg1, arg0)
	end

	registerVal7:linkToElementModel(registerVal6.tauntList, nil, false, __FUNC_1BFA_)
	local function __FUNC_1C4A_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:linkToElementModel(registerVal6.gestureList, nil, false, __FUNC_1C4A_)
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12 = {registerVal7, registerVal8}
	registerVal11.left = registerVal12
	registerVal6.navigation = registerVal11
	registerVal11 = {}
	registerVal11.right = registerVal6
	registerVal7.navigation = registerVal11
	registerVal11 = {}
	registerVal11.right = registerVal6
	registerVal8.navigation = registerVal11
	registerVal11 = {}
	registerVal12 = {}
	local function __FUNC_1C9A_()
		registerVal1:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal1.categoryList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.tauntOptionsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.gestureOptionsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
	end

	registerVal12.DefaultClip = __FUNC_1C9A_
	local function __FUNC_1E5F_()
		registerVal1:setupElementClipCounter(3.000000)
		local function __FUNC_20CC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 300.000000)
			arg0:setTopBottom(true, false, 78.000000, 667.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.LeftPanel0:setLeftRight(true, false, 64.000000, 496.000000)
		registerVal1.LeftPanel0:setTopBottom(true, false, 78.000000, 667.000000)
		__FUNC_20CC_(registerVal4, {})
		local function __FUNC_22CE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.categoryList:setAlpha(1.000000)
		__FUNC_22CE_(registerVal6, {})
		local function __FUNC_2481_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 77.000000, 285.000000)
			arg0:setTopBottom(true, false, 115.000000, 679.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.tauntOptionsList:setLeftRight(true, false, -348.000000, 0.000000)
		registerVal1.tauntOptionsList:setTopBottom(true, false, 115.000000, 679.000000)
		registerVal1.tauntOptionsList:setAlpha(0.000000)
		__FUNC_2481_(registerVal7, {})
	end

	registerVal12.SelectingTaunt = __FUNC_1E5F_
	local function __FUNC_26A5_()
		registerVal1:setupElementClipCounter(3.000000)
		local function __FUNC_2916_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 300.000000)
			arg0:setTopBottom(true, false, 78.000000, 667.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.LeftPanel0:setLeftRight(true, false, 64.000000, 496.000000)
		registerVal1.LeftPanel0:setTopBottom(true, false, 78.000000, 667.000000)
		__FUNC_2916_(registerVal4, {})
		local function __FUNC_2B16_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.categoryList:setAlpha(1.000000)
		__FUNC_2B16_(registerVal6, {})
		local function __FUNC_2CC9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 77.000000, 285.000000)
			arg0:setTopBottom(true, false, 115.000000, 679.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.gestureOptionsList:setLeftRight(true, false, -348.000000, 0.000000)
		registerVal1.gestureOptionsList:setTopBottom(true, false, 115.000000, 679.000000)
		registerVal1.gestureOptionsList:setAlpha(0.000000)
		__FUNC_2CC9_(registerVal8, {})
	end

	registerVal12.SelectingGesture = __FUNC_26A5_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_2EED_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal1.LeftPanel0:setLeftRight(true, false, 64.000000, 300.000000)
		registerVal1.LeftPanel0:setTopBottom(true, false, 78.000000, 667.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal1.categoryList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.tauntOptionsList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.gestureOptionsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
	end

	registerVal12.DefaultClip = __FUNC_2EED_
	local function __FUNC_317F_()
		registerVal1:setupElementClipCounter(3.000000)
		local function __FUNC_33F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 496.000000)
			arg0:setTopBottom(true, false, 78.000000, 667.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.LeftPanel0:setLeftRight(true, false, 64.000000, 300.000000)
		registerVal1.LeftPanel0:setTopBottom(true, false, 78.000000, 667.000000)
		__FUNC_33F1_(registerVal4, {})
		local function __FUNC_35F2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.categoryList:setAlpha(0.000000)
		__FUNC_35F2_(registerVal6, {})
		local function __FUNC_37A5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -347.500000, 0.500000)
			arg0:setTopBottom(true, false, 115.000000, 686.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.tauntOptionsList:setLeftRight(true, false, 77.000000, 423.000000)
		registerVal1.tauntOptionsList:setTopBottom(true, false, 115.000000, 686.000000)
		registerVal1.tauntOptionsList:setAlpha(1.000000)
		__FUNC_37A5_(registerVal7, {})
	end

	registerVal12.DefaultState = __FUNC_317F_
	registerVal11.SelectingTaunt = registerVal12
	registerVal12 = {}
	local function __FUNC_39C9_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal1.LeftPanel0:setLeftRight(true, false, 64.000000, 300.000000)
		registerVal1.LeftPanel0:setTopBottom(true, false, 78.000000, 667.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal1.categoryList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.tauntOptionsList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.gestureOptionsList:setLeftRight(true, false, 77.000000, 285.000000)
		registerVal1.gestureOptionsList:setTopBottom(true, false, 115.000000, 686.000000)
		registerVal1.gestureOptionsList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
	end

	registerVal12.DefaultClip = __FUNC_39C9_
	local function __FUNC_3CBF_()
		registerVal1:setupElementClipCounter(3.000000)
		local function __FUNC_3F33_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 64.000000, 496.000000)
			arg0:setTopBottom(true, false, 78.000000, 667.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.LeftPanel0:setLeftRight(true, false, 64.000000, 300.000000)
		registerVal1.LeftPanel0:setTopBottom(true, false, 78.000000, 667.000000)
		__FUNC_3F33_(registerVal4, {})
		local function __FUNC_4132_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.categoryList:setAlpha(0.000000)
		__FUNC_4132_(registerVal6, {})
		local function __FUNC_42E5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -348.000000, 0.000000)
			arg0:setTopBottom(true, false, 115.000000, 686.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.gestureOptionsList:setLeftRight(true, false, 77.000000, 285.000000)
		registerVal1.gestureOptionsList:setTopBottom(true, false, 115.000000, 686.000000)
		registerVal1.gestureOptionsList:setAlpha(1.000000)
		__FUNC_42E5_(registerVal8, {})
	end

	registerVal12.DefaultState = __FUNC_3CBF_
	registerVal11.SelectingGesture = registerVal12
	registerVal1.clipsPerState = registerVal11
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_4504_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		ShowHeaderKickerAndIcon(registerVal1)
		DisableNavigation(registerVal1, "categoryList")
		DisableNavigation(registerVal1, "gestureOptionsList")
		DisableNavigation(registerVal1, "tauntOptionsList")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_4504_)
	local function __FUNC_4673_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsExploringTaunts(arg1)
		if registerVal4 then
			SaveLoadout(registerVal1, arg2)
			SendClientScriptMenuChangeNotify(arg2, arg1, false)
			GoBack(registerVal1, arg2)
			ClearSavedState(registerVal1, arg2)
			return true
		else
			registerVal4 = IsEdittingGestureOption(arg1)
			if registerVal4 then
				CancelChoosingGestureOption(arg1)
				PlaySoundSetSound(registerVal1, "menu_go_back")
				return true
			else
				registerVal4 = IsEdittingTaunt(arg1)
				if registerVal4 then
					CancelChoosingTauntOption(arg1)
					PlaySoundSetSound(registerVal1, "menu_go_back")
					return true
				end
			end
		end
	end

	local function __FUNC_48AA_(arg0, arg1, arg2)
		local registerVal3 = IsExploringTaunts(arg1)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
			return true
		else
			registerVal3 = IsEdittingGestureOption(arg1)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
				return true
			else
				registerVal3 = IsEdittingTaunt(arg1)
				if registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
					return true
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_4673_, __FUNC_48AA_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "categoryList"
	registerVal7.id = "tauntOptionsList"
	registerVal8.id = "gestureOptionsList"
	local registerVal13 = {}
	registerVal13.name = "menu_loaded"
	registerVal13.controller = arg0
	registerVal1:processEvent(registerVal13)
	registerVal13 = {}
	registerVal13.name = "update_state"
	registerVal13.menu = registerVal1
	registerVal1:processEvent(registerVal13)
	registerVal11 = registerVal1:restoreState()
	if not registerVal11 then
		registerVal13 = {}
		registerVal13.name = "gain_focus"
		registerVal13.controller = arg0
		registerVal1.categoryList:processEvent(registerVal13)
	end
	local function __FUNC_4ADE_(arg1)
		arg1.LeftPanel:close()
		arg1.LeftPanel0:close()
		arg1.Frame:close()
		arg1.categoryList:close()
		arg1.tauntOptionsList:close()
		arg1.gestureOptionsList:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.XCamMouseControl:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ChooseTaunts.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4ADE_)
	if __FUNC_439_ then
		__FUNC_439_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ChooseTaunts = __FUNC_C11_
