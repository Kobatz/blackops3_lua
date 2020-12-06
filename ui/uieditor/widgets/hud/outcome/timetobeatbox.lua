-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TimeToBeatBox = registerVal1
function CoD.TimeToBeatBox.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TimeToBeatBox)
	registerVal2.id = "TimeToBeatBox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 21.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -10.130000, 10.130000)
	registerVal3:setTopBottom(true, false, 0.000000, 7.000000)
	registerVal3:setZRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_waypoints_white_arrow"))
	registerVal2:addElement(registerVal3)
	registerVal2.arrowTExt = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -15.000000, -1.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.WhiteBox = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -128.000000, 128.000000)
	registerVal5:setTopBottom(false, false, -4.500000, 9.500000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setText(Engine.Localize("MENU_OUTCOME_TIMETOBEAT"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setLetterSpacing(1.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_A2E_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 4.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_A2E_)
	local function __FUNC_A95_(arg0)
		local registerVal2 = IsParamModelEqualTo(arg0, true)
		if registerVal2 then
			OverrideWidgetWidth(registerVal2, "40")
		else
			RestoreWidgetWidth(registerVal2)
		end
	end

	registerVal5:linkToElementModel(registerVal2, "isFarAway", true, __FUNC_A95_)
	registerVal2:addElement(registerVal5)
	registerVal2.text = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_B5E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.arrowTExt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WhiteBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B5E_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_D05_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.arrowTExt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WhiteBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D05_
	registerVal6.NoText = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_EAD_(arg0)
		arg0.text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EAD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

