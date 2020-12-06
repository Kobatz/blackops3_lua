-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
require("ui.uieditor.widgets.Social.Social_PartyList")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_InfoPane_Party = registerVal1
function CoD.Social_InfoPane_Party.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_InfoPane_Party)
	registerVal2.id = "Social_InfoPane_Party"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 288.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, true, 8.000000, -16.000000)
	registerVal3:setTopBottom(true, false, 221.000000, 241.000000)
	registerVal3:setAlpha(SocialShowPartyFooter(1.000000))
	registerVal3:setZoom(5.000000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setLetterSpacing(0.500000)
	local function __FUNC_ABC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(SocialPartyFooter(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "partySize", true, __FUNC_ABC_)
	registerVal2:addElement(registerVal3)
	registerVal2.partyFooter = registerVal3
	local registerVal4 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.500000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 36.500000)
	registerVal4:setRGB(0.900000, 0.900000, 0.900000)
	registerVal2:addElement(registerVal4)
	registerVal2.cacItemTitleGlow0 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 9.000000, 115.500000)
	registerVal5:setTopBottom(true, false, 10.500000, 30.500000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setZoom(5.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setLetterSpacing(0.500000)
	local function __FUNC_B73_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(SocialPartyHeader(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "partySize", true, __FUNC_B73_)
	registerVal2:addElement(registerVal5)
	registerVal2.partyHeader = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal6:setTopBottom(true, false, 43.500000, 209.500000)
	registerVal6:setWidgetType(CoD.Social_PartyList)
	registerVal6:setVerticalCount(6.000000)
	registerVal6:setDataSource("SocialPlayerPartyList")
	registerVal2:addElement(registerVal6)
	registerVal2.PLayerList = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_C4D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_C4D_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	registerVal6.id = "PLayerList"
	local function __FUNC_CAE_(arg0, arg1)
		local registerVal2 = arg0.PLayerList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_CAE_)
	local function __FUNC_DB2_(arg0)
		arg0.cacItemTitleGlow0:close()
		arg0.PLayerList:close()
		arg0.partyFooter:close()
		arg0.partyHeader:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DB2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

