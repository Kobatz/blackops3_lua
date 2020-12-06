-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Chat.ChatClientSettingsMenu")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChatClientSettingContainer = registerVal1
function CoD.ChatClientSettingContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChatClientSettingContainer)
	registerVal2.id = "ChatClientSettingContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 110.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 123.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ChatClientSettingsMenu.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 110.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 123.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ChatClientSettingsMenu = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5C3_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ChatClientSettingsMenu:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_5C3_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6C9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ChatClientSettingsMenu:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6C9_
	registerVal4.Hide = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_7D6_(arg0)
		arg0.ChatClientSettingsMenu:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7D6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

