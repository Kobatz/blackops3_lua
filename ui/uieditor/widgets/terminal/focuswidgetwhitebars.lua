-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FocusWidgetWhiteBars = registerVal1
function CoD.FocusWidgetWhiteBars.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FocusWidgetWhiteBars)
	registerVal2.id = "FocusWidgetWhiteBars"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 165.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 7.000000)
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 13.650000)
	registerVal3:setTopBottom(true, true, 0.000000, -0.170000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cp_datavault_focustab_tip"))
	registerVal2:addElement(registerVal3)
	registerVal2.Ends = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 13.650000, -14.000000)
	registerVal4:setTopBottom(true, true, 0.910000, -1.090000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cp_datavault_focustab_center"))
	registerVal2:addElement(registerVal4)
	registerVal2.bar = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -14.000000, -0.320000)
	registerVal5:setTopBottom(true, true, 0.000000, -0.160000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cp_datavault_focustab_tip2"))
	registerVal2:addElement(registerVal5)
	registerVal2.ends10 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_7C7_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_7C7_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

