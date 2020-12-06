-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_NearCompletion_CroppedImage = registerVal1
function CoD.Challenges_NearCompletion_CroppedImage.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.Challenges_NearCompletion_CroppedImage)
	registerVal2.id = "Challenges_NearCompletion_CroppedImage"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -96.000000, 32.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_emblem_bg_att_dual_wield"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

