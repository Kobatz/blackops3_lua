-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local function __FUNC_22F_(arg0, arg1)
	arg0:setHandleMouse(true)
	local function __FUNC_2C1_(arg0, arg1)
		local registerVal4 = {}
		registerVal4.name = "mini_selector_left"
		registerVal4.controller = arg1
		arg0:dispatchEventToParent(registerVal4)
	end

	arg0:registerEventHandler("button_action", __FUNC_2C1_)
end

local function __FUNC_35D_(arg0, arg1)
	if CoD.isPC then
		__FUNC_22F_(arg0, arg1)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.CharacterMiniSelectorLeftButton = registerVal3
local function __FUNC_3CB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CharacterMiniSelectorLeftButton)
	registerVal2.id = "CharacterMiniSelectorLeftButton"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 30.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 26.000000)
	local registerVal3 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETitleNumBrdr0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setScale(0.700000)
	registerVal4:setImage(RegisterImage("uie_characterminiselectorarrow"))
	registerVal2:addElement(registerVal4)
	registerVal2.arrowButton = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_863_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FETitleNumBrdr0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.arrowButton:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_863_
	local function __FUNC_9CE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FETitleNumBrdr0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.arrowButton:setRGB(1.000000, 0.450000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Over = __FUNC_9CE_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_B44_(arg0)
		arg0.FETitleNumBrdr0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B44_)
	if __FUNC_35D_ then
		__FUNC_35D_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CharacterMiniSelectorLeftButton.new = __FUNC_3CB_
