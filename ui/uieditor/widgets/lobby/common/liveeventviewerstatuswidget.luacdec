-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LiveEventViewerStatusWidget = registerVal1
function CoD.LiveEventViewerStatusWidget.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 5.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Right)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LiveEventViewerStatusWidget)
	registerVal2.id = "LiveEventViewerStatusWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 51.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 25.000000, 51.000000)
	registerVal3:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal3:setText(Engine.Localize("MENU_LIVE_CAPS"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.liveLabel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 20.000000)
	registerVal4:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal4:setRGB(1.000000, 0.000000, 0.000000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_elliptical_ring"))
	registerVal4:setShaderVector(0.000000, 8.000000, 2.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 20.000000, 20.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.200000, 0.200000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.liveCircle = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_9F2_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.liveLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.liveCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9F2_
	local function __FUNC_B49_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.ShowPrompts = __FUNC_B49_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_BAA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.liveLabel:setAlpha(1.000000)
		registerVal2.liveLabel:setText(Engine.Localize("MENU_LIVE_CAPS"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.liveCircle:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.liveCircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_BAA_
	registerVal5.Live = registerVal6
	registerVal6 = {}
	local function __FUNC_DB5_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.liveLabel:setAlpha(1.000000)
		registerVal2.liveLabel:setText(Engine.Localize("MENU_REPLAY_CAPS"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.liveCircle:setRGB(0.020000, 1.000000, 0.000000)
		registerVal2.liveCircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_DB5_
	registerVal5.Replay = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Live"
	local function __FUNC_FC8_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualToEnum(arg2, arg1, "liveEventViewer.liveState", Enum.HlsChannelState_e.HLS_CHANNEL_STATE_LIVE)
	end

	registerVal8.condition = __FUNC_FC8_
	local registerVal9 = {}
	registerVal9.stateName = "Replay"
	local function __FUNC_10BB_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualToEnum(arg2, arg1, "liveEventViewer.liveState", Enum.HlsChannelState_e.HLS_CHANNEL_STATE_REPLAY)
	end

	registerVal9.condition = __FUNC_10BB_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "liveEventViewer.liveState")
	local function __FUNC_11AD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "liveEventViewer.liveState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_11AD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

