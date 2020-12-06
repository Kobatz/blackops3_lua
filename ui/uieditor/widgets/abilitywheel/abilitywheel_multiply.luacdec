-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityWheel_Multiply = registerVal1
function CoD.AbilityWheel_Multiply.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityWheel_Multiply)
	registerVal2.id = "AbilityWheel_Multiply"
	registerVal2.soundSet = "AbilityWheel"
	registerVal2:setLeftRight(true, false, 0.000000, 672.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 672.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -336.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -336.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_gradmultiply"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal3)
	registerVal2.GradMultiply = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -336.000000, 0.000000)
	registerVal4:setTopBottom(false, false, 0.000000, 336.000000)
	registerVal4:setXRot(-180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_gradmultiply"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image3 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, 0.000000, 336.000000)
	registerVal5:setTopBottom(false, false, -336.000000, 0.000000)
	registerVal5:setYRot(180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_gradmultiply"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image4 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, 0.000000, 336.000000)
	registerVal6:setTopBottom(false, false, 0.000000, 336.000000)
	registerVal6:setXRot(180.000000)
	registerVal6:setYRot(-180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_gradmultiply"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image5 = registerVal6
	local function __FUNC_7F4_(arg0, arg1)
		local registerVal2 = arg0.AbilityButton6:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_7F4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

