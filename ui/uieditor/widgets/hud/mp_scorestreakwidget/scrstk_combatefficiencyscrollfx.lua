-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScrStk_CombatEfficiencyScrollFX = registerVal1
function CoD.ScrStk_CombatEfficiencyScrollFX.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScrStk_CombatEfficiencyScrollFX)
	registerVal2.id = "ScrStk_CombatEfficiencyScrollFX"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 19.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_focusmeterpixelfade"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal3:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 2.400000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_focusmeterpixelfadegrad"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6E3_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_6E3_
	local function __FUNC_742_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.ScoreAdded = __FUNC_742_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

