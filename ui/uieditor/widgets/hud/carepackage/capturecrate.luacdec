-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local function __FUNC_261_(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal2, "hudItems.captureCrateState")
	if not registerVal3 then
		Engine.CreateModel(registerVal2, "hudItems.captureCrateState")
	end
	registerVal3 = Engine.GetModel(registerVal2, "hudItems.captureCrateTotalTime")
	if not registerVal3 then
		Engine.CreateModel(registerVal2, "hudItems.captureCrateTotalTime")
	end
end

local function __FUNC_3C6_(arg0, arg1)
	local function __FUNC_45D_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			if registerVal1 <= 0.000000 then
				arg0.bar:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				if arg0.bar.updateTimer then
					arg0.bar.updateTimer:close()
					arg0.bar.updateTimer = nil
				else
					arg0.bar.curProgress = 0.000000
					local registerVal3 = Engine.CurrentGameTime()
					arg0.bar.startTime = registerVal3
					local function __FUNC_6FC_()
						local registerVal0 = Engine.CurrentGameTime()
						arg0.bar.curProgress = (arg0.bar.curProgress + (registerVal0 - arg0.bar.startTime))
						arg0.bar:setShaderVector(0.000000, (arg0.bar.curProgress / registerVal1), 0.000000, 0.000000, 0.000000)
						arg0.bar.startTime = registerVal0
					end

					registerVal3 = LUI.UITimer.newElementTimer(16.000000, false, __FUNC_6FC_)
					arg0.bar.updateTimer = registerVal3
					arg0.bar:addElement(arg0.bar.updateTimer)
				end
			end
		end
	end

	arg0:subscribeToGlobalModel(arg1, "HUDItems", "captureCrateTotalTime", __FUNC_45D_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.CaptureCrate = registerVal3
local function __FUNC_870_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_261_ then
		__FUNC_261_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CaptureCrate)
	registerVal2.id = "CaptureCrate"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 3.000000, 296.500000)
	registerVal3:setTopBottom(true, false, 37.000000, 53.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 3.000000, 297.000000)
	registerVal4:setTopBottom(true, false, 37.000000, 53.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ImageBorder = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal5:setTopBottom(false, true, -25.000000, -13.000000)
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal5:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.bar = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 15.000000, 35.000000)
	registerVal6:setText(Engine.Localize("KILLSTREAK_CAPTURING_CRATE"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setLetterSpacing(0.500000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.text = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_1232_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImageBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1232_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1432_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImageBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bar:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.bar:setAlpha(0.950000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(1.000000)
		registerVal2.text:setText(Engine.Localize("KILLSTREAK_CAPTURING_CRATE"))
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1432_
	registerVal7.Capture = registerVal8
	registerVal8 = {}
	local function __FUNC_16F7_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImageBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bar:setRGB(0.710000, 0.180000, 0.130000)
		registerVal2.bar:setAlpha(0.850000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(1.000000)
		registerVal2.text:setText(Engine.Localize("KILLSTREAK_HACKING_CRATE"))
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_16F7_
	registerVal7.Hack = registerVal8
	registerVal8 = {}
	local function __FUNC_19C8_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImageBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.bar:setRGB(0.040000, 0.650000, 0.900000)
		registerVal2.bar:setAlpha(0.850000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.text:setAlpha(1.000000)
		registerVal2.text:setText(Engine.Localize("KILLSTREAK_SUPPLY_DROP_DISARMING_CRATE"))
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_19C8_
	registerVal7.Disarm = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Capture"
	local function __FUNC_1CAA_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.captureCrateState", CoD.SupplyDrop.SUPPLY_DROP_CRATE_STATE_CAPTURE)
	end

	registerVal10.condition = __FUNC_1CAA_
	local registerVal11 = {}
	registerVal11.stateName = "Hack"
	local function __FUNC_1D8F_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.captureCrateState", CoD.SupplyDrop.SUPPLY_DROP_CRATE_STATE_HACK)
	end

	registerVal11.condition = __FUNC_1D8F_
	local registerVal12 = {}
	registerVal12.stateName = "Disarm"
	local function __FUNC_1E70_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.captureCrateState", CoD.SupplyDrop.SUPPLY_DROP_CRATE_STATE_DISARM)
	end

	registerVal12.condition = __FUNC_1E70_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "hudItems.captureCrateState")
	local function __FUNC_1F56_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.captureCrateState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1F56_)
	local function __FUNC_2084_(arg0)
		arg0.FEButtonPanel0:close()
		arg0.ImageBorder:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2084_)
	if __FUNC_3C6_ then
		__FUNC_3C6_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CaptureCrate.new = __FUNC_870_
