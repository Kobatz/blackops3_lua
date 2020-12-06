-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TacRigUpgradeModelWidget = registerVal1
function CoD.TacRigUpgradeModelWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TacRigUpgradeModelWidget)
	registerVal2.id = "TacRigUpgradeModelWidget"
	registerVal2.soundSet = "CAC_LethalGrenade"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactiveStroke = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgInactive = registerVal5
	local registerVal6 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal6:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BoxButtonLrgIdle = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setAlpha(0.250000)
	local function __FUNC_1164_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "image", true, __FUNC_1164_)
	registerVal2:addElement(registerVal7)
	registerVal2.UpgradeImage = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -32.000000, 0.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_hud_cac_lock_64"))
	registerVal2:addElement(registerVal8)
	registerVal2.LockImage = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, true, -20.000000, 0.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_img_t7_menu_cacselection_icontokenlarge_cp"))
	registerVal2:addElement(registerVal9)
	registerVal2.TokenImage = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -15.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 15.000000)
	registerVal10:setRGB(0.550000, 0.770000, 0.250000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal10)
	registerVal2.EquippedIcon = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal11:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarT = registerVal11
	local registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal12:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarB = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 9.500000, 22.500000)
	registerVal13:setTopBottom(true, false, 6.500000, 19.500000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.DebugImage = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1218_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal7:completeAnimation()
		registerVal2.UpgradeImage:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.TokenImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.EquippedIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.EquippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DebugImage:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1218_
	local function __FUNC_151A_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal7:completeAnimation()
		registerVal2.UpgradeImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.TokenImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal15.Focus = __FUNC_151A_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_172C_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal7:completeAnimation()
		registerVal2.UpgradeImage:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LockImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.EquippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DebugImage:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_172C_
	local function __FUNC_1A0E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal7:completeAnimation()
		registerVal2.UpgradeImage:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LockImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.EquippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DebugImage:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.Focus = __FUNC_1A0E_
	registerVal14.Locked = registerVal15
	registerVal15 = {}
	local function __FUNC_1CEE_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal7:completeAnimation()
		registerVal2.UpgradeImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LockImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TokenImage:setLeftRight(false, true, -20.000000, 0.000000)
		registerVal2.TokenImage:setTopBottom(true, false, 0.000000, 20.000000)
		registerVal2.TokenImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.EquippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DebugImage:setRGB(0.000000, 1.000000, 0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1CEE_
	local function __FUNC_20A7_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal7:completeAnimation()
		registerVal2.UpgradeImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LockImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TokenImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.EquippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DebugImage:setRGB(0.000000, 1.000000, 0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.Focus = __FUNC_20A7_
	registerVal14.NotPurchased = registerVal15
	registerVal15 = {}
	local function __FUNC_23D9_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.UpgradeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.TokenImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal15.DefaultClip = __FUNC_23D9_
	registerVal14.NotVisible = registerVal15
	registerVal15 = {}
	local function __FUNC_2640_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal7:completeAnimation()
		registerVal2.UpgradeImage:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LockImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.EquippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DebugImage:setRGB(0.000000, 0.000000, 1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_2640_
	local function __FUNC_291D_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal7:completeAnimation()
		registerVal2.UpgradeImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LockImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.EquippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DebugImage:setRGB(0.000000, 0.000000, 1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.Focus = __FUNC_291D_
	registerVal14.Available = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Locked"
	local function __FUNC_2BF9_(arg0, arg2, arg3)
		return IsCACItemLocked(arg0, arg2, arg1)
	end

	registerVal17.condition = __FUNC_2BF9_
	local registerVal18 = {}
	registerVal18.stateName = "NotPurchased"
	local function __FUNC_2C55_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemPurchased(arg2, arg1)
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_2C55_
	local registerVal19 = {}
	registerVal19.stateName = "NotVisible"
	local function __FUNC_2CB4_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal19.condition = __FUNC_2CB4_
	local registerVal20 = {}
	registerVal20.stateName = "Available"
	local function __FUNC_2D01_(arg0, arg2, arg3)
		return IsCACItemPurchased(arg2, arg1)
	end

	registerVal20.condition = __FUNC_2D01_
	registerVal16 = {registerVal17, registerVal18, registerVal19, registerVal20}
	registerVal2:mergeStateConditions(registerVal16)
	local function __FUNC_2D5C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_2D5C_)
	local function __FUNC_2E7B_(arg0)
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactiveStroke:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.UpgradeImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2E7B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

