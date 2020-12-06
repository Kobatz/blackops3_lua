-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartGameFlow.LoadingScreenHeroListWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoadingScreenTeamPlayerList = registerVal1
function CoD.LoadingScreenTeamPlayerList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadingScreenTeamPlayerList)
	registerVal2.id = "LoadingScreenTeamPlayerList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 4.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(false, false, -490.000000, 490.000000)
	registerVal3:setTopBottom(false, true, -259.000000, -89.000000)
	registerVal3:setScale(1.100000)
	registerVal3:setWidgetType(CoD.LoadingScreenHeroListWidget)
	registerVal3:setHorizontalCount(6.000000)
	registerVal3:setSpacing(4.000000)
	registerVal3:setDataSource("LoadingScreenPlayerListTeam2")
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "FFA"
	local function __FUNC_AE4_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal7.condition = __FUNC_AE4_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.Team2PlayerList = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 4.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(false, false, -490.000000, 490.000000)
	registerVal4:setTopBottom(true, false, 89.000000, 259.000000)
	registerVal4:setScale(1.100000)
	registerVal4:setWidgetType(CoD.LoadingScreenHeroListWidget)
	registerVal4:setHorizontalCount(6.000000)
	registerVal4:setSpacing(4.000000)
	registerVal4:setDataSource("LoadingScreenPlayerListTeam1")
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "FFA"
	local function __FUNC_B31_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_B31_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.Team1PlayerList = registerVal4
	local registerVal5 = {}
	registerVal5.up = registerVal4
	registerVal3.navigation = registerVal5
	registerVal5 = {}
	registerVal5.down = registerVal3
	registerVal4.navigation = registerVal5
	registerVal5 = {}
	registerVal6 = {}
	local function __FUNC_B7D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_B7D_
	local function __FUNC_BDE_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_D22_(arg0, arg1)
			local function __FUNC_E78_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1840.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E78_)
		end

		registerVal3:completeAnimation()
		registerVal2.Team2PlayerList:setAlpha(0.000000)
		__FUNC_D22_(registerVal3, {})
		local function __FUNC_102D_(arg0, arg1)
			local function __FUNC_1184_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1184_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1184_)
		end

		registerVal4:completeAnimation()
		registerVal2.Team1PlayerList:setAlpha(0.000000)
		__FUNC_102D_(registerVal4, {})
	end

	registerVal6.StartLoading = __FUNC_BDE_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_1339_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_1339_
	registerVal5.CodCaster = registerVal6
	registerVal6 = {}
	local function __FUNC_139A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Team2PlayerList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Team1PlayerList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_139A_
	registerVal5.Demo = registerVal6
	registerVal2.clipsPerState = registerVal5
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "CodCaster"
	local function __FUNC_14FC_(arg0, arg2, arg3)
		return IsCodCaster(arg1)
	end

	registerVal8.condition = __FUNC_14FC_
	local registerVal9 = {}
	registerVal9.stateName = "Demo"
	local function __FUNC_154D_(arg0, arg1, arg2)
		return IsDemoPlaying()
	end

	registerVal9.condition = __FUNC_154D_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "factions.isCoDCaster")
	local function __FUNC_159B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_159B_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "Team2PlayerList"
	registerVal4.id = "Team1PlayerList"
	local function __FUNC_16C2_(arg0)
		arg0.Team2PlayerList:close()
		arg0.Team1PlayerList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_16C2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

