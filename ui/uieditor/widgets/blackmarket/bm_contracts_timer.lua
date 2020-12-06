-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_timer = registerVal1
function CoD.BM_Contracts_timer.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 9.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_timer)
	registerVal2.id = "BM_Contracts_timer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 19.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 68.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal3:setRGB(0.940000, 0.890000, 0.590000)
	registerVal3:setText(Engine.Localize("MPUI_BM_CONTRACT_WEEKLY"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal3:setShaderVector(0.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setLetterSpacing(2.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Weekly = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 77.000000, 166.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 19.000000)
	registerVal4:setRGB(0.460000, 0.800000, 0.750000)
	registerVal4:setText(Engine.Localize("3 DAYS- 14:15:20"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.Timer = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_988_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.Timer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_988_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A80_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.Timer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A80_
	registerVal5.HideTimer = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "HideTimer"
	local function __FUNC_B7D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_B7D_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

