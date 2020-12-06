-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Lobby.Common.FE_ListHeaderGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Leaderboard_StatWidget = registerVal1
function CoD.Leaderboard_StatWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Leaderboard_StatWidget)
	registerVal2.id = "Leaderboard_StatWidget"
	registerVal2.soundSet = "CAC_PrimaryWeapon"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 85.000000)
	local registerVal3 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 5.000000, 95.000000)
	registerVal3:setTopBottom(false, true, -48.000000, -3.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ImageBorder0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 9.000000, 91.000000)
	registerVal4:setTopBottom(false, true, -40.000000, -15.000000)
	registerVal4:setRGB(0.580000, 0.640000, 0.650000)
	registerVal4:setText("")
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.StatText = registerVal4
	local registerVal5 = CoD.FE_ListHeaderGlow.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 5.000000, 95.000000)
	registerVal5:setTopBottom(true, false, 3.000000, 34.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FEListHeaderGlow0 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 5.000000, 95.000000)
	registerVal6:setTopBottom(true, false, 11.500000, 25.500000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setText("")
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(1.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_C01_(arg0, arg1)
		local registerVal2 = IsSelfInState(registerVal2, "Hidden")
		registerVal2 = IsTextWrapping(registerVal2, arg0)
		if not registerVal2 and registerVal2 then
			SetState(registerVal2, "TitleWrapping")
		else
			registerVal2 = IsSelfInState(registerVal2, "Hidden")
			registerVal2 = IsTextWrapping(registerVal2, arg0)
			if not registerVal2 and not registerVal2 then
				SetState(registerVal2, "DefaultState")
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_C01_)
	registerVal2:addElement(registerVal6)
	registerVal2.btnDisplayTextStroke = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_D2E_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.ImageBorder0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.StatText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEListHeaderGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.btnDisplayTextStroke:setLeftRight(true, false, 5.000000, 95.000000)
		registerVal2.btnDisplayTextStroke:setTopBottom(true, false, 11.500000, 25.500000)
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_D2E_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_FD7_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.btnDisplayTextStroke:setLeftRight(true, false, 5.000000, 95.000000)
		registerVal2.btnDisplayTextStroke:setTopBottom(true, false, 4.500000, 18.500000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_FD7_
	registerVal7.TitleWrapping = registerVal8
	registerVal8 = {}
	local function __FUNC_113D_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.ImageBorder0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.StatText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEListHeaderGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_113D_
	registerVal7.Hidden = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "TitleWrapping"
	local function __FUNC_1357_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_1357_
	local registerVal11 = {}
	registerVal11.stateName = "Hidden"
	local function __FUNC_13A1_(arg0, arg1, arg2)
		return true
	end

	registerVal11.condition = __FUNC_13A1_
	registerVal9 = {registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_13D4_(arg0)
		arg0.ImageBorder0:close()
		arg0.FEListHeaderGlow0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13D4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

