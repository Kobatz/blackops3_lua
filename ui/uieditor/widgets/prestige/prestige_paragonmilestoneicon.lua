-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Prestige_ParagonMilestoneIcon = registerVal1
function CoD.Prestige_ParagonMilestoneIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Prestige_ParagonMilestoneIcon)
	registerVal2.id = "Prestige_ParagonMilestoneIcon"
	registerVal2.soundSet = "AAR"
	registerVal2:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal3:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal3:setRGB(0.890000, 0.700000, 0.360000)
	registerVal3:setImage(RegisterImage("uie_t7_arena_diamond_small_yellow"))
	registerVal2:addElement(registerVal3)
	registerVal2.ParagonMilestoneIcon = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

