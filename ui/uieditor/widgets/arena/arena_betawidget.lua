-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Arena_BetaWidget = registerVal1
function CoD.Arena_BetaWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Arena_BetaWidget)
	registerVal2.id = "Arena_BetaWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 450.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 63.000000)
	local registerVal3 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 3.000000, 77.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 61.000000)
	registerVal3:setRGB(0.900000, 0.900000, 0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.White = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -25.930000, 119.070000)
	registerVal4:setTopBottom(true, false, -22.000000, 85.000000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 2.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 2.000000, 61.000000)
	registerVal5:setAlpha(0.430000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal5:setShaderVector(0.000000, 0.008929, 0.067797, 0.000000, 0.000000)
	registerVal5:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Border = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 85.770000, 440.770000)
	registerVal6:setTopBottom(true, false, 10.000000, 32.000000)
	registerVal6:setText(Engine.Localize("MENU_BETA_DESC"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_CE9_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_CE9_)
	registerVal2:addElement(registerVal6)
	registerVal2.Desc = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 2.000000, 76.000000)
	registerVal7:setTopBottom(true, false, 20.500000, 45.500000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setText(Engine.Localize("MENU_BETA"))
	registerVal7:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.BETA = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_D49_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.White:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Desc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BETA:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_D49_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_F8F_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.White:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_11D9_(arg0, arg1)
			local function __FUNC_1353_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1049.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.100000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1353_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 949.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1353_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setAlpha(0.100000)
		__FUNC_11D9_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Border:setAlpha(0.430000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Desc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BETA:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_F8F_
	registerVal8.Visible = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Visible"
	local function __FUNC_1505_(arg0, arg1, arg2)
		return IsBetaSeason()
	end

	registerVal11.condition = __FUNC_1505_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_1552_(arg0)
		arg0.White:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1552_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

