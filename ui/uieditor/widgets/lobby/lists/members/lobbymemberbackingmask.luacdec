-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyMemberBackingMask = registerVal1
function CoD.LobbyMemberBackingMask.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.LobbyMemberBackingMask)
	registerVal2.id = "LobbyMemberBackingMask"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -5.000000, 5.000000)
	registerVal3:setTopBottom(true, true, -3.000000, 3.000000)
	registerVal3:setImage(RegisterImage("uie_img_t7_menu_partyease_boxmaskfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.032000, 0.354839, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(16.000000, 11.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "PlayerCountState"
	local function __FUNC_68E_(arg0, arg1, arg2)
		return IsPlayerCountItem(arg1)
	end

	registerVal7.condition = __FUNC_68E_
	local registerVal8 = {}
	registerVal8.stateName = "AddControllerState"
	local function __FUNC_6E3_(arg0, arg1, arg2)
		return IsAddControllerTextItem(arg1)
	end

	registerVal8.condition = __FUNC_6E3_
	local registerVal9 = {}
	registerVal9.stateName = "Invisible"
	local function __FUNC_73D_(arg0, arg1, arg2)
		return true
	end

	registerVal9.condition = __FUNC_73D_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal6)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

