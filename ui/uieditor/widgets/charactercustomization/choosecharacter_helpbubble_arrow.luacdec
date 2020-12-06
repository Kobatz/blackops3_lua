-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacter_HelpBubble_Arrow = registerVal1
function CoD.ChooseCharacter_HelpBubble_Arrow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.ChooseCharacter_HelpBubble_Arrow)
	registerVal2.id = "ChooseCharacter_HelpBubble_Arrow"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 131.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 61.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 10.500000, 71.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 61.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setZRot(45.000000)
	registerVal3:setScale(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.TriangleBack = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -11.000000, 11.000000)
	registerVal4:setTopBottom(false, false, -7.500000, 7.500000)
	registerVal4:setZRot(90.000000)
	registerVal4:setScale(1.200000)
	registerVal4:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.arrowUp = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6E4_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_6E4_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

