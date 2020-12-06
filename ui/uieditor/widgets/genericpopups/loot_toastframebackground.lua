-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LOOT_ToastFrameBackground = registerVal1
function CoD.LOOT_ToastFrameBackground.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LOOT_ToastFrameBackground)
	registerVal2.id = "LOOT_ToastFrameBackground"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 347.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 113.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -48.910000, -0.490000)
	registerVal3:setImage(RegisterImage("uie_t7_toast_backer_bottom"))
	registerVal2:addElement(registerVal3)
	registerVal2.bot = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 47.950000, -48.910000)
	registerVal4:setImage(RegisterImage("uie_t7_toast_backer_middle"))
	registerVal2:addElement(registerVal4)
	registerVal2.mod = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 0.500000, 47.950000)
	registerVal5:setImage(RegisterImage("uie_t7_toast_backer_top"))
	registerVal2:addElement(registerVal5)
	registerVal2.top = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_66F_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_66F_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

