-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C9_(arg0, arg1)
	local registerVal2 = CoD.FileshareUtility.GetCurrentCategory()
	local registerVal3 = Engine.MediaManagerGetQuota(arg1, registerVal2)
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.CreateModel(registerVal5, "MediaManager")
	registerVal5 = Engine.CreateModel(registerVal4, "slotsAvailable")
	if registerVal3 ~= nil then
		Engine.SetModelValue(registerVal5, registerVal3.categorySlotsAvailable)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.LocalMediaSlotsAvailable = registerVal2
local function __FUNC_3A8_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_1C9_ then
		__FUNC_1C9_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LocalMediaSlotsAvailable)
	registerVal2.id = "LocalMediaSlotsAvailable"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 57.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal3:setRGB(1.000000, 0.220000, 0.220000)
	local function __FUNC_E9A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setAlpha(FileshareGetSlotCountLowBGAlpha(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "FileshareRoot", "currentCategoryQuota.categorySlotsAvailable", __FUNC_E9A_)
	registerVal2:addElement(registerVal3)
	registerVal2.CountLowBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 57.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 30.000000)
	local function __FUNC_F5E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setAlpha(FileshareGetSlotCountBGAlpha(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "FileshareRoot", "currentCategoryQuota.categorySlotsAvailable", __FUNC_F5E_)
	registerVal2:addElement(registerVal4)
	registerVal2.CountBG = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 57.000000, 237.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.TextBG = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 58.990000, 235.010000)
	registerVal6:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal6:setTTF("fonts/default.ttf")
	local function __FUNC_101F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(FileshareGetSlotString(registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "MediaManager", "slotsAvailable", __FUNC_101F_)
	registerVal2:addElement(registerVal6)
	registerVal2.LblSlotsAvailable = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 0.000000, 57.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_10FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "MediaManager", "slotsAvailable", __FUNC_10FE_)
	local function __FUNC_11B6_(arg0, arg2)
		local registerVal3 = IsGlobalModelValueEqualTo(arg0, arg1, "fileshareRoot.currentCategory", "emblem")
		if registerVal3 then
			UpdateSlotCountText(registerVal2, arg0, arg1, Enum.StorageFileType.STORAGE_EMBLEMS)
		end
		if not nil then
			registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("menu_loaded", __FUNC_11B6_)
	registerVal2:addElement(registerVal7)
	registerVal2.TxtSlots = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 290.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.WaitingBG = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 2.650000, 230.650000)
	registerVal9:setTopBottom(true, false, 2.500000, 27.500000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setText(Engine.Localize("MENU_FILESHARE_WAITING"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal9)
	registerVal2.LblWaiting = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1328_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal8:completeAnimation()
		registerVal2.WaitingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LblWaiting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1328_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1481_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal8:completeAnimation()
		registerVal2.WaitingBG:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LblWaiting:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1481_
	registerVal10.Waiting = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Waiting"
	local function __FUNC_15D9_(arg0, arg2, arg3)
		local registerVal3 = FileshareIsReady(arg1)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_15D9_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "fileshareRoot.ready")
	local function __FUNC_1632_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.ready"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_1632_)
	local function __FUNC_1759_(arg0)
		arg0.CountLowBG:close()
		arg0.CountBG:close()
		arg0.LblSlotsAvailable:close()
		arg0.TxtSlots:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1759_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.LocalMediaSlotsAvailable.new = __FUNC_3A8_
