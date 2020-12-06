-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_BestTime = registerVal1
function CoD.FR_BestTime.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FR_BestTime)
	registerVal2.id = "FR_BestTime"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 137.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 62.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 4.000000, 134.870000)
	registerVal3:setTopBottom(true, false, 0.000000, 30.790000)
	registerVal3:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_besttimebox"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.BestTimeBoxOrange = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 4.000000, 134.870000)
	registerVal4:setTopBottom(true, false, 0.000000, 30.790000)
	registerVal4:setAlpha(0.300000)
	registerVal4:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_besttimebox"))
	registerVal2:addElement(registerVal4)
	registerVal2.BestTimeBoxOrange0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 137.530000)
	registerVal5:setTopBottom(true, false, 16.550000, 62.400000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_besttimebottom"))
	registerVal2:addElement(registerVal5)
	registerVal2.BestTimeBox = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 12.000000, 125.000000)
	registerVal6:setTopBottom(true, false, 3.790000, 25.790000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setText(Engine.Localize("MENU_BEST_TIME"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.BestTimeText = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 16.940000, 118.590000)
	registerVal7:setTopBottom(true, false, 25.790000, 51.790000)
	registerVal7:setText(Engine.Localize("--:--:--"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.BestTimeValueText = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_C52_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BestTimeBoxOrange:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BestTimeBoxOrange0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BestTimeBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BestTimeText:setAlpha(0.000000)
		registerVal2.BestTimeText:setText(Engine.Localize("MENU_BEST_TIME"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BestTimeValueText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_C52_
	local function __FUNC_F46_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.FaultAnim = __FUNC_F46_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_FA6_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BestTimeBoxOrange:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BestTimeBoxOrange0:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BestTimeBox:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BestTimeText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BestTimeValueText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_FA6_
	registerVal8.Visible = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Visible"
	local function __FUNC_1229_(arg0, arg1, arg2)
		return IsFreeRunLobby()
	end

	registerVal11.condition = __FUNC_1229_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "lobbyRoot.lobbyNav")
	local function __FUNC_1278_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_1278_)
	local function __FUNC_13A0_(arg0)
		UpdateState(registerVal2, event)
	end

	registerVal2:subscribeToGlobalModel(arg1, "lobbyRoot", "lobbyNav", __FUNC_13A0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

