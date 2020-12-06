-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.OverClipContainer")
local function __FUNC_20C_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
	arg0:setForceMouseEventDispatch(true)
	local function __FUNC_2E3_(arg0, arg3)
		local registerVal2 = FeaturedCards_IsEnabled(arg0, arg1)
		if registerVal2 then
			FeaturedCardsActionButtonHandler(arg2, arg0, arg1, "", arg2)
		end
		return true
	end

	if __FUNC_2E3_ then
		arg0:registerEventHandler("leftmouseup", __FUNC_2E3_)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FE_FeaturedCard = registerVal2
local function __FUNC_39D_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FE_FeaturedCard)
	registerVal2.id = "FE_FeaturedCard"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 306.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 87.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -27.000000, 333.000000)
	registerVal3:setTopBottom(true, false, -9.000000, 95.000000)
	registerVal3:setScale(0.850000)
	registerVal2:addElement(registerVal3)
	registerVal2.BackgroundImage = registerVal3
	local registerVal4 = CoD.OverClipContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 306.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 87.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.OverClip = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 306.000000)
	registerVal5:setTopBottom(true, false, 66.500000, 87.400000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.400000)
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal5:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal5)
	registerVal2.TitleBg = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 5.880000, 306.000000)
	registerVal6:setTopBottom(true, false, 66.500000, 86.500000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal6)
	registerVal2.Title = registerVal6
	local function __FUNC_AE8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.BackgroundImage:linkToElementModel(registerVal2, "background", true, __FUNC_AE8_)
	local function __FUNC_B9C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Title:linkToElementModel(registerVal2, "title", true, __FUNC_B9C_)
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_C56_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.BackgroundImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal8.DefaultClip = __FUNC_C56_
	local function __FUNC_D5C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.BackgroundImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal8.Active = __FUNC_D5C_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_E64_(arg0)
		arg0.OverClip:close()
		arg0.BackgroundImage:close()
		arg0.Title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E64_)
	if __FUNC_20C_ then
		__FUNC_20C_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FE_FeaturedCard.new = __FUNC_39D_
