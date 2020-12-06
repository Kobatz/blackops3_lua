-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_2lines = registerVal1
function CoD.cac_2lines.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_2lines)
	registerVal2.id = "cac_2lines"
	registerVal2.soundSet = "CAC_Overcapacity"
	registerVal2:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 37.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal3:setTopBottom(false, false, -18.380000, -14.880000)
	registerVal3:setZRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image40 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal4:setTopBottom(false, false, 14.880000, 18.380000)
	registerVal4:setZRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image400 = registerVal4
	local function __FUNC_652_(arg0, arg1)
		local registerVal2 = arg0.itemList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_652_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

