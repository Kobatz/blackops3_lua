-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.onOffImage")
require("ui.uieditor.widgets.Lobby.Common.LiveEventViewerStatusWidget")
local function __FUNC_25F_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
	arg0:setForceMouseEventDispatch(true)
	local function __FUNC_333_(arg0, arg3)
		local registerVal2 = FeaturedCards_IsEnabled(arg0, arg1)
		if registerVal2 then
			FeaturedCardsActionButtonHandler(arg2, arg0, arg1, "", arg2)
		end
		return true
	end

	if __FUNC_333_ then
		arg0:registerEventHandler("leftmouseup", __FUNC_333_)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FE_LiveEventFeatureCard = registerVal2
local function __FUNC_3ED_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_LiveEventFeatureCard)
	registerVal2.id = "FE_LiveEventFeatureCard"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 306.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 87.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_D77_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(GetLiveEventViewerImage(registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "LiveEventViewer", "stream", __FUNC_D77_)
	registerVal2:addElement(registerVal3)
	registerVal2.backing = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 66.500000, 87.400000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal4:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal4)
	registerVal2.TitleBg = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 5.880000, 205.880000)
	registerVal5:setTopBottom(true, false, 66.500000, 86.500000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setLetterSpacing(0.500000)
	local function __FUNC_E51_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "LiveEventViewer", "title", __FUNC_E51_)
	registerVal2:addElement(registerVal5)
	registerVal2.Title = registerVal5
	local registerVal6 = CoD.onOffImage.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 281.000000, 301.000000)
	registerVal6:setTopBottom(true, false, 5.000000, 25.000000)
	registerVal6.image:setImage(RegisterImage("uie_twitch_icon_white"))
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "On"
	local function __FUNC_F0A_(arg0, arg2, arg3)
		local registerVal3 = IsMLGStream(arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_F0A_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "liveEventViewer.stream")
	local function __FUNC_F5D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "liveEventViewer.stream"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_F5D_)
	registerVal2:addElement(registerVal6)
	registerVal2.twitchIcon = registerVal6
	local registerVal7 = CoD.LiveEventViewerStatusWidget.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -56.000000, -5.000000)
	registerVal7:setTopBottom(true, false, 5.000000, 30.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.LiveEventViewerStatusWidget0 = registerVal7
	local registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_1088_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.backing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal9.DefaultClip = __FUNC_1088_
	local function __FUNC_1182_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.backing:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal9.Active = __FUNC_1182_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_127A_(arg0)
		arg0.twitchIcon:close()
		arg0.LiveEventViewerStatusWidget0:close()
		arg0.backing:close()
		arg0.Title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_127A_)
	if __FUNC_25F_ then
		__FUNC_25F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FE_LiveEventFeatureCard.new = __FUNC_3ED_
