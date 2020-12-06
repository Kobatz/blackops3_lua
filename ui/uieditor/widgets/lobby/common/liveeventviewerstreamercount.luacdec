-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ArabicAlignTextBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LiveEventViewerStreamerCount = registerVal1
function CoD.LiveEventViewerStreamerCount.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LiveEventViewerStreamerCount)
	registerVal2.id = "LiveEventViewerStreamerCount"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 157.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 26.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -157.000000, -132.000000)
	registerVal3:setTopBottom(false, true, -25.500000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_twitch_streamers_white"))
	registerVal2:addElement(registerVal3)
	registerVal2.streamerCountIcon = registerVal3
	local registerVal4 = CoD.ArabicAlignTextBox.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -132.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -23.750000, -1.750000)
	registerVal4.textBox:setTTF("fonts/default.ttf")
	registerVal4.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_940_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "LiveEventViewer", "viewers", __FUNC_940_)
	registerVal2:addElement(registerVal4)
	registerVal2.streamerCount = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A17_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.streamerCountIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.streamerCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A17_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B78_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.streamerCountIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.streamerCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B78_
	registerVal5.NoViewers = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "NoViewers"
	local function __FUNC_CDC_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg1, "liveEventViewer.viewers", 0.000000)
	end

	registerVal8.condition = __FUNC_CDC_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "liveEventViewer.viewers")
	local function __FUNC_D6D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "liveEventViewer.viewers"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_D6D_)
	local function __FUNC_E99_(arg0)
		arg0.streamerCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E99_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

