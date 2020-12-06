-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.EndGameFlow.Top3PlayerScoreBlurBox")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.scoreboardPingBackground = registerVal1
function CoD.scoreboardPingBackground.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.scoreboardPingBackground)
	registerVal2.id = "scoreboardPingBackground"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = CoD.Top3PlayerScoreBlurBox.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Top3PlayerScoreBlurBox00 = registerVal3
	local registerVal4 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.450000)
	registerVal2:addElement(registerVal4)
	registerVal2.VSpanel0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -29.500000, -7.670000)
	registerVal5:setTopBottom(false, false, -10.920000, 10.920000)
	local function __FUNC_A5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(GetScoreboardPlayerPingBarImage(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "ping", true, __FUNC_A5A_)
	registerVal2:addElement(registerVal5)
	registerVal2.PingBars = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_B3D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_B3D_
	local function __FUNC_C47_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.Focus = __FUNC_C47_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_CA6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_CA6_
	registerVal6.GenesisEndGame = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "GenesisEndGame"
	local function __FUNC_DB4_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		registerVal3 = IsMapName("zm_genesis")
		if registerVal3 and registerVal3 then
			registerVal3 = IsGenesisEECompleted(arg1)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_DB4_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_EF0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_EF0_)
	local function __FUNC_1079_(arg0)
		arg0.Top3PlayerScoreBlurBox00:close()
		arg0.VSpanel0:close()
		arg0.PingBars:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1079_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

