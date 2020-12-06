-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RankUpNotification_WingContainer = registerVal1
function CoD.RankUpNotification_WingContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RankUpNotification_WingContainer)
	registerVal2.id = "RankUpNotification_WingContainer"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 180.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 35.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 10.670000)
	registerVal3:setTopBottom(true, false, 0.000000, 34.670000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_playerlevel_backing_wing01"))
	registerVal2:addElement(registerVal3)
	registerVal2.wing01 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -10.670000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 34.670000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_playerlevel_backing_wing02"))
	registerVal2:addElement(registerVal4)
	registerVal2.wing02 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_643_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_643_
	local function __FUNC_6A2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.TimeUp = __FUNC_6A2_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

