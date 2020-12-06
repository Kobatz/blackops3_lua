-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyMemberBackingFooter = registerVal1
function CoD.LobbyMemberBackingFooter.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyMemberBackingFooter)
	registerVal2.id = "LobbyMemberBackingFooter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 11.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -3.500000, 3.500000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_img_t7_menu_partyease_focusfooterfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.032193, 0.090909, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(16.000000, 1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "PlayerCountState"
	local function __FUNC_66B_(arg0, arg1, arg2)
		return IsPlayerCountItem(arg1)
	end

	registerVal7.condition = __FUNC_66B_
	local registerVal8 = {}
	registerVal8.stateName = "AddControllerState"
	local function __FUNC_6BF_(arg0, arg1, arg2)
		return IsAddControllerTextItem(arg1)
	end

	registerVal8.condition = __FUNC_6BF_
	registerVal6 = {registerVal7, registerVal8}
	registerVal2:mergeStateConditions(registerVal6)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

