-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.EndGameFlow.Top3PlayerScoreBlurBox")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.HelperWidgets.TextWithBg")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreboardPingHeader = registerVal1
function CoD.ScoreboardPingHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreboardPingHeader)
	registerVal2.id = "ScoreboardPingHeader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 38.000000)
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
	local registerVal5 = CoD.TextWithBg.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -61.500000, 25.500000)
	registerVal5:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setScale(LanguageOverrideNumber("fulljapanese", 0.700000, LanguageOverrideNumber("japanese", 0.700000, 1.000000)))
	registerVal5.Bg:setRGB(0.310000, 0.310000, 0.310000)
	registerVal5.Bg:setAlpha(0.000000)
	registerVal5.Text:setRGB(0.880000, 0.890000, 0.930000)
	registerVal5.Text:setAlpha(0.700000)
	registerVal5.Text:setText(Engine.Localize("CGAME_SB_PING"))
	registerVal5.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal5)
	registerVal2.ScoreColumn5Header = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_C83_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_C83_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_D8B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_D8B_
	registerVal6.GenesisEndGame = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "GenesisEndGame"
	local function __FUNC_E98_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		registerVal3 = IsMapName("zm_genesis")
		if registerVal3 and registerVal3 then
			registerVal3 = IsGenesisEECompleted(arg1)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_E98_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_FD4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_FD4_)
	local function __FUNC_115D_(arg0)
		arg0.Top3PlayerScoreBlurBox00:close()
		arg0.VSpanel0:close()
		arg0.ScoreColumn5Header:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_115D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

