-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.onOffImage")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.RestrictedItemWarning")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.equippedScoreStreaksButton = registerVal1
function CoD.equippedScoreStreaksButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.equippedScoreStreaksButton)
	registerVal2.id = "equippedScoreStreaksButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 105.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 96.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setZRot(180.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.backing = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 4.500000, -4.500000)
	registerVal4:setTopBottom(true, true, -5.000000, -5.000000)
	local function __FUNC_DB2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(AppendString("_menu", GetItemImageFromIndex(registerVal1))))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_DB2_)
	registerVal2:addElement(registerVal4)
	registerVal2.image = registerVal4
	local registerVal5 = CoD.onOffImage.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -50.000000, -19.000000)
	registerVal5:setTopBottom(false, false, -15.500000, 15.500000)
	registerVal5:setZRot(90.000000)
	registerVal5.image:setImage(RegisterImage("uie_t7_hud_minimap_arrow"))
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "On"
	local function __FUNC_EBC_(arg0, arg2, arg3)
		local registerVal3 = IsValidScorestreakIndex(registerVal2, arg1)
		if registerVal3 then
			registerVal3 = IsFirstItem(registerVal2)
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_EBC_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_F4A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "itemIndex", true, __FUNC_F4A_)
	registerVal2:addElement(registerVal5)
	registerVal2.arrow = registerVal5
	local registerVal6 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal6:setTopBottom(true, true, -2.000000, 1.000000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.cacButtonBoxLrgInactive0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 3.000000, -2.500000)
	registerVal7:setTopBottom(false, true, -20.000000, -4.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.titleBacking = registerVal7
	registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 6.000000, 61.000000)
	registerVal8:setTopBottom(false, true, -21.000000, -2.000000)
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_1067_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(GetScorestreakMomentumFromIndex(registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_1067_)
	registerVal2:addElement(registerVal8)
	registerVal2.score = registerVal8
	registerVal9 = CoD.RestrictedItemWarning.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 102.500000)
	registerVal9:setTopBottom(true, false, 3.240000, 91.760000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Visible"
	local function __FUNC_114F_(arg0, arg2, arg3)
		return ItemIsBanned(arg0, arg2, arg1)
	end

	registerVal13.condition = __FUNC_114F_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.Pregame.Update")
	local function __FUNC_11A6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_11A6_)
	registerVal2:addElement(registerVal9)
	registerVal2.RestrictedItemWarning = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_12D2_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.cacButtonBoxLrgInactive0:setAlpha(1.000000)
		registerVal2.cacButtonBoxLrgInactive0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.score:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_12D2_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_157D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.score:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_157D_
	registerVal10.Unequipped = registerVal11
	registerVal2.clipsPerState = registerVal10
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "Unequipped"
	local function __FUNC_16CC_(arg0, arg2, arg3)
		local registerVal3 = IsValidScorestreakIndex(registerVal2, arg1)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_16CC_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_1731_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_1731_)
	local function __FUNC_184F_(arg0)
		arg0.arrow:close()
		arg0.cacButtonBoxLrgInactive0:close()
		arg0.RestrictedItemWarning:close()
		arg0.image:close()
		arg0.score:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_184F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

