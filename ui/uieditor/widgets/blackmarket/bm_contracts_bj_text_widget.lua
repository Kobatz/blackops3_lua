-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_BJ_Text_Widget = registerVal1
function CoD.BM_Contracts_BJ_Text_Widget.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 3.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Center)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_BJ_Text_Widget)
	registerVal2.id = "BM_Contracts_BJ_Text_Widget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 211.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 17.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 3.630000, 58.630000)
	registerVal3:setTopBottom(true, false, 0.000000, 17.000000)
	registerVal3:setRGB(0.950000, 0.550000, 0.150000)
	registerVal3:setText(Engine.Localize("MENU_ACTIVATED_CAPS"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal3:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Activated = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 61.630000, 207.380000)
	registerVal4:setTopBottom(true, false, 0.000000, 17.000000)
	registerVal4:setRGB(0.710000, 0.710000, 0.710000)
	registerVal4:setText(Engine.Localize("MENU_GAME_TIME_REMAINING"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.TimeRemaining0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_AB0_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_AB0_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B12_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_B12_
	registerVal5.Activated = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Activated"
	local function __FUNC_B72_(arg0, arg2, arg3)
		return IsBlackjackContractActive(arg1)
	end

	registerVal8.condition = __FUNC_B72_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

