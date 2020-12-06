-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbySlideGamerCardInternalWidget = registerVal1
function CoD.LobbySlideGamerCardInternalWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbySlideGamerCardInternalWidget)
	registerVal2.id = "LobbySlideGamerCardInternalWidget"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 340.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -4.000000, 0.000000)
	registerVal3:setTopBottom(false, false, 0.000000, 0.000000)
	registerVal3.CardIconFrame:setScale(0.670000)
	local function __FUNC_6CE_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_6CE_)
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardsFrameWidget = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_71E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_71E_
	local function __FUNC_826_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.SlideLeft = __FUNC_826_
	local function __FUNC_886_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.SlideRight = __FUNC_886_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_8E6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.CallingCardsFrameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8E6_
	registerVal4.Invisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_9F3_(arg0)
		arg0.CallingCardsFrameWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9F3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

