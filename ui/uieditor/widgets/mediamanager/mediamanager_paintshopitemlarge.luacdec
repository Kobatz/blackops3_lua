-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local function __FUNC_26B_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "MediaManagerSelectedPaintjob")
	registerVal3 = Engine.CreateModel(registerVal2, "paintjobSlotAndIndex")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MediaManager_PaintshopItemLarge = registerVal2
local function __FUNC_368_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_26B_ then
		__FUNC_26B_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MediaManager_PaintshopItemLarge)
	registerVal2.id = "MediaManager_PaintshopItemLarge"
	registerVal2.soundSet = "Paintshop"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 350.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 290.000000)
	registerVal3:setRGB(0.400000, 0.400000, 0.400000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -2.000000, 352.000000)
	registerVal4:setTopBottom(true, false, -2.000000, 324.500000)
	registerVal4:setAlpha(0.400000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgIdle = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, -28.000000)
	local function __FUNC_D78_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setupWCPaintjobIconExtraCamRender(GetPaintshopExtraCamParameters(arg1, registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "MediaManagerSelectedPaintjob", "paintjobSlotAndIndex", __FUNC_D78_)
	registerVal2:addElement(registerVal5)
	registerVal2.extraCamRender = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal6:setTopBottom(true, false, 290.000000, 322.000000)
	registerVal6:setAlpha(0.800000)
	registerVal2:addElement(registerVal6)
	registerVal2.WeaponNameBg = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 2.500000, 350.000000)
	registerVal7:setTopBottom(true, false, 325.000000, 350.000000)
	registerVal7:setTTF("fonts/default.ttf")
	local function __FUNC_E5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "weaponName", true, __FUNC_E5A_)
	registerVal2:addElement(registerVal7)
	registerVal2.WeaponName = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 2.500000, 350.000000)
	registerVal8:setTopBottom(true, false, 292.000000, 322.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setTTF("fonts/default.ttf")
	local function __FUNC_F12_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "paintjobName", true, __FUNC_F12_)
	registerVal2:addElement(registerVal8)
	registerVal2.PaintjobName = registerVal8
	local registerVal9 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -3.000000, 2.000000)
	registerVal9:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal9:setAlpha(0.850000)
	registerVal2:addElement(registerVal9)
	registerVal2.StartMenuframenoBG0 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_FA4_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.extraCamRender:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.WeaponNameBg:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PaintjobName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.850000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_FA4_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_12D9_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.extraCamRender:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.WeaponNameBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PaintjobName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_12D9_
	registerVal10.Hidden = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Hidden"
	local function __FUNC_15F9_(arg0, arg2, arg3)
		local registerVal3 = MediaManagerSlotsUsed(arg1)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_15F9_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "MediaManager.slotsUsed")
	local function __FUNC_1657_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.slotsUsed"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_1657_)
	local function __FUNC_1780_(arg0)
		arg0.BoxButtonLrgIdle:close()
		arg0.StartMenuframenoBG0:close()
		arg0.extraCamRender:close()
		arg0.WeaponName:close()
		arg0.PaintjobName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1780_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MediaManager_PaintshopItemLarge.new = __FUNC_368_
