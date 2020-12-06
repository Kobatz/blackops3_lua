-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_BribeLabel_Backing")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_BribeLabel_Specialist = registerVal1
function CoD.BM_BribeLabel_Specialist.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.BM_BribeLabel_Specialist)
	registerVal2.id = "BM_BribeLabel_Specialist"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 56.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BM_BribeLabel_Backing.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BMBribeLabelBacking = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 80.000000, -37.500000)
	registerVal4:setTopBottom(false, false, -3.500000, 10.500000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setText(Engine.Localize("CONTRACT_BM_BRIBE_ACTIVE"))
	registerVal4:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal4:setLetterSpacing(-0.200000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_8FC_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_8FC_)
	local function __FUNC_9A1_(arg0, arg1)
		ScaleWidgetToLabelRightAligned(registerVal2, arg0, 50.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_9A1_)
	registerVal2:addElement(registerVal4)
	registerVal2.Text = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A0D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.BMBribeLabelBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A0D_
	local function __FUNC_B69_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_CA7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BMBribeLabelBacking:setAlpha(0.000000)
		__FUNC_CA7_(registerVal3, {})
		local function __FUNC_E59_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Text:setAlpha(0.000000)
		__FUNC_E59_(registerVal4, {})
	end

	registerVal6.Visible = __FUNC_B69_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_100D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.BMBribeLabelBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_100D_
	local function __FUNC_1169_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_12A7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BMBribeLabelBacking:setAlpha(1.000000)
		__FUNC_12A7_(registerVal3, {})
		local function __FUNC_1459_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		__FUNC_1459_(registerVal4, {})
	end

	registerVal6.DefaultState = __FUNC_1169_
	registerVal5.Visible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_160D_(arg0)
		arg0.BMBribeLabelBacking:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_160D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

