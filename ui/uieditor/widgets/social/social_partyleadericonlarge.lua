-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_PartyLeaderIconLarge = registerVal1
function CoD.Social_PartyLeaderIconLarge.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_PartyLeaderIconLarge)
	registerVal2.id = "Social_PartyLeaderIconLarge"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 56.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -2.000000, 21.250000)
	registerVal3:setTopBottom(true, true, -3.000000, 3.000000)
	registerVal3:setRGB(0.290000, 0.380000, 0.680000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_iconpartyleaderlarge"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.Leader = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_637_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Leader:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_637_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_732_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Leader:setLeftRight(true, false, -2.000000, 21.250000)
		registerVal2.Leader:setTopBottom(true, false, -3.000000, 59.000000)
		registerVal2.Leader:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_732_
	registerVal4.Invisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

