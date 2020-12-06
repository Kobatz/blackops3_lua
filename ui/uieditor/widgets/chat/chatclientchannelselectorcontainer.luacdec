-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Chat.ChatClientChannelSelectorMenu")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChatClientChannelSelectorContainer = registerVal1
function CoD.ChatClientChannelSelectorContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChatClientChannelSelectorContainer)
	registerVal2.id = "ChatClientChannelSelectorContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 110.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 76.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ChatClientChannelSelectorMenu.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 110.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 76.000000)
	local function __FUNC_641_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "ChatClientGlobal", nil, __FUNC_641_)
	registerVal2:addElement(registerVal3)
	registerVal2.ChatClientChannelSelectorMenu = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_692_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ChatClientChannelSelectorMenu:setLeftRight(true, false, 0.000000, 110.000000)
		registerVal2.ChatClientChannelSelectorMenu:setTopBottom(true, false, 1.000000, 76.000000)
		registerVal2.ChatClientChannelSelectorMenu:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_692_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_82B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ChatClientChannelSelectorMenu:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_82B_
	registerVal4.Hide = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_93D_(arg0)
		arg0.ChatClientChannelSelectorMenu:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_93D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

