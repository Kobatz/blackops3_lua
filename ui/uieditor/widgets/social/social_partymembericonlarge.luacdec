-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_PartyMemberIconLarge = registerVal1
function CoD.Social_PartyMemberIconLarge.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_PartyMemberIconLarge)
	registerVal2.id = "Social_PartyMemberIconLarge"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 6.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setRGB(ColorSet.PartyOther.r, ColorSet.PartyOther.g, ColorSet.PartyOther.b)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_iconpartymemberlarge"))
	registerVal2:addElement(registerVal3)
	registerVal2.Icon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6DD_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6DD_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7D8_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.Icon:setTopBottom(true, true, -3.000000, 7.000000)
		registerVal2.Icon:setRGB(0.290000, 0.380000, 0.680000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7D8_
	registerVal4.PartyMemberTopOrMiddle = registerVal5
	registerVal5 = {}
	local function __FUNC_9A2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setRGB(0.290000, 0.380000, 0.680000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_9A2_
	registerVal4.PartyMember = registerVal5
	registerVal5 = {}
	local function __FUNC_ADA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.Icon:setTopBottom(true, true, -3.000000, 8.000000)
		registerVal2.Icon:setRGB(0.650000, 0.650000, 0.650000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_ADA_
	registerVal4.OtherPartyMemberTopOrMiddle = registerVal5
	registerVal5 = {}
	local function __FUNC_C98_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setRGB(0.650000, 0.650000, 0.650000)
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_C98_
	registerVal4.OtherPartyMember = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

