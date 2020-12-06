-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyMemberPartyMemberIconNew = registerVal1
function CoD.LobbyMemberPartyMemberIconNew.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyMemberPartyMemberIconNew)
	registerVal2.id = "LobbyMemberPartyMemberIconNew"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 10.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -3.000000, 13.000000)
	registerVal3:setTopBottom(true, true, -3.000000, 4.000000)
	registerVal3:setRGB(ColorSet.PartyFriendlyBlue.r, ColorSet.PartyFriendlyBlue.g, ColorSet.PartyFriendlyBlue.b)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_iconpartymember"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.500000, 0.500000, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(8.000000, 16.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Icon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_7B4_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7B4_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_8B0_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setLeftRight(true, false, -3.000000, 13.000000)
		registerVal2.Icon:setTopBottom(true, true, -3.500000, 10.000000)
		registerVal2.Icon:setRGB(0.290000, 0.380000, 0.680000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8B0_
	registerVal4.PartyMemberTopOrMiddle = registerVal5
	registerVal5 = {}
	local function __FUNC_A7A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setLeftRight(true, false, -3.000000, 13.000000)
		registerVal2.Icon:setTopBottom(true, true, -3.000000, 4.000000)
		registerVal2.Icon:setRGB(0.290000, 0.380000, 0.680000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A7A_
	registerVal4.PartyMember = registerVal5
	registerVal5 = {}
	local function __FUNC_C3D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setLeftRight(true, false, -3.000000, 13.000000)
		registerVal2.Icon:setTopBottom(true, true, -3.500000, 10.000000)
		registerVal2.Icon:setRGB(0.650000, 0.650000, 0.650000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_C3D_
	registerVal4.OtherPartyMemberTopOrMiddle = registerVal5
	registerVal5 = {}
	local function __FUNC_DFC_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setLeftRight(true, false, -3.000000, 13.000000)
		registerVal2.Icon:setTopBottom(true, true, -3.000000, 4.000000)
		registerVal2.Icon:setRGB(0.650000, 0.650000, 0.650000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_DFC_
	registerVal4.OtherPartyMember = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

