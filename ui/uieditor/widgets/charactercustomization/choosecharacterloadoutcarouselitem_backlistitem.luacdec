-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_HelpItemsLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadoutCarouselItem_BackListItem = registerVal1
function CoD.ChooseCharacterLoadoutCarouselItem_BackListItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadoutCarouselItem_BackListItem)
	registerVal2.id = "ChooseCharacterLoadoutCarouselItem_BackListItem"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 245.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 46.160000, 0.000000)
	registerVal3:setTopBottom(false, false, -13.000000, 13.500000)
	registerVal3:setRGB(0.410000, 0.760000, 0.600000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.GreenBox = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 2.000000, -207.000000)
	registerVal4:setTopBottom(false, false, -13.000000, 13.500000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.GreenBox0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.500000)
	registerVal5:setRGB(0.820000, 0.980000, 1.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal5:setShaderVector(0.000000, 0.100000, 0.131148, 0.000000, 0.000000)
	registerVal5:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.iconBorder = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 45.000000, 1.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 1.000000)
	registerVal6:setRGB(0.820000, 0.980000, 1.000000)
	registerVal6:setAlpha(0.500000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.019901, 0.129032, 0.000000, 0.000000)
	registerVal6:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.textBorder = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 5.000000, 35.000000)
	registerVal7:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal7:setRGB(0.820000, 0.980000, 1.000000)
	local function __FUNC_1056_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "icon", true, __FUNC_1056_)
	registerVal2:addElement(registerVal7)
	registerVal2.icon = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 50.000000, 250.000000)
	registerVal8:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal8:setRGB(1.000000, 0.410000, 0.000000)
	registerVal8:setTTF("fonts/default.ttf")
	local function __FUNC_1108_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "text", true, __FUNC_1108_)
	registerVal2:addElement(registerVal8)
	registerVal2.text = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 42.000000, 248.360000)
	registerVal9:setTopBottom(true, false, -3.000000, 34.000000)
	registerVal9:setRGB(0.820000, 0.980000, 1.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cp_datavault_topbottombarsfull"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal9:setShaderVector(0.000000, 0.038768, 0.216216, 0.000000, 0.000000)
	registerVal9:setupNineSliceShader(8.000000, 8.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.TopBottomLines = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -6.000000, 2.000000)
	registerVal10:setTopBottom(true, false, 11.500000, 19.500000)
	registerVal10:setZoom(10.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_buttonfocusarrow"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Arrow = registerVal10
	local registerVal11 = CoD.FE_HelpItemsLabel.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, 0.000000, 20.000000)
	registerVal11:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal11:setScale(0.700000)
	local function __FUNC_119C_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_119C_)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Visible"
	local function __FUNC_11EE_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isNew")
	end

	registerVal15.condition = __FUNC_11EE_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_125D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isNew"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "isNew", true, __FUNC_125D_)
	registerVal2:addElement(registerVal11)
	registerVal2.FEHelpItemsLabel0 = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_1377_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.GreenBox:setLeftRight(true, true, 47.160000, -1.000000)
		registerVal2.GreenBox:setTopBottom(false, false, -13.000000, 13.500000)
		registerVal2.GreenBox:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.GreenBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GreenBox0:setLeftRight(true, true, 2.000000, -207.000000)
		registerVal2.GreenBox0:setTopBottom(false, false, -13.000000, 13.500000)
		registerVal2.GreenBox0:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.GreenBox0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.text:setRGB(0.820000, 0.980000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setRGB(0.000000, 0.820000, 1.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_1377_
	local function __FUNC_16ED_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1B7A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, 47.160000, -1.000000)
			arg0:setTopBottom(false, false, -13.000000, 13.500000)
			arg0:setRGB(0.820000, 0.980000, 1.000000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GreenBox:setLeftRight(true, true, 47.160000, -1.000000)
		registerVal2.GreenBox:setTopBottom(false, false, -13.000000, 13.500000)
		registerVal2.GreenBox:setRGB(0.820000, 0.980000, 1.000000)
		registerVal2.GreenBox:setAlpha(0.000000)
		__FUNC_1B7A_(registerVal3, {})
		local function __FUNC_1DD0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, true, 2.000000, -207.000000)
			arg0:setTopBottom(false, false, -13.000000, 13.500000)
			arg0:setRGB(0.820000, 0.980000, 1.000000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GreenBox0:setLeftRight(true, true, 2.000000, -207.000000)
		registerVal2.GreenBox0:setTopBottom(false, false, -13.000000, 13.500000)
		registerVal2.GreenBox0:setRGB(0.820000, 0.980000, 1.000000)
		registerVal2.GreenBox0:setAlpha(0.000000)
		__FUNC_1DD0_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.iconBorder:setLeftRight(true, false, 0.000000, 39.000000)
		registerVal2.iconBorder:setTopBottom(true, true, 1.000000, -0.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.text:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_2028_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Arrow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		__FUNC_2028_(registerVal10, {})
	end

	registerVal13.Focus = __FUNC_16ED_
	local function __FUNC_2201_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_2527_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.820000, 0.980000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GreenBox:setRGB(0.820000, 0.980000, 1.000000)
		registerVal2.GreenBox:setAlpha(0.200000)
		__FUNC_2527_(registerVal3, {})
		local function __FUNC_270C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(0.820000, 0.980000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GreenBox0:setRGB(0.820000, 0.980000, 1.000000)
		registerVal2.GreenBox0:setAlpha(0.200000)
		__FUNC_270C_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.iconBorder:setLeftRight(true, false, 0.000000, 39.000000)
		registerVal2.iconBorder:setTopBottom(true, true, 1.000000, -0.500000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_28F4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.text:setRGB(1.000000, 0.410000, 0.000000)
		__FUNC_28F4_(registerVal8, {})
		local function __FUNC_2AAF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Arrow:setAlpha(1.000000)
		__FUNC_2AAF_(registerVal10, {})
	end

	registerVal13.LoseFocus = __FUNC_2201_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	local function __FUNC_2C61_(arg0)
		arg0.FEHelpItemsLabel0:close()
		arg0.icon:close()
		arg0.text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2C61_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

