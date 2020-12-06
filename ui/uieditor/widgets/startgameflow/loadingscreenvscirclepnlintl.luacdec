-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoadingScreenVSCirclePnlIntl = registerVal1
function CoD.LoadingScreenVSCirclePnlIntl.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadingScreenVSCirclePnlIntl)
	registerVal2.id = "LoadingScreenVSCirclePnlIntl"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 89.880000)
	registerVal3:setTopBottom(true, false, 0.000000, 89.880000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_loadingscreen_factioncircle"))
	registerVal2:addElement(registerVal3)
	registerVal2.VSCircle = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_601_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_601_
	local function __FUNC_662_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.StartLoading = __FUNC_662_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6C2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_6C2_
	registerVal4.CodCaster = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "CodCaster"
	local function __FUNC_722_(arg0, arg2, arg3)
		return IsCodCaster(arg1)
	end

	registerVal7.condition = __FUNC_722_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

