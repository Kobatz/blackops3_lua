-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RankUpNotification_TitleBacking9Slice = registerVal1
function CoD.RankUpNotification_TitleBacking9Slice.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RankUpNotification_TitleBacking9Slice)
	registerVal2.id = "RankUpNotification_TitleBacking9Slice"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 70.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 56.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_playerlevel_backing_title_01_left"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -56.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_playerlevel_backing_title_01_right"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 56.000000, -56.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_playerlevel_backing_title_01_stretch"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -60.000000, 60.000000)
	registerVal6:setTopBottom(true, false, 40.000000, 68.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_playerlevel_backing_title_02"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image3 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_804_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_804_
	local function __FUNC_866_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.TimeUp = __FUNC_866_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

