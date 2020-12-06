-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BlackmarketIndividualRewardItem = registerVal1
function CoD.BlackmarketIndividualRewardItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BlackmarketIndividualRewardItem)
	registerVal2.id = "BlackmarketIndividualRewardItem"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 56.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -0.500000, -0.500000)
	registerVal3:setRGB(0.070000, 0.070000, 0.070000)
	registerVal3:setAlpha(0.800000)
	registerVal2:addElement(registerVal3)
	registerVal2.Bg = registerVal3
	local registerVal4 = CoD.Border.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -1.000000, 0.000000)
	registerVal4:setTopBottom(true, true, -1.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Border = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, -1.000000, 20.500000)
	registerVal5:setAlpha(0.450000)
	registerVal2:addElement(registerVal5)
	registerVal2.TitleBg = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -29.500000, -1.500000)
	registerVal6:setTopBottom(false, true, -31.500000, -3.500000)
	registerVal6:setImage(RegisterImage("uie_t7_icon_blackmarket_cryptokey"))
	registerVal2:addElement(registerVal6)
	registerVal2.CryptoIcon = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 0.500000, 20.500000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setText(Engine.Localize("MENU_EARNED_THIS_GAME"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.Title = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, false, 1.000000, 69.000000)
	registerVal8:setTopBottom(false, true, -30.000000, -6.000000)
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal8:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_C2A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "rewardName", true, __FUNC_C2A_)
	registerVal2:addElement(registerVal8)
	registerVal2.EarnedKeys = registerVal8
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "NoDescription"
	local function __FUNC_CE2_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "rewardDesc")
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_CE2_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	local function __FUNC_D64_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rewardDesc"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rewardDesc", true, __FUNC_D64_)
	local function __FUNC_E84_(arg0)
		arg0.Border:close()
		arg0.EarnedKeys:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E84_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

