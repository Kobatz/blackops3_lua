-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.Scorestreaks.scorestreaks_BoxLabel")
require("ui.uieditor.widgets.Barracks.CombatRecordCallingCardDescription")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.HintTextArrow")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CombatRecordCallingCard = registerVal1
function CoD.CombatRecordCallingCard.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordCallingCard)
	registerVal2.id = "CombatRecordCallingCard"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 75.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.013333, 0.053333, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Border = registerVal3
	local registerVal4 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -240.000000, 240.000000)
	registerVal4:setTopBottom(false, false, -60.000000, 60.000000)
	registerVal4.CardIconFrame:setScale(0.630000)
	local function __FUNC_F90_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_F90_)
	registerVal2:addElement(registerVal4)
	registerVal2.CardIcon = registerVal4
	local registerVal5 = CoD.scorestreaks_BoxLabel.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 302.000000)
	registerVal5:setTopBottom(false, true, -19.000000, 0.000000)
	local function __FUNC_FE2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.name:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "title", true, __FUNC_FE2_)
	registerVal2:addElement(registerVal5)
	registerVal2.CallingCardName = registerVal5
	local registerVal6 = CoD.CombatRecordCallingCardDescription.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -150.000000, 150.000000)
	registerVal6:setTopBottom(false, true, 15.000000, 47.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_10B4_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_10B4_)
	local function __FUNC_1106_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.textCenterAlign:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "description", true, __FUNC_1106_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Invisible"
	local function __FUNC_11E3_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "description")
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_11E3_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_1265_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "description"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "description", true, __FUNC_1265_)
	registerVal2:addElement(registerVal6)
	registerVal2.CombatRecordCallingCardDescription = registerVal6
	local registerVal7 = CoD.HintTextArrow.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -5.000000, 5.000000)
	registerVal7:setTopBottom(false, true, 5.000000, 15.000000)
	registerVal7:setAlpha(0.000000)
	local function __FUNC_1385_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_1385_)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "NoHintText"
	local function __FUNC_13D6_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "description", "")
	end

	registerVal11.condition = __FUNC_13D6_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_145C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "description"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "description", true, __FUNC_145C_)
	registerVal2:addElement(registerVal7)
	registerVal2.hintArrow = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal8:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.TopFocusBar = registerVal8
	registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal9:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.BottomFocusBar = registerVal9
	registerVal10 = {}
	registerVal11 = {}
	local function __FUNC_157D_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal4:completeAnimation()
		registerVal2.CardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCardName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CombatRecordCallingCardDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TopFocusBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BottomFocusBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_157D_
	local function __FUNC_185A_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.CombatRecordCallingCardDescription:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TopFocusBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BottomFocusBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_185A_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1A7E_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.Border:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CardIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCardName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CombatRecordCallingCardDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TopFocusBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BottomFocusBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1A7E_
	local function __FUNC_1DAE_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.CombatRecordCallingCardDescription:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TopFocusBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BottomFocusBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_1DAE_
	registerVal10.EmptyCallingCard = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "EmptyCallingCard"
	local function __FUNC_1FD7_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "backgroundId", 0.000000)
	end

	registerVal13.condition = __FUNC_1FD7_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_2058_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "backgroundId"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "backgroundId", true, __FUNC_2058_)
	local function __FUNC_217A_(arg0)
		arg0.CardIcon:close()
		arg0.CallingCardName:close()
		arg0.CombatRecordCallingCardDescription:close()
		arg0.hintArrow:close()
		arg0.TopFocusBar:close()
		arg0.BottomFocusBar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_217A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

