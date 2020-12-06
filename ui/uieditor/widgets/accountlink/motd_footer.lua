-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingMask")
require("ui.uieditor.widgets.MOTD.MOTD_FooterImageContainer")
require("ui.uieditor.widgets.MOTD.MOTD_TextAndBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FeaturedFrame")
require("ui.uieditor.widgets.PC.Utility.GenericClickButton")
local function __FUNC_33C_(arg0, arg1, arg2)
	arg0.actionButton:setButton(Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
end

local function __FUNC_400_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_33C_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.MOTD_Footer = registerVal3
local function __FUNC_473_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MOTD_Footer)
	registerVal2.id = "MOTD_Footer"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 913.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.LobbyMemberBackingMask.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.590000)
	registerVal2:addElement(registerVal3)
	registerVal2.LobbyMemberBackingMask1 = registerVal3
	local registerVal4 = CoD.MOTD_FooterImageContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.MOTDFooterImageContainer = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 53.000000, 157.000000)
	registerVal5:setTopBottom(false, false, 21.370000, 37.370000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_136E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "MtxCommsRegistration", "action_title", __FUNC_136E_)
	registerVal2:addElement(registerVal5)
	registerVal2.label = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 26.000000, 50.000000)
	registerVal6:setTopBottom(false, true, -33.630000, -9.630000)
	local function __FUNC_1426_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_1426_)
	registerVal2:addElement(registerVal6)
	registerVal2.ActionImage = registerVal6
	local registerVal7 = CoD.MOTD_TextAndBG.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 25.000000, 440.500000)
	registerVal7:setTopBottom(true, false, 11.370000, 36.370000)
	local function __FUNC_14D8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.weaponDescTextBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "MtxCommsRegistration", "content_short", __FUNC_14D8_)
	registerVal2:addElement(registerVal7)
	registerVal2.Text = registerVal7
	local registerVal8 = CoD.FE_FeaturedFrame.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setAlpha(0.500000)
	registerVal2:addElement(registerVal8)
	registerVal2.FEFeaturedFrame00 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -34.000000, -6.000000)
	registerVal9:setTopBottom(false, false, 47.000000, 50.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.pixelLL1 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -34.000000, -6.000000)
	registerVal10:setTopBottom(false, false, -51.000000, -48.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.pixelLL10 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 916.000000, 944.000000)
	registerVal11:setTopBottom(false, false, -51.000000, -48.000000)
	registerVal11:setZRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.pixelLL00 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 916.000000, 944.000000)
	registerVal12:setTopBottom(false, false, 48.000000, 51.000000)
	registerVal12:setZRot(180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.pixelLL000 = registerVal12
	local registerVal13 = CoD.GenericClickButton.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 26.000000, 161.000000)
	registerVal13:setTopBottom(true, false, 62.870000, 93.870000)
	registerVal13:setAlpha(0.000000)
	local function __FUNC_15B9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.label:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "MtxCommsRegistration", "action_title", __FUNC_15B9_)
	registerVal2:addElement(registerVal13)
	registerVal2.actionButton = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_168D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ActionImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal13:completeAnimation()
		registerVal2.actionButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_168D_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_1841_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ActionImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal13:completeAnimation()
		registerVal2.actionButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1841_
	registerVal14.KBMouse = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "KBMouse"
	local function __FUNC_19F5_(arg0, arg2, arg3)
		local registerVal3 = IsPC()
		if registerVal3 then
			registerVal3 = IsMouse(arg1)
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_19F5_
	registerVal16 = {registerVal17}
	registerVal2:mergeStateConditions(registerVal16)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_1A5F_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_1A5F_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, "LastInput")
	local function __FUNC_1AE7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_1AE7_)
	local function __FUNC_1C03_(arg0)
		arg0.LobbyMemberBackingMask1:close()
		arg0.MOTDFooterImageContainer:close()
		arg0.Text:close()
		arg0.FEFeaturedFrame00:close()
		arg0.actionButton:close()
		arg0.label:close()
		arg0.ActionImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C03_)
	if __FUNC_400_ then
		__FUNC_400_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MOTD_Footer.new = __FUNC_473_
