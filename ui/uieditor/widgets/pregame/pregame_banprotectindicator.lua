-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Pregame_BanProtectIndicator = registerVal1
function CoD.Pregame_BanProtectIndicator.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_BanProtectIndicator)
	registerVal2.id = "Pregame_BanProtectIndicator"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -13.000000, 14.000000)
	registerVal3:setTopBottom(true, false, 38.000000, 70.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_pregame_protected2"))
	registerVal2:addElement(registerVal3)
	registerVal2.protected = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -13.000000, 14.000000)
	registerVal4:setTopBottom(true, false, 38.000000, 70.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_pregame_forced"))
	registerVal2:addElement(registerVal4)
	registerVal2.banned = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 73.180000, 108.000000)
	registerVal5:setTopBottom(true, false, 54.450000, 56.450000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.line = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.180000, 35.000000)
	registerVal6:setTopBottom(true, false, 54.450000, 56.450000)
	registerVal6:setRGB(1.000000, 0.170000, 0.230000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.line0 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_8F3_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.protected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.banned:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.line:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.line0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_8F3_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_AEA_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.protected:setAlpha(0.850000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.banned:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.line:setRGB(0.660000, 0.850000, 0.160000)
		registerVal2.line:setAlpha(0.800000)
		registerVal2.line:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.line0:setRGB(0.660000, 0.850000, 0.160000)
		registerVal2.line0:setAlpha(0.800000)
		registerVal2.line0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_AEA_
	registerVal7.Protected = registerVal8
	registerVal8 = {}
	local function __FUNC_E24_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.protected:setLeftRight(false, false, -13.000000, 14.000000)
		registerVal2.protected:setTopBottom(true, false, 38.000000, 70.000000)
		registerVal2.protected:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.banned:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.banned:setAlpha(0.850000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.line:setRGB(1.000000, 0.170000, 0.230000)
		registerVal2.line:setAlpha(0.800000)
		registerVal2.line:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.line0:setRGB(1.000000, 0.170000, 0.230000)
		registerVal2.line0:setAlpha(0.800000)
		registerVal2.line0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_E24_
	registerVal7.Banned = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Protected"
	local function __FUNC_1219_(arg0, arg2, arg3)
		return ItemIsProtected(arg0, arg2, arg1)
	end

	registerVal10.condition = __FUNC_1219_
	local registerVal11 = {}
	registerVal11.stateName = "Banned"
	local function __FUNC_1275_(arg0, arg2, arg3)
		return ItemIsBanned(arg0, arg2, arg1)
	end

	registerVal11.condition = __FUNC_1275_
	registerVal9 = {registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.Pregame.Update")
	local function __FUNC_12CE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_12CE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

