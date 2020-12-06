-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.overCapacityScorestreakInfo = registerVal1
function CoD.overCapacityScorestreakInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.overCapacityScorestreakInfo)
	registerVal2.id = "overCapacityScorestreakInfo"
	registerVal2.soundSet = "CAC_Wildcard"
	registerVal2:setLeftRight(true, false, 0.000000, 332.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 89.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.500000, -136.500000)
	registerVal3:setTopBottom(true, true, 5.000000, -53.000000)
	registerVal3:setRGB(0.900000, 0.900000, 0.900000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.TitleGlow1 = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -1.500000, -137.500000)
	registerVal4:setTopBottom(true, false, 32.000000, 81.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.cacButtonBoxLrgInactiveStroke = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 9.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -6.000000, 10.000000)
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_A4D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(LocalizeIntoString("MENU_SCORE_REQUIRED", GetScorestreakMomentumFromIndex(registerVal1))))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_A4D_)
	registerVal2:addElement(registerVal5)
	registerVal2.descText = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 9.000000, 131.000000)
	registerVal6:setTopBottom(true, false, 8.000000, 33.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setLetterSpacing(0.500000)
	local function __FUNC_B7C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(GetItemNameFromIndex(registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_B7C_)
	registerVal2:addElement(registerVal6)
	registerVal2.nameLabel = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_C5C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.descText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.nameLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_C5C_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_DB3_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.descText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.nameLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_DB3_
	registerVal7.NameOnly = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_F0C_(arg0)
		arg0.TitleGlow1:close()
		arg0.cacButtonBoxLrgInactiveStroke:close()
		arg0.descText:close()
		arg0.nameLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F0C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

