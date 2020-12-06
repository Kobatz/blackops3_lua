-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Notification_Medals_Backing_9Slice = registerVal1
function CoD.Notification_Medals_Backing_9Slice.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Notification_Medals_Backing_9Slice)
	registerVal2.id = "Notification_Medals_Backing_9Slice"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -54.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_playerlevel_backing_title_01_right"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image3 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 56.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_playerlevel_backing_title_01_left"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 56.000000, -54.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_playerlevel_backing_title_01_stretch"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image4 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_77E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_77E_
	local function __FUNC_7DE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.TimeUp = __FUNC_7DE_
	local function __FUNC_83E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.Combined = __FUNC_83E_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_89E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_89E_
	registerVal6.Hidden = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Hidden"
	local function __FUNC_8FE_(arg0, arg2, arg3)
		return IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
	end

	registerVal9.condition = __FUNC_8FE_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

