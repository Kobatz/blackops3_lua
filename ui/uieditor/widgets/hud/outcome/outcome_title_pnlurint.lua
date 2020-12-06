-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Outcome_title_PnlURInt = registerVal1
function CoD.Outcome_title_PnlURInt.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Outcome_title_PnlURInt)
	registerVal2.id = "Outcome_title_PnlURInt"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 28.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -13.500000, 14.000000)
	registerVal3:setTopBottom(false, false, -14.000000, 13.500000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_framecorner"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal3:setShaderVector(0.000000, 0.000000, 20.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.CornerFrameURBlur = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_671_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_671_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6D2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_6D2_
	registerVal4.VictoryGreen = registerVal5
	registerVal5 = {}
	local function __FUNC_732_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_732_
	registerVal4.DefeatRed = registerVal5
	registerVal5 = {}
	local function __FUNC_792_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_792_
	registerVal4.OvertimeOrange = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

