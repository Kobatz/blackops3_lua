-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.CAC_varientTitlePanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_DailyBundle_Countdown = registerVal1
function CoD.BM_DailyBundle_Countdown.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_DailyBundle_Countdown)
	registerVal2.id = "BM_DailyBundle_Countdown"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 469.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = CoD.CAC_varientTitlePanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.350000)
	registerVal2:addElement(registerVal3)
	registerVal2.countdownBacking = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal4:setRGB(0.740000, 0.740000, 0.740000)
	registerVal4:setText(Engine.Localize("WEAPON_1234"))
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.countdown = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_7F9_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.countdownBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.countdown:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_7F9_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_957_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.countdownBacking:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.countdown:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_957_
	registerVal5.Visible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_AB8_(arg0)
		arg0.countdownBacking:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AB8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

