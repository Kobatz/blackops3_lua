-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_CryptokeyCounterIcon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SpecialContracts_StateIndicator = registerVal1
function CoD.SpecialContracts_StateIndicator.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SpecialContracts_StateIndicator)
	registerVal2.id = "SpecialContracts_StateIndicator"
	registerVal2.soundSet = "Blackmarket_extra"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BM_CryptokeyCounterIcon.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -42.000000, -14.000000)
	registerVal3:setTopBottom(false, true, -25.000000, 3.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.CryptokeyIcon0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -13.000000, 33.000000)
	registerVal4:setTopBottom(false, true, -20.000000, 0.000000)
	registerVal4:setRGB(0.460000, 0.800000, 0.750000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.ContractDesc0 = registerVal4
	local function __FUNC_831_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.ContractDesc0:linkToElementModel(registerVal2, "cost", true, __FUNC_831_)
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8EA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CryptokeyIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ContractDesc0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8EA_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A49_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CryptokeyIcon0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ContractDesc0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A49_
	registerVal5.Cost = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_BA9_(arg0)
		arg0.CryptokeyIcon0:close()
		arg0.ContractDesc0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BA9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

