-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PlayerInventoryButton = registerVal1
function CoD.PlayerInventoryButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PlayerInventoryButton)
	registerVal2.id = "PlayerInventoryButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 128.000000, 350.000000)
	registerVal3:setTopBottom(true, false, 7.000000, 43.000000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.ItemId = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -4.000000, 60.000000)
	registerVal4:setTopBottom(true, false, 18.000000, 82.000000)
	registerVal4:setImage(RegisterImage("uie_headicon_dead"))
	registerVal2:addElement(registerVal4)
	registerVal2.FocusIcon = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 101.000000, 146.000000)
	registerVal5:setTopBottom(true, false, 43.000000, 65.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.ItemQuantity = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 81.000000, 128.000000)
	registerVal6:setTopBottom(true, false, 71.000000, 93.000000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.ItemXp = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 60.000000, 137.000000)
	registerVal7:setTopBottom(true, false, 7.000000, 43.000000)
	registerVal7:setText(Engine.Localize("Name:"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.ItemIdLabel = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 60.000000, 94.000000)
	registerVal8:setTopBottom(true, false, 43.000000, 65.000000)
	registerVal8:setText(Engine.Localize("Count:"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal8)
	registerVal2.ItemQuantityLabel = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 60.000000, 79.000000)
	registerVal9:setTopBottom(true, false, 71.000000, 93.000000)
	registerVal9:setText(Engine.Localize("XP:"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal9)
	registerVal2.ItemXpLabel = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 131.000000, 219.000000)
	registerVal10:setTopBottom(true, false, 43.000000, 65.000000)
	registerVal10:setText(Engine.Localize("Is Consumable:"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal10)
	registerVal2.ConsumabilityLabel = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 223.000000, 255.000000)
	registerVal11:setTopBottom(true, false, 43.000000, 65.000000)
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.IsConsumable = registerVal11
	local registerVal12 = LUI.UITightText.new()
	registerVal12:setLeftRight(true, false, 129.000000, 221.000000)
	registerVal12:setTopBottom(true, false, 71.000000, 93.000000)
	registerVal12:setText(Engine.Localize("Expiry Duration:"))
	registerVal12:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal12)
	registerVal2.ExpiryDurationLabel = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 230.000000, 291.000000)
	registerVal13:setTopBottom(true, false, 71.000000, 93.000000)
	registerVal13:setTTF("fonts/default.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal13)
	registerVal2.ExpiryDuration = registerVal13
	local function __FUNC_1027_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(ToString(registerVal1)))
		end
	end

	registerVal2.ItemId:linkToElementModel(registerVal2, "productName", true, __FUNC_1027_)
	local function __FUNC_10F8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(ToString(registerVal1)))
		end
	end

	registerVal2.ItemQuantity:linkToElementModel(registerVal2, "itemQuantity", true, __FUNC_10F8_)
	local function __FUNC_11CC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(ToString(registerVal1)))
		end
	end

	registerVal2.ItemXp:linkToElementModel(registerVal2, "itemXp", true, __FUNC_11CC_)
	local function __FUNC_12A0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(ToString(registerVal1)))
		end
	end

	registerVal2.IsConsumable:linkToElementModel(registerVal2, "isConsumable", true, __FUNC_12A0_)
	local function __FUNC_1374_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(ToString(registerVal1)))
		end
	end

	registerVal2.ExpiryDuration:linkToElementModel(registerVal2, "expiryDuration", true, __FUNC_1374_)
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1448_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal15.DefaultClip = __FUNC_1448_
	local function __FUNC_1549_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_162F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.FocusIcon:setAlpha(0.000000)
		__FUNC_162F_(registerVal4, {})
	end

	registerVal15.Focus = __FUNC_1549_
	local function __FUNC_17E1_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_18C2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.FocusIcon:setAlpha(1.000000)
		__FUNC_18C2_(registerVal4, {})
	end

	registerVal15.LoseFocus = __FUNC_17E1_
	registerVal14.DefaultState = registerVal15
	registerVal2.clipsPerState = registerVal14
	local function __FUNC_1A75_(arg0)
		arg0.ItemId:close()
		arg0.ItemQuantity:close()
		arg0.ItemXp:close()
		arg0.IsConsumable:close()
		arg0.ExpiryDuration:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1A75_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

