-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_LabelSubHeadingE")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Leaderboard_PlayerProfileInfoWidget = registerVal1
function CoD.Leaderboard_PlayerProfileInfoWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Leaderboard_PlayerProfileInfoWidget)
	registerVal2.id = "Leaderboard_PlayerProfileInfoWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 282.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 128.000000, 192.000000)
	registerVal3:setTopBottom(true, false, 66.000000, 130.000000)
	registerVal3:setupSpinner()
	registerVal2:addElement(registerVal3)
	registerVal2.EmblemSpinner = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 128.000000, 192.000000)
	registerVal4:setTopBottom(true, false, 209.500000, 273.500000)
	registerVal4:setupSpinner()
	registerVal2:addElement(registerVal4)
	registerVal2.GamerCardSpinner = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 196.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.emblem = registerVal5
	local registerVal6 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal6:setTopBottom(true, false, 201.000000, 282.000000)
	registerVal6.CardIconFrame:setScale(0.670000)
	registerVal2:addElement(registerVal6)
	registerVal2.GamerCard = registerVal6
	local registerVal7 = CoD.FE_LabelSubHeadingE.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 6.500000, 311.500000)
	registerVal7:setTopBottom(true, false, 205.500000, 228.500000)
	registerVal7.Label0:setText("")
	registerVal7.Label0:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.GamerTag = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_9E8_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.EmblemSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GamerCardSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.emblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GamerCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.GamerTag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_9E8_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_C4C_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.EmblemSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GamerCardSpinner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.emblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GamerCard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.GamerTag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_C4C_
	registerVal8.Visible = registerVal9
	registerVal9 = {}
	local function __FUNC_EB5_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.EmblemSpinner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GamerCardSpinner:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.emblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GamerCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.GamerTag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_EB5_
	registerVal8.PCacheBuffer = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_111D_(arg0)
		arg0.GamerCard:close()
		arg0.GamerTag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_111D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

