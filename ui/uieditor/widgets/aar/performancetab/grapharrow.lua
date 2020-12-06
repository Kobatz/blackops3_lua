-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GraphArrow = registerVal1
function CoD.GraphArrow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GraphArrow)
	registerVal2.id = "GraphArrow"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 129.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 33.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 43.720000, 99.000000)
	registerVal3:setTopBottom(true, false, 5.000000, 28.440000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_engame_rightarrowpanel"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -63.000000, 65.000000)
	registerVal4:setTopBottom(false, false, -10.500000, 11.500000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_717_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "AARSPMGraph", "avgSPM", __FUNC_717_)
	registerVal2:addElement(registerVal4)
	registerVal2.Text = registerVal4
	local function __FUNC_7CE_(arg0)
		arg0.Text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7CE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

