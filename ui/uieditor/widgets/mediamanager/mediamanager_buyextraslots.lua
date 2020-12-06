-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MediaManager_BuyExtraSlots = registerVal1
function CoD.MediaManager_BuyExtraSlots.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MediaManager_BuyExtraSlots)
	registerVal2.id = "MediaManager_BuyExtraSlots"
	registerVal2.soundSet = "Paintshop"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 180.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 180.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal3:setShaderVector(0.000000, 0.010000, 0.010000, 0.010000, 0.010000)
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 349.000000, 1.000000)
	registerVal4:setTopBottom(true, false, 14.000000, 50.000000)
	registerVal4:setRGB(0.900000, 0.900000, 0.900000)
	registerVal2:addElement(registerVal4)
	registerVal2.HeaderBG = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 14.500000, 363.000000)
	registerVal5:setTopBottom(true, false, 17.000000, 47.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setText(Engine.Localize("MENU_FILESHARE_BUY_SLOTS"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.HeaderLabel = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 17.500000, 329.500000)
	registerVal6:setTopBottom(true, false, 58.500000, 77.500000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setText(Engine.Localize("MENU_FILESHARE_BUY_SLOTS_DESC"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.BuyMoreDesc = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_C3C_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HeaderBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HeaderLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BuyMoreDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_C3C_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_E3E_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BG:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HeaderBG:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HeaderLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BuyMoreDesc:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_E3E_
	registerVal7.Visible = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Visible"
	local function __FUNC_1043_(arg0, arg1, arg2)
		return MediaManagerIsBuyMoreSlot()
	end

	registerVal10.condition = __FUNC_1043_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "MediaManager.isBuyMoreSlot")
	local function __FUNC_109B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.isBuyMoreSlot"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_109B_)
	local function __FUNC_11C8_(arg0)
		arg0.HeaderBG:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11C8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

