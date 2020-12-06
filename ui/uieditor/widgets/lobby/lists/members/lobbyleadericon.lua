-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyLeaderIcon = registerVal1
function CoD.LobbyLeaderIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyLeaderIcon)
	registerVal2.id = "LobbyLeaderIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -1.000000, 23.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 33.000000)
	registerVal3:setRGB(ColorSet.PartyFriendlyBlue.r, ColorSet.PartyFriendlyBlue.g, ColorSet.PartyFriendlyBlue.b)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_iconpartyleaderextra"))
	registerVal2:addElement(registerVal3)
	registerVal2.Member = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -1.000000, 23.000000)
	registerVal4:setTopBottom(true, false, -4.000000, 28.000000)
	registerVal4:setRGB(0.290000, 0.380000, 0.680000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_iconpartyleader"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal4)
	registerVal2.Leader = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_7E8_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Member:setLeftRight(true, false, -1.000000, 23.000000)
		registerVal2.Member:setTopBottom(true, false, 1.000000, 33.000000)
		registerVal2.Member:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_7E8_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_971_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Member:setLeftRight(true, false, -1.000000, 23.000000)
		registerVal2.Member:setTopBottom(true, false, 1.000000, 98.000000)
		registerVal2.Member:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Leader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_971_
	registerVal5.TopOrMiddleZM = registerVal6
	registerVal6 = {}
	local function __FUNC_B4D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Member:setLeftRight(true, false, -1.000000, 23.000000)
		registerVal2.Member:setTopBottom(true, false, 1.000000, 33.000000)
		registerVal2.Member:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Leader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B4D_
	registerVal5.TopOrMiddle = registerVal6
	registerVal6 = {}
	local function __FUNC_D29_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Member:setLeftRight(true, false, -1.000000, 23.000000)
		registerVal2.Member:setTopBottom(true, false, 1.000000, 33.000000)
		registerVal2.Member:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Leader:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_D29_
	registerVal5.Invisible = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

