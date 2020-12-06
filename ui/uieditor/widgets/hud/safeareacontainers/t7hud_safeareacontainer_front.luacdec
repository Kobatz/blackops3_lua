-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Console.Console")
require("ui.uieditor.widgets.HUD.safeframe_playercard")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.T7Hud_SafeAreaContainer_Front = registerVal1
function CoD.T7Hud_SafeAreaContainer_Front.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.T7Hud_SafeAreaContainer_Front)
	registerVal2.id = "T7Hud_SafeAreaContainer_Front"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Console.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 39.000000, 809.000000)
	registerVal3:setTopBottom(false, true, -326.000000, -186.000000)
	registerVal3:setXRot(15.000000)
	registerVal3:setYRot(40.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Console = registerVal3
	local registerVal4 = CoD.safeframe_playercard.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.900000)
	registerVal2:addElement(registerVal4)
	registerVal2.safeframeplayercard = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_832_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Console:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_832_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_92A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Console:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_92A_
	registerVal5.MPSplitscreen = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "MPSplitscreen"
	local function __FUNC_A27_(arg0, arg2, arg3)
		local registerVal3 = IsMultiplayer()
		if registerVal3 then
			registerVal3 = IsSplitscreenAndInGame(arg1)
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_A27_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNav")
	local function __FUNC_AA7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_AA7_)
	local function __FUNC_BCC_(arg0)
		arg0.Console:close()
		arg0.safeframeplayercard:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BCC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

