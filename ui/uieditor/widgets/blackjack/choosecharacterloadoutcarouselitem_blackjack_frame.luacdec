-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.chooseCharacterLoadoutBumper")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadoutCarouselItem_BlackJack_Frame = registerVal1
function CoD.ChooseCharacterLoadoutCarouselItem_BlackJack_Frame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadoutCarouselItem_BlackJack_Frame)
	registerVal2.id = "ChooseCharacterLoadoutCarouselItem_BlackJack_Frame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 825.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 554.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 825.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 554.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_character_frame"))
	registerVal2:addElement(registerVal3)
	registerVal2.frame = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 4.000000, 819.000000)
	registerVal4:setTopBottom(true, false, 9.020000, 31.020000)
	registerVal4:setRGB(0.770000, 0.870000, 0.870000)
	registerVal4:setText(Engine.Localize("MPUI_BM_MERCENARY"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setLetterSpacing(5.900000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.text = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 4.000000, 819.000000)
	registerVal5:setTopBottom(true, false, 9.020000, 31.020000)
	registerVal5:setRGB(0.770000, 0.870000, 0.870000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setYRot(180.000000)
	registerVal5:setText(Engine.Localize("MPUI_BM_MERCENARY"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setLetterSpacing(5.900000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.Flippedtext = registerVal5
	local registerVal6 = CoD.chooseCharacterLoadoutBumper.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 771.000000, 807.000000)
	registerVal6:setTopBottom(true, false, 9.750000, 34.750000)
	local function __FUNC_DD3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.chooseCharacterLoadoutBumperInternal0.button:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_DD3_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Invisible"
	local function __FUNC_EDB_(arg0, arg1, arg2)
		return IsListAtEnd(registerVal2, "characterCarousel", arg2)
	end

	registerVal10.condition = __FUNC_EDB_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	if registerVal6.m_eventHandlers.list_focus_changed then
		local function __FUNC_F4C_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal6.m_eventHandlers.list_focus_changed(arg1, arg2)
		end

		registerVal6:registerEventHandler("list_focus_changed", __FUNC_F4C_)
	else
		registerVal6:registerEventHandler("list_focus_changed", LUI.UIElement.updateState)
	end
	registerVal2:addElement(registerVal6)
	registerVal2.rightBumper = registerVal6
	local registerVal7 = CoD.chooseCharacterLoadoutBumper.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 17.000000, 53.000000)
	registerVal7:setTopBottom(true, false, 9.750000, 34.750000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setYRot(180.000000)
	local function __FUNC_FD7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.chooseCharacterLoadoutBumperInternal0.button:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_FD7_)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Invisible"
	local function __FUNC_10DF_(arg0, arg1, arg2)
		return IsListAtEnd(registerVal2, "characterCarousel", arg2)
	end

	registerVal11.condition = __FUNC_10DF_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	if registerVal7.m_eventHandlers.list_focus_changed then
		local function __FUNC_1150_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal7.m_eventHandlers.list_focus_changed(arg1, arg2)
		end

		registerVal7:registerEventHandler("list_focus_changed", __FUNC_1150_)
	else
		registerVal7:registerEventHandler("list_focus_changed", LUI.UIElement.updateState)
	end
	registerVal2:addElement(registerVal7)
	registerVal2.FlippedrightBumper = registerVal7
	local registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_11DB_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_11DB_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_123A_(arg0)
		arg0.rightBumper:close()
		arg0.FlippedrightBumper:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_123A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

