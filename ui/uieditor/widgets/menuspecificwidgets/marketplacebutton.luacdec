-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MarketplaceButton = registerVal1
function CoD.MarketplaceButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MarketplaceButton)
	registerVal2.id = "MarketplaceButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 178.000000, 350.000000)
	registerVal3:setTopBottom(true, false, 6.000000, 42.000000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.SkuName = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -4.000000, 60.000000)
	registerVal4:setTopBottom(true, false, 18.000000, 82.000000)
	registerVal4:setImage(RegisterImage("uie_headicon_dead"))
	registerVal2:addElement(registerVal4)
	registerVal2.FocusIcon = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 100.000000, 144.000000)
	registerVal5:setTopBottom(true, false, 45.000000, 67.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.SkuPriceText = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 60.000000, 140.000000)
	registerVal6:setTopBottom(true, false, 6.000000, 42.000000)
	registerVal6:setText(Engine.Localize("SKU Name:"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.SkuDescription = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 60.000000, 100.000000)
	registerVal7:setTopBottom(true, false, 45.000000, 67.000000)
	registerVal7:setText(Engine.Localize("Price:"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.SkuPriceLabel = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 175.000000, 252.000000)
	registerVal8:setTopBottom(true, false, 45.000000, 67.000000)
	registerVal8:setText(Engine.Localize("Currency ID: "))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal8)
	registerVal2.CurrencyTypeLabel = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 253.000000, 292.000000)
	registerVal9:setTopBottom(true, false, 45.000000, 67.000000)
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.CurrencyType = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 60.000000, 125.000000)
	registerVal10:setTopBottom(true, false, 71.000000, 93.000000)
	registerVal10:setText(Engine.Localize("Product ID:"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal10)
	registerVal2.ProductIdLabel = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 134.000000, 164.000000)
	registerVal11:setTopBottom(true, false, 71.000000, 93.000000)
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.ProductId = registerVal11
	local registerVal12 = LUI.UITightText.new()
	registerVal12:setLeftRight(true, false, 175.000000, 216.000000)
	registerVal12:setTopBottom(true, false, 71.000000, 93.000000)
	registerVal12:setText(Engine.Localize("Rental:"))
	registerVal12:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal12)
	registerVal2.RentalLabel = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 224.000000, 252.000000)
	registerVal13:setTopBottom(true, false, 71.000000, 93.000000)
	registerVal13:setTTF("fonts/default.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal13)
	registerVal2.RentalDuration = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 253.000000, 281.000000)
	registerVal14:setTopBottom(true, false, 71.000000, 93.000000)
	registerVal14:setTTF("fonts/default.ttf")
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal14)
	registerVal2.RentalDurationUnits = registerVal14
	local function __FUNC_112B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(ToString(registerVal1)))
		end
	end

	registerVal2.SkuName:linkToElementModel(registerVal2, "productName", true, __FUNC_112B_)
	local function __FUNC_11FC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(ToString(registerVal1)))
		end
	end

	registerVal2.SkuPriceText:linkToElementModel(registerVal2, "skuPrice", true, __FUNC_11FC_)
	local function __FUNC_12D0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(ToString(registerVal1)))
		end
	end

	registerVal2.CurrencyType:linkToElementModel(registerVal2, "currencyId", true, __FUNC_12D0_)
	local function __FUNC_13A4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(ToString(registerVal1)))
		end
	end

	registerVal2.ProductId:linkToElementModel(registerVal2, "productId", true, __FUNC_13A4_)
	local function __FUNC_1478_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(ToString(registerVal1)))
		end
	end

	registerVal2.RentalDuration:linkToElementModel(registerVal2, "rentalDuration", true, __FUNC_1478_)
	local function __FUNC_154C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setText(Engine.Localize(ToString(registerVal1)))
		end
	end

	registerVal2.RentalDurationUnits:linkToElementModel(registerVal2, "rentalDurationUnit", true, __FUNC_154C_)
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_1620_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal16.DefaultClip = __FUNC_1620_
	local function __FUNC_1721_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1807_(arg0, arg1)
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
		__FUNC_1807_(registerVal4, {})
	end

	registerVal16.Focus = __FUNC_1721_
	local function __FUNC_19B9_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1A9A_(arg0, arg1)
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
		__FUNC_1A9A_(registerVal4, {})
	end

	registerVal16.LoseFocus = __FUNC_19B9_
	registerVal15.DefaultState = registerVal16
	registerVal2.clipsPerState = registerVal15
	local function __FUNC_1C4D_(arg0)
		arg0.SkuName:close()
		arg0.SkuPriceText:close()
		arg0.CurrencyType:close()
		arg0.ProductId:close()
		arg0.RentalDuration:close()
		arg0.RentalDurationUnits:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C4D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

