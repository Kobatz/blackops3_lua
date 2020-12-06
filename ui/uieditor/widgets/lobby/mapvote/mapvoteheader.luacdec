-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_MemberBlurPanelContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_ListSubHeaderGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MapVoteHeader = registerVal1
function CoD.MapVoteHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MapVoteHeader)
	registerVal2.id = "MapVoteHeader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 355.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 23.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_MemberBlurPanelContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal3.FEMemberBlurPanel0:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEMemberBlurPanelContainer0 = registerVal3
	local registerVal4 = CoD.FE_ListSubHeaderGlow.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FEListSubHeaderGlow00 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8AC_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEListSubHeaderGlow00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8AC_
	local function __FUNC_A22_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_B78_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		__FUNC_B78_(registerVal3, {})
		local function __FUNC_D2D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.FEListSubHeaderGlow00:setAlpha(1.000000)
		__FUNC_D2D_(registerVal4, {})
	end

	registerVal6.Invisible = __FUNC_A22_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_EE1_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEListSubHeaderGlow00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_EE1_
	local function __FUNC_1056_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_11AC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		__FUNC_11AC_(registerVal3, {})
		local function __FUNC_1361_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.FEListSubHeaderGlow00:setAlpha(0.000000)
		__FUNC_1361_(registerVal4, {})
	end

	registerVal6.DefaultState = __FUNC_1056_
	registerVal5.Invisible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Invisible"
	local function __FUNC_1515_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueNonEmptyString(arg2, arg1, "lobbyRoot.lobbyStatus")
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_1515_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyStatus")
	local function __FUNC_15A5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyStatus"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_15A5_)
	local function __FUNC_16CF_(arg0)
		arg0.FEMemberBlurPanelContainer0:close()
		arg0.FEListSubHeaderGlow00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_16CF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

