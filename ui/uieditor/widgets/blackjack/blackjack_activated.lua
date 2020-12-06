-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BlackJack_Activated = registerVal1
function CoD.BlackJack_Activated.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BlackJack_Activated)
	registerVal2.id = "BlackJack_Activated"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 235.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 47.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 235.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 47.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_character_activited"))
	registerVal2:addElement(registerVal3)
	registerVal2.ActivatedBacker = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 32.370000, 207.730000)
	registerVal4:setTopBottom(true, false, 25.000000, 41.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_A0E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(LocalizeIntoString("MPUI_BM_CONTRACTS_TIME_REMAINING", NumberAsTimeNoMS(registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "activeTimeRemaining", true, __FUNC_A0E_)
	registerVal2:addElement(registerVal4)
	registerVal2.timeRemaining = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 32.370000, 213.500000)
	registerVal5:setTopBottom(true, false, 7.000000, 27.000000)
	registerVal5:setRGB(0.950000, 0.550000, 0.150000)
	registerVal5:setText(Engine.Localize("MENU_ACTIVATED_CAPS"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setLetterSpacing(0.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.Activited = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_B14_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_B14_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_B76_(arg0)
		arg0.timeRemaining:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B76_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

