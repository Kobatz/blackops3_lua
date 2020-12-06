-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WildcardInfoWidget = registerVal1
function CoD.WildcardInfoWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WildcardInfoWidget)
	registerVal2.id = "WildcardInfoWidget"
	registerVal2.soundSet = "CAC_Wildcard"
	registerVal2:setLeftRight(true, false, 0.000000, 235.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 113.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 4.000000, -1.000000)
	registerVal3:setTopBottom(true, false, 90.000000, 123.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.tokenRefundBorder = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 11.000000, 226.000000)
	registerVal4:setTopBottom(true, false, 98.500000, 114.500000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("MENU_PRESTIGE_UNLOCK_TOKEN_REFUND"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.tokenRefundText = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 4.000000, -1.000000)
	registerVal5:setTopBottom(true, false, 30.000000, 93.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.cacButtonBoxLrgInactiveStroke = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 11.000000, 226.000000)
	registerVal6:setTopBottom(true, false, 38.500000, 54.500000)
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_C6E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(GetUnlockDescription(arg1, registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_C6E_)
	registerVal2:addElement(registerVal6)
	registerVal2.descText = registerVal6
	local registerVal7 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 4.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 4.000000, -78.000000)
	registerVal7:setRGB(0.900000, 0.900000, 0.900000)
	registerVal7:setAlpha(0.850000)
	registerVal2:addElement(registerVal7)
	registerVal2.TitleGlow1 = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 11.000000, 133.000000)
	registerVal8:setTopBottom(true, false, 7.000000, 32.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_D50_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "name", true, __FUNC_D50_)
	registerVal2:addElement(registerVal8)
	registerVal2.nameLabel = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_E0A_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.tokenRefundBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.tokenRefundText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.descText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.nameLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_E0A_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_108B_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.tokenRefundBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.tokenRefundText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.descText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.nameLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_108B_
	registerVal9.NameOnly = registerVal10
	registerVal10 = {}
	local function __FUNC_130B_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.tokenRefundBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.tokenRefundText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cacButtonBoxLrgInactiveStroke:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.descText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.nameLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_130B_
	registerVal9.PermanentUnlockRefund = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_1586_(arg0)
		arg0.tokenRefundBorder:close()
		arg0.cacButtonBoxLrgInactiveStroke:close()
		arg0.TitleGlow1:close()
		arg0.descText:close()
		arg0.nameLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1586_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

