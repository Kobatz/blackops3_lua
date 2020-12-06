-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ArabicAlignTextBox")
require("ui.uieditor.widgets.FaceButtonThatHidesWithLabel")
local function __FUNC_261_(arg0, arg1)
	DataSources.MtxCommsMOTD.getModel(arg1)
end

local function __FUNC_2ED_(arg0, arg1, arg2)
	local function __FUNC_368_(arg0, arg2)
		if arg2 == "Twitch" and not arg0.twitchModelSubscription then
			local registerVal2 = DataSources.LiveEventViewer.getModel(arg1)
			local registerVal3 = Engine.GetModel(registerVal2, "stream")
			local function __FUNC_590_(arg0)
				local registerVal1 = Engine.GetModelValue(arg0)
				if registerVal1 then
					TwitchStream0:setupTwitchStreamPlayback(registerVal1)
				end
			end

			local registerVal4 = arg0:subscribeToModel(registerVal3, __FUNC_590_)
			arg0.twitchModelSubscription = registerVal4
			if registerVal2 and registerVal3 and arg2 == "DefaultState" and arg0.twitchModelSubscription then
				arg0:removeSubscription(arg0.twitchModelSubscription)
				arg0.twitchModelSubscription = nil
				TwitchStream0:setupTwitchStreamPlayback("")
			end
		end
	end

	arg0.updateTwitchFeed = __FUNC_368_
	arg0:updateTwitchFeed(arg0.currentState)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.MOTD_MainImgContainer = registerVal3
local function __FUNC_64D_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_261_ then
		__FUNC_261_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MOTD_MainImgContainer)
	registerVal2.id = "MOTD_MainImgContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 442.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 491.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_motd_main_img"))
	registerVal2:addElement(registerVal3)
	registerVal2.PopupImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -221.000000, 221.000000)
	registerVal4:setTopBottom(false, false, -132.500000, 123.500000)
	registerVal4:setupTwitchStreamPlayback("")
	registerVal2:addElement(registerVal4)
	registerVal2.TwitchStream0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -55.000000, -35.000000)
	registerVal5:setTopBottom(true, false, 120.500000, 140.500000)
	registerVal5:setRGB(1.000000, 0.000000, 0.000000)
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_elliptical_ring"))
	registerVal5:setShaderVector(0.000000, 8.000000, 2.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 20.000000, 20.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.200000, 0.200000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.liveCircle = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(false, true, -32.000000, -6.000000)
	registerVal6:setTopBottom(true, false, 118.000000, 143.000000)
	registerVal6:setText(Engine.Localize("MENU_LIVE_CAPS"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.liveLabel = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 329.000000, 369.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.600000)
	registerVal2:addElement(registerVal7)
	registerVal2.twitchBacking = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -36.000000, -11.000000)
	registerVal8:setTopBottom(true, false, 337.000000, 362.000000)
	registerVal8:setImage(RegisterImage("uie_twitch_icon_white"))
	registerVal2:addElement(registerVal8)
	registerVal2.twitchIcon = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -190.000000, -165.000000)
	registerVal9:setTopBottom(true, false, 336.500000, 362.000000)
	registerVal9:setImage(RegisterImage("uie_twitch_streamers_white"))
	registerVal2:addElement(registerVal9)
	registerVal2.streamerCountIcon = registerVal9
	local registerVal10 = CoD.ArabicAlignTextBox.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -165.000000, -33.000000)
	registerVal10:setTopBottom(true, false, 338.250000, 360.250000)
	registerVal10.textBox:setTTF("fonts/default.ttf")
	registerVal10.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_171E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "LiveEventViewer", "viewers", __FUNC_171E_)
	registerVal2:addElement(registerVal10)
	registerVal2.streamerCount = registerVal10
	local registerVal11 = CoD.FaceButtonThatHidesWithLabel.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 6.000000, 232.760000)
	registerVal11:setTopBottom(true, false, 339.250000, 359.250000)
	registerVal11.ButtonLabel:setText(Engine.Localize("MENU_WATCH_NOW"))
	local function __FUNC_17F3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.ButtonImage.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_17F3_)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "HideButtonAndText"
	local function __FUNC_18EA_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_18EA_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	if registerVal11.m_eventHandlers.input_source_changed then
		local function __FUNC_1935_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal11.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal11:registerEventHandler("input_source_changed", __FUNC_1935_)
	else
		registerVal11:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "LastInput")
	local function __FUNC_19BF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_19BF_)
	registerVal2:addElement(registerVal11)
	registerVal2.Action = registerVal11
	local registerVal12 = LUI.UIElement.new()
	registerVal12:setLeftRight(true, false, 0.000000, 442.000000)
	registerVal12:setTopBottom(true, false, 0.000000, 492.150000)
	local function __FUNC_1ADB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setupImageViewer(GetImageViewerParams("UI_SCREENSHOT_TYPE_THUMBNAIL", registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "MtxCommsMOTD", "imageFileID", __FUNC_1ADB_)
	registerVal2:addElement(registerVal12)
	registerVal2.ImageViewer0 = registerVal12
	local registerVal13 = {}
	registerVal14 = {}
	local function __FUNC_1BC5_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.PopupImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TwitchStream0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.liveCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.liveLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.twitchBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.twitchIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.streamerCountIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.streamerCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Action:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal14.DefaultClip = __FUNC_1BC5_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_1F96_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.PopupImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TwitchStream0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.liveCircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.liveLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.twitchBacking:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.twitchIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.streamerCountIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.streamerCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Action:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal14.DefaultClip = __FUNC_1F96_
	registerVal13.Twitch = registerVal14
	registerVal2.clipsPerState = registerVal13
	registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Twitch"
	local function __FUNC_236B_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg1, "mtxCommsMOTD.type", "liveevent")
	end

	registerVal16.condition = __FUNC_236B_
	registerVal15 = {registerVal16}
	registerVal2:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "mtxCommsMOTD.type")
	local function __FUNC_2401_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "mtxCommsMOTD.type"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_2401_)
	local function __FUNC_2527_(arg0, arg1)
		CallCustomElementFunction_Self(registerVal2, "updateTwitchFeed", arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_2527_)
	local function __FUNC_25A6_(arg0)
		arg0.streamerCount:close()
		arg0.Action:close()
		arg0.ImageViewer0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_25A6_)
	if __FUNC_2ED_ then
		__FUNC_2ED_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MOTD_MainImgContainer.new = __FUNC_64D_
