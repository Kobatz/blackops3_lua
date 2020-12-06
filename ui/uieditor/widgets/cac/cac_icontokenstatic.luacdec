-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_IconTokenStatic = registerVal1
function CoD.cac_IconTokenStatic.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_IconTokenStatic)
	registerVal2.id = "cac_IconTokenStatic"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_icontokenbox"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.imgTokenBox = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.430000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_icontoken"))
	registerVal2:addElement(registerVal4)
	registerVal2.imgIconTokenMult = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cac_icontoken_cp"))
	registerVal2:addElement(registerVal5)
	registerVal2.imgIconTokenMultCP = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setAlpha(0.920000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_icontoken"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.imgIconToken = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_icontoken_cp"))
	registerVal2:addElement(registerVal7)
	registerVal2.imgIconTokenCP = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 12.700000)
	registerVal8:setTopBottom(true, true, -2.000000, 10.700000)
	registerVal8:setRGB(1.000000, 0.480000, 0.000000)
	registerVal8:setAlpha(RandomAddPercent(-15.000000, 0.260000))
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.glow = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_BA1_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.imgTokenBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.imgIconTokenMult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.imgIconTokenMultCP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.imgIconToken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.imgIconTokenCP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glow:setAlpha(RandomAddPercent(-15.000000, 0.000000))
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_BA1_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_E94_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.imgTokenBox:setLeftRight(true, true, -1.890000, 3.890000)
		registerVal2.imgTokenBox:setTopBottom(true, true, -4.000000, 4.000000)
		registerVal2.imgTokenBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.imgIconTokenMult:setAlpha(0.430000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.imgIconTokenMultCP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.imgIconToken:setAlpha(0.920000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.imgIconTokenCP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_1252_(arg0, arg1)
			local function __FUNC_13A8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(RandomAddPercent(-15.000000, 0.260000))
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_13A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A8_)
		end

		registerVal8:completeAnimation()
		registerVal2.glow:setAlpha(RandomAddPercent(-15.000000, 0.260000))
		__FUNC_1252_(registerVal8, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal10.DefaultClip = __FUNC_E94_
	registerVal9.Visible = registerVal10
	registerVal10 = {}
	local function __FUNC_1588_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.imgTokenBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.imgIconTokenMult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.imgIconTokenMultCP:setAlpha(0.430000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.imgIconToken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.imgIconTokenCP:setAlpha(0.920000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_18BB_(arg0, arg1)
			local function __FUNC_1A10_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(RandomAddPercent(-15.000000, 0.260000))
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1A10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A10_)
		end

		registerVal8:completeAnimation()
		registerVal2.glow:setAlpha(RandomAddPercent(-15.000000, 0.260000))
		__FUNC_18BB_(registerVal8, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal10.DefaultClip = __FUNC_1588_
	registerVal9.VisibleCP = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Visible"
	local function __FUNC_1BF0_(arg0, arg1, arg2)
		local registerVal3 = IsCampaign()
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_1BF0_
	local registerVal13 = {}
	registerVal13.stateName = "VisibleCP"
	local function __FUNC_1C40_(arg0, arg1, arg2)
		return IsCampaign()
	end

	registerVal13.condition = __FUNC_1C40_
	registerVal11 = {registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "lobbyRoot.lobbyNav")
	local function __FUNC_1C8C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_1C8C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

