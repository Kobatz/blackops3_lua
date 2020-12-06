-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
require("ui.uieditor.widgets.Social.Social_InfoPane_Presence_Joinable")
require("ui.uieditor.widgets.horizontalScrollingTextBox")
local function __FUNC_2AF_(arg0, arg1, arg2)
	if CoD.isPC then
		arg0:setForceMouseEventDispatch(true)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Social_InfoPane_Presence = registerVal2
local function __FUNC_33B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_InfoPane_Presence)
	registerVal2.id = "Social_InfoPane_Presence"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 354.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 192.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 36.500000)
	registerVal3:setRGB(0.900000, 0.900000, 0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.cacItemTitleGlow0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -27.930000, 74.070000)
	registerVal4:setTopBottom(false, false, -94.000000, -21.000000)
	registerVal4:setAlpha(0.140000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow = registerVal4
	local registerVal5 = CoD.Social_InfoPane_Presence_Joinable.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, true, -56.000000, 10.000000)
	local function __FUNC_12B8_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_12B8_)
	registerVal2:addElement(registerVal5)
	registerVal2.joinable = registerVal5
	local registerVal6 = CoD.horizontalScrollingTextBox.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 10.000000, -10.000000)
	registerVal6:setTopBottom(true, false, 74.000000, 96.000000)
	registerVal6:setAlpha(0.600000)
	registerVal6.textBox:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6.textBox:setLineSpacing(-1.000000)
	registerVal6.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_130A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "contextString", true, __FUNC_130A_)
	registerVal2:addElement(registerVal6)
	registerVal2.titleContextScroller = registerVal6
	local registerVal7 = CoD.horizontalScrollingTextBox.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 10.000000, -10.000000)
	registerVal7:setTopBottom(true, false, 48.000000, 70.000000)
	registerVal7.textBox:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_13DF_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_13DF_)
	local function __FUNC_142E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "activityString", true, __FUNC_142E_)
	registerVal2:addElement(registerVal7)
	registerVal2.titleActivityScroller = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 10.000000, 40.000000)
	registerVal8:setTopBottom(true, false, 3.500000, 33.500000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	local function __FUNC_1503_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(PresenceActivityToIcon(registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "activity", true, __FUNC_1503_)
	registerVal2:addElement(registerVal8)
	registerVal2.presenceIcon = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 42.000000, 344.000000)
	registerVal9:setTopBottom(true, false, 6.000000, 31.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal9:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_15DC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(PresenceActivityToModeString(registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "activity", true, __FUNC_15DC_)
	registerVal2:addElement(registerVal9)
	registerVal2.presence = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 8.000000, 352.000000)
	registerVal10:setTopBottom(true, false, 9.000000, 34.000000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setTTF("fonts/escom.ttf")
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal10:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_16C4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(PrimaryPresenceToLocalizedString(registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "primaryPresence", true, __FUNC_16C4_)
	registerVal2:addElement(registerVal10)
	registerVal2.primaryPresence = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, true, 10.000000, -10.000000)
	registerVal11:setTopBottom(true, false, 48.000000, 70.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_17B0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(PlatformPresenceToLocalizedString(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "platformPresence", true, __FUNC_17B0_)
	registerVal2:addElement(registerVal11)
	registerVal2.platformPresenceScroller = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_1877_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.cacItemTitleGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.joinable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.titleContextScroller:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.titleActivityScroller:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.presenceIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.presence:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.primaryPresence:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.platformPresenceScroller:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1877_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_1C10_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.joinable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.titleContextScroller:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.titleActivityScroller:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.presenceIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.presence:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.primaryPresence:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.platformPresenceScroller:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1C10_
	registerVal12.ShowPlatformPresence = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "ShowPlatformPresence"
	local function __FUNC_1F4D_(arg0, arg2, arg3)
		local registerVal3 = IsInTitle(registerVal2, arg1)
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_1F4D_
	registerVal14 = {registerVal15}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_1FA3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "activity"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "activity", true, __FUNC_1FA3_)
	local function __FUNC_20BE_(arg0)
		arg0.cacItemTitleGlow0:close()
		arg0.joinable:close()
		arg0.titleContextScroller:close()
		arg0.titleActivityScroller:close()
		arg0.presenceIcon:close()
		arg0.presence:close()
		arg0.primaryPresence:close()
		arg0.platformPresenceScroller:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_20BE_)
	if __FUNC_2AF_ then
		__FUNC_2AF_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Social_InfoPane_Presence.new = __FUNC_33B_
