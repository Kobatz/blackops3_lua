-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.CodCasterPlayerListHeaderWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterPlayerListHeaderWidgetContainer = registerVal1
function CoD.CodCasterPlayerListHeaderWidgetContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterPlayerListHeaderWidgetContainer)
	registerVal2.id = "CodCasterPlayerListHeaderWidgetContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 325.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CodCasterPlayerListHeaderWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -312.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3.whiteBG:setRGB(0.270000, 0.270000, 0.270000)
	registerVal3.TeamName:setText(Engine.Localize("Team Name"))
	registerVal2:addElement(registerVal3)
	registerVal2.Header = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -329.000000, -315.000000)
	registerVal4:setTopBottom(true, false, 5.000000, 19.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_voiptemp-01"))
	registerVal2:addElement(registerVal4)
	registerVal2.ListenIn = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_890_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Header:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ListenIn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_890_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_9E4_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal3.whiteBG:completeAnimation()
		registerVal3.whiteBGAccent2:completeAnimation()
		registerVal3.whiteBGcolor:completeAnimation()
		registerVal2.Header.whiteBG:setAlpha(0.000000)
		registerVal2.Header.whiteBGAccent2:setAlpha(0.500000)
		registerVal2.Header.whiteBGcolor:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ListenIn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9E4_
	registerVal5.VisibleSelectedTeam = registerVal6
	registerVal6 = {}
	local function __FUNC_C25_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal3.whiteBG:completeAnimation()
		registerVal3.whiteBGAccent2:completeAnimation()
		registerVal3.whiteBGcolor:completeAnimation()
		registerVal2.Header.whiteBG:setAlpha(0.000000)
		registerVal2.Header.whiteBGAccent2:setAlpha(0.500000)
		registerVal2.Header.whiteBGcolor:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ListenIn:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C25_
	registerVal5.VisibleSelectedTeamWithListenIn = registerVal6
	registerVal6 = {}
	local function __FUNC_E6A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal3.whiteBG:completeAnimation()
		registerVal3.whiteBGAccent2:completeAnimation()
		registerVal3.whiteBGcolor:completeAnimation()
		registerVal2.Header:setAlpha(1.000000)
		registerVal2.Header.whiteBG:setAlpha(0.700000)
		registerVal2.Header.whiteBGAccent2:setAlpha(0.000000)
		registerVal2.Header.whiteBGcolor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ListenIn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_E6A_
	registerVal5.Visible = registerVal6
	registerVal6 = {}
	local function __FUNC_10C5_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal3.whiteBG:completeAnimation()
		registerVal3.whiteBGAccent2:completeAnimation()
		registerVal3.whiteBGcolor:completeAnimation()
		registerVal2.Header:setAlpha(1.000000)
		registerVal2.Header.whiteBG:setAlpha(0.700000)
		registerVal2.Header.whiteBGAccent2:setAlpha(0.000000)
		registerVal2.Header.whiteBGcolor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ListenIn:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_10C5_
	registerVal5.VisibleWithListenIn = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_1321_(arg0)
		arg0.Header:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1321_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

