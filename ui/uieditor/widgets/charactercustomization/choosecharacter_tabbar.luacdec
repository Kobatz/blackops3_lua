-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CharacterCustomization.chooseCharacterLoadoutBumper")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacter_TabBar = registerVal1
function CoD.ChooseCharacter_TabBar.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacter_TabBar)
	registerVal2.id = "ChooseCharacter_TabBar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 816.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 43.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -408.000000, 408.000000)
	registerVal3:setTopBottom(false, false, -19.880000, 20.130000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.CategoryListPanel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 762.000000, 816.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 43.250000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_buttontabidlefull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.148148, 0.184971, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(8.000000, 8.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FETabIdle1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 54.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 43.250000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cac_buttontabidlefull"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal5:setShaderVector(0.000000, 0.148148, 0.184971, 0.000000, 0.000000)
	registerVal5:setupNineSliceShader(8.000000, 8.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FETabIdle = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 54.000000, -54.000000)
	registerVal6:setTopBottom(false, false, -21.630000, 21.630000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_buttontabidlefull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.011299, 0.184971, 0.000000, 0.000000)
	registerVal6:setupNineSliceShader(8.000000, 8.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FETabIdle0 = registerVal6
	local registerVal7 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(false, false, -20.880000, 20.130000)
	registerVal2:addElement(registerVal7)
	registerVal2.FETitleNumBrdr0 = registerVal7
	local registerVal8 = CoD.chooseCharacterLoadoutBumper.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 771.000000, 807.000000)
	registerVal8:setTopBottom(true, false, 9.750000, 34.750000)
	local function __FUNC_1164_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.chooseCharacterLoadoutBumperInternal0.button:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_1164_)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Invisible"
	local function __FUNC_126F_(arg0, arg1, arg2)
		return IsListAtEnd(registerVal2, "characterCarousel", arg2)
	end

	registerVal12.condition = __FUNC_126F_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	if registerVal8.m_eventHandlers.list_focus_changed then
		local function __FUNC_12E0_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal8.m_eventHandlers.list_focus_changed(arg1, arg2)
		end

		registerVal8:registerEventHandler("list_focus_changed", __FUNC_12E0_)
	else
		registerVal8:registerEventHandler("list_focus_changed", LUI.UIElement.updateState)
	end
	registerVal2:addElement(registerVal8)
	registerVal2.rightBumper = registerVal8
	local registerVal9 = CoD.chooseCharacterLoadoutBumper.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 9.000000, 45.000000)
	registerVal9:setTopBottom(true, false, 9.750000, 34.750000)
	local function __FUNC_136B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.chooseCharacterLoadoutBumperInternal0.button:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_136B_)
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Invisible"
	local function __FUNC_1473_(arg0, arg1, arg2)
		return IsListAtStart(registerVal2, "characterCarousel", arg2)
	end

	registerVal13.condition = __FUNC_1473_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	if registerVal9.m_eventHandlers.list_focus_changed then
		local function __FUNC_14E6_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal9.m_eventHandlers.list_focus_changed(arg1, arg2)
		end

		registerVal9:registerEventHandler("list_focus_changed", __FUNC_14E6_)
	else
		registerVal9:registerEventHandler("list_focus_changed", LUI.UIElement.updateState)
	end
	registerVal2:addElement(registerVal9)
	registerVal2.leftBumper = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 289.000000, 529.000000)
	registerVal10:setTopBottom(true, false, 11.500000, 31.500000)
	registerVal10:setRGB(0.660000, 0.730000, 0.750000)
	registerVal10:setText(LocalizeToUpperString("MENU_SPECIALISTS"))
	registerVal10:setTTF("fonts/escom.ttf")
	registerVal10:setLetterSpacing(3.500000)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.TabBarLabel = registerVal10
	registerVal11 = {}
	registerVal12 = {}
	local function __FUNC_156F_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.CategoryListPanel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FETabIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FETabIdle0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FETitleNumBrdr0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.rightBumper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.leftBumper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TabBarLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_156F_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_18E3_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.CategoryListPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FETabIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FETabIdle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.rightBumper:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.leftBumper:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TabBarLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_18E3_
	registerVal11.invisible = registerVal12
	registerVal2.clipsPerState = registerVal11
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "invisible"
	local function __FUNC_1C57_(arg0, arg2, arg3)
		return IsCharacterBlackjack(arg1, arg2)
	end

	registerVal14.condition = __FUNC_1C57_
	registerVal13 = {registerVal14}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_1CB2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, nil, true, __FUNC_1CB2_)
	local function __FUNC_1DBD_(arg0)
		arg0.FETitleNumBrdr0:close()
		arg0.rightBumper:close()
		arg0.leftBumper:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1DBD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

