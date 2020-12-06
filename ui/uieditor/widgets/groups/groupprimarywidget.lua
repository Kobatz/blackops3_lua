-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupPrimaryWidget = registerVal1
function CoD.GroupPrimaryWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupPrimaryWidget)
	registerVal2.id = "GroupPrimaryWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 341.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 42.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 42.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 42.000000)
	registerVal3:setRGB(ColorSet.FocusColor.r, ColorSet.FocusColor.g, ColorSet.FocusColor.b)
	registerVal3:setImage(RegisterImage("uie_t7_icon_menu_simple_groups_favorites"))
	registerVal2:addElement(registerVal3)
	registerVal2.PrimaryIcon = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 41.000000, 341.000000)
	registerVal4:setTopBottom(true, false, 3.000000, 25.000000)
	registerVal4:setRGB(ColorSet.FocusColor.r, ColorSet.FocusColor.g, ColorSet.FocusColor.b)
	registerVal4:setText(Engine.Localize("GROUPS_PRIMARY_GROUP"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setLetterSpacing(-0.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.PrimaryLabel = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_7CA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PrimaryIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PrimaryLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_7CA_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_925_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PrimaryIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PrimaryLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_925_
	registerVal5.Visible = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

