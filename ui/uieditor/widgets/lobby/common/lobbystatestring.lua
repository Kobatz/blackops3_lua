-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_MemberBlurPanelContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyStateString = registerVal1
function CoD.LobbyStateString.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyStateString)
	registerVal2.id = "LobbyStateString"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_MemberBlurPanelContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 0.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal3:setAlpha(0.000000)
	registerVal3.FEMemberBlurPanel0:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEMemberBlurPanelContainer0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("MENU_NEW"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_927_(arg0, arg1)
		ScaleWidgetToLabelWrapped(registerVal2, arg0, 2.000000, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_927_)
	registerVal2:addElement(registerVal4)
	registerVal2.TextState = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_995_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TextState:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_995_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_AFE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TextState:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_AFE_
	registerVal5.Visible = registerVal6
	registerVal6 = {}
	local function __FUNC_C6B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TextState:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C6B_
	registerVal5.VisibleWithBackground = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_DD2_(arg0)
		arg0.FEMemberBlurPanelContainer0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DD2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

