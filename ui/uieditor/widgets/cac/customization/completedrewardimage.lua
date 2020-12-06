-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CompletedRewardImage = registerVal1
function CoD.CompletedRewardImage.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CompletedRewardImage)
	registerVal2.id = "CompletedRewardImage"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 78.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 78.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.140000, 0.120000, 0.130000)
	registerVal2:addElement(registerVal3)
	registerVal2.bgImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal4:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal4:setRGB(0.980000, 0.730000, 0.350000)
	registerVal4:setImage(RegisterImage("uie_menu_mp_star_rating"))
	registerVal2:addElement(registerVal4)
	registerVal2.completedRewardImage = registerVal4
	local registerVal5 = CoD.Border.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.border = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_709_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_709_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_76A_(arg0)
		arg0.border:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_76A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

