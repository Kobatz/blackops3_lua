-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.CodCasterLoadoutItem")
local function __FUNC_510_(arg0)
	local registerVal2 = arg0:getParent()
	if arg0.hintStrings and 0.000000 < # and registerVal2.CodCasterLoadoutItemHintText then
		registerVal2.CodCasterLoadoutItemHintText.text.hintStringIndex = 1.000000
		registerVal2.CodCasterLoadoutItemHintText.text:setText(arg0.hintStrings[1.000000])
		if #registerVal2.CodCasterLoadoutItemHintText.text:setText == 1.000000 then
			registerVal2.CodCasterLoadoutItemHintText:registerEventHandler("clip_over", nil)
			registerVal2.CodCasterLoadoutItemHintText:playClip("HintSingle")
		else
			registerVal2.CodCasterLoadoutItemHintText:playClip("HintMulti")
			local function __FUNC_74A_(arg0, arg1)
				if arg0.text.hintStringIndex == #arg0.hintStrings then
					arg0.text.hintStringIndex = 1.000000
				else
					arg0.text.hintStringIndex = (arg0.text.hintStringIndex + 1.000000)
				end
				registerVal2.CodCasterLoadoutItemHintText.text:setText(arg0.hintStrings[arg0.text.hintStringIndex])
				registerVal2.CodCasterLoadoutItemHintText:playClip("HintMulti")
			end

			registerVal2.CodCasterLoadoutItemHintText:registerEventHandler("clip_over", __FUNC_74A_)
		end
	end
end

local function __FUNC_8CC_(arg0)
	local registerVal1 = arg0:hasClip("Active")
	if arg0 and registerVal1 then
		registerVal1, registerVal2, registerVal3, registerVal4 = arg0:getLocalLeftRight()
		if registerVal3 >= registerVal4 then
		end
		return true
	end
	return false
end

local function __FUNC_974_(arg0, arg1)
	if arg0.activeWidget == nil then
		return 
	end
	local registerVal3 = arg0.activeWidget:getPreviousSibling()
	arg0.activeWidget = registerVal3
	registerVal3 = __FUNC_8CC_(arg0.activeWidget)
	registerVal3 = arg0.activeWidget:getPreviousSibling()
	arg0.activeWidget = registerVal3
	registerVal3 = __FUNC_8CC_(arg0.activeWidget)
	if arg0.activeWidget ~= nil and registerVal3 then
		local registerVal5 = {}
		registerVal5.name = "gain_active"
		registerVal5.controller = arg1
		arg0.activeWidget:processEvent(registerVal5)
		__FUNC_510_(arg0.activeWidget.CodCasterLoadoutSubGrid)
	end
	if arg0.activeWidget ~= nil then
		registerVal3 = __FUNC_8CC_(arg0.activeWidget)
		if arg0.activeWidget == nil or registerVal3 then
			registerVal5 = {}
			registerVal5.name = "lose_active"
			registerVal5.controller = arg1
			arg0.activeWidget:processEvent(registerVal5)
		end
	end
end

local function __FUNC_B9A_(arg0, arg1)
	if arg0.activeWidget == nil then
		arg0.activeWidget = arg0.SpecialistWeaponOrAbility
	else
		local registerVal3 = arg0.activeWidget:getNextSibling()
		arg0.activeWidget = registerVal3
	end
	registerVal3 = __FUNC_8CC_(arg0.activeWidget)
	registerVal3 = arg0.activeWidget:getNextSibling()
	arg0.activeWidget = registerVal3
	registerVal3 = __FUNC_8CC_(arg0.activeWidget)
	if arg0.activeWidget ~= nil and registerVal3 then
		local registerVal5 = {}
		registerVal5.name = "gain_active"
		registerVal5.controller = arg1
		arg0.activeWidget:processEvent(registerVal5)
		__FUNC_510_(arg0.activeWidget.CodCasterLoadoutSubGrid)
		if arg0.activeWidget ~= nil then
			registerVal5 = {}
			registerVal5.name = "lose_active"
			registerVal5.controller = arg1
			arg0.activeWidget:processEvent(registerVal5)
		else
			arg0.activeWidget = arg0.activeWidget
		end
	end
end

local function __FUNC_DC5_(arg0, arg1, arg2)
	local function __FUNC_FAB_(arg3)
		local function __FUNC_11BF_(arg1, arg2, arg3, arg4)
			local registerVal4 = arg2:AcceptGamePadButtonInputFromModelCallback(arg3)
			if not arg2.m_disableNavigation and registerVal4 then
				__FUNC_974_(arg0, arg3)
			end
		end

		arg2:AddButtonCallbackFunction(arg3, arg1, Enum.LUIButton.LUI_KEY_LEFT, nil, __FUNC_11BF_, AlwaysFalse, false)
		local function __FUNC_1274_(arg1, arg2, arg3, arg4)
			local registerVal4 = arg2:AcceptGamePadButtonInputFromModelCallback(arg3)
			if not arg2.m_disableNavigation and registerVal4 then
				__FUNC_B9A_(arg0, arg3)
			end
		end

		arg2:AddButtonCallbackFunction(arg3, arg1, Enum.LUIButton.LUI_KEY_RIGHT, nil, __FUNC_1274_, AlwaysFalse, false)
		local function __FUNC_132C_(arg1, arg2, arg3, arg4)
			if not arg2.m_disableNavigation then
				__FUNC_974_(arg0, arg3)
			end
		end

		arg2:AddButtonCallbackFunction(arg3, arg1, Enum.LUIButton.LUI_KEY_NONE, "LEFTARROW", __FUNC_132C_, nil, false, true)
		local function __FUNC_139D_(arg1, arg2, arg3, arg4)
			if not arg2.m_disableNavigation then
				__FUNC_B9A_(arg0, arg3)
			end
		end

		arg2:AddButtonCallbackFunction(arg3, arg1, Enum.LUIButton.LUI_KEY_NONE, "RIGHTARROW", __FUNC_139D_, nil, false, true)
	end

	arg2.PostCodCasterLoad = __FUNC_FAB_
	arg0.m_ownerController = arg1
	__FUNC_B9A_(arg0, arg1)
	local registerVal3 = arg0:getFirstChild()
	local registerVal4 = registerVal3.CodCasterLoadoutSubGrid:getParent()
	if registerVal3.CodCasterLoadoutSubGrid and registerVal4 then
		local registerVal5, registerVal6, registerVal7, registerVal8 = registerVal3.CodCasterLoadoutSubGrid:getLocalLeftRight()
		local registerVal9 = registerVal4:hasClip("Active")
		if registerVal9 then
			registerVal4:setWidth((registerVal8 - registerVal7))
		else
			registerVal4.savedWidth = (registerVal8 - registerVal7)
		end
	end
	registerVal4 = registerVal3:getNextSibling()
end

local function __FUNC_140D_(arg0, arg1)
	arg1:updateDataSource()
	local registerVal2 = arg1:getParent()
	if registerVal2 then
		local registerVal3, registerVal4, registerVal5, registerVal6 = arg1:getLocalLeftRight()
		local registerVal7 = registerVal2:hasClip("Active")
		if registerVal7 then
			registerVal2:setWidth((registerVal6 - registerVal5))
		else
			registerVal2.savedWidth = (registerVal6 - registerVal5)
		end
	end
	registerVal3 = arg1:getParent()
	if registerVal3 then
		registerVal4 = registerVal3:getParent()
	end
	registerVal4 = __FUNC_8CC_(registerVal4.activeWidget)
	__FUNC_B9A_(registerVal4, arg0)
	registerVal4 = __FUNC_8CC_(registerVal4.activeWidget)
	if registerVal4 and registerVal4.activeWidget and not registerVal4 and not registerVal4 then
		__FUNC_974_(registerVal4, arg0)
	end
end

local function __FUNC_15B9_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, "playerAbilities.playerGadget3.imageAvailable")
	if registerVal2 ~= nil and arg1.hasSpecialistSubscription ~= true then
		local function __FUNC_1858_()
			__FUNC_140D_(arg0, arg1)
		end

		arg1:subscribeToModel(registerVal2, __FUNC_1858_, false)
	end
	registerVal3 = {}
	local registerVal4 = {}
	local registerVal5 = {}
	local registerVal6 = Engine.GetModelValue(registerVal2)
	registerVal5.image = registerVal6
	registerVal4.models = registerVal5
	registerVal3 = {registerVal4}
	arg1.hasSpecialistSubscription = true
	registerVal5 = Engine.GetModelForController(arg0)
	registerVal4 = CoD.SafeGetModelValue(registerVal5, "playerAbilities.playerGadget3.name")
	registerVal5 = {}
	registerVal6 = Engine.Localize(registerVal4)
	registerVal5 = {registerVal6}
	arg1.hintStrings = registerVal5
	__FUNC_510_(arg1)
	return registerVal3
end

local function __FUNC_1894_(arg0, arg1, arg2)
	local registerVal5 = Engine.GetModelForController(arg0)
	local registerVal4 = Engine.GetModel(registerVal5, (arg2 .. ".item"))
	registerVal5 = Engine.GetModelValue(registerVal4)
	local function __FUNC_1B8D_(arg1, arg3)
		local registerVal2 = string.len(arg3)
		if arg3 and 3.000000 < registerVal2 then
			Engine.Localize(CoD.CACUtility.GetNameForStatsTableImage(string.sub(arg3, 1.000000, -4.000000)))
			{} = {}
			arg1.hintStrings = {}
			local registerVal4 = CoD.IsShoutcaster(arg0)
			if registerVal4 then
			end
			for index4=0.000000, 5.000000, 1.000000 do
				local registerVal9 = Engine.GetModelForController(arg0)
				local registerVal8 = Engine.GetModel(registerVal9, (arg2 .. ".attachment" .. index4))
				registerVal9 = Engine.GetModelValue(registerVal8)
				if registerVal9 and registerVal9 ~= "" then
					if nil == nil then
						local registerVal10 = Engine.Localize(registerVal9)
					else
						local registerVal12 = Engine.Localize(registerVal9)
					end
				end
			end
			if (registerVal10 .. " + " .. registerVal12) then
				table.insert(arg1.hintStrings, Engine.Localize((registerVal10 .. " + " .. registerVal12)))
			end
		end
		__FUNC_510_(arg1)
	end

	if registerVal4 and not arg1.hasSubscription then
		local function __FUNC_1EF2_(arg2)
			__FUNC_140D_(arg0, arg1)
			__FUNC_1B8D_(arg1, Engine.GetModelValue(arg2))
		end

		arg1:subscribeToModel(registerVal4, __FUNC_1EF2_, false)
		local registerVal8 = CoD.IsShoutcaster(arg0)
		if registerVal8 then
		end
		for index8=0.000000, 5.000000, 1.000000 do
			local registerVal13 = Engine.GetModelForController(arg0)
			local registerVal12 = Engine.GetModel(registerVal13, (arg2 .. ".attachment" .. index8))
			if registerVal12 then
				local function __FUNC_1F77_(arg0)
					__FUNC_1B8D_(arg1, Engine.GetModelValue(registerVal4))
				end

				arg1:subscribeToModel(registerVal12, __FUNC_1F77_, false)
			end
		end
		arg1.hasSubscription = true
	end
	if registerVal5 and registerVal5 ~= "" then
		local registerVal9 = {}
		local registerVal10 = {}
		registerVal10.image = registerVal5
		registerVal9.models = registerVal10
		table.insert({}, registerVal9)
	end
	__FUNC_1B8D_(arg1, registerVal5)
	return {}
end

local function __FUNC_1FEB_(arg0, arg1)
	return __FUNC_1894_(arg0, arg1, "primaryWeapon")
end

local function __FUNC_2043_(arg0, arg1)
	return __FUNC_1894_(arg0, arg1, "secondaryWeapon")
end

local function __FUNC_209D_(arg0, arg1, arg2)
	arg1.hintStrings = {}
	local registerVal5 = Engine.GetModelForController(arg0)
	local registerVal4 = Engine.GetModel(registerVal5, arg2)
	if registerVal4 ~= nil then
		registerVal5 = Engine.GetModelValue(registerVal4)
		local registerVal6 = CoD.CACUtility.GetIdForItemRef(registerVal5)
		if registerVal6 ~= nil and registerVal6 ~= "null_offhand_primary" and registerVal6 ~= "null_offhand_secondary" then
			local registerVal9 = {}
			local registerVal10 = {}
			local registerVal11 = CoD.CACUtility.GetImageForItemRef(registerVal5)
			registerVal10.image = registerVal11
			registerVal9.models = registerVal10
			table.insert({}, registerVal9)
			table.insert(arg1.hintStrings, Engine.Localize(CoD.CACUtility.GetNameForItemRef(registerVal5)))
		end
		if not arg1.hasEquipmentSubscriptions then
			local function __FUNC_23F4_()
				__FUNC_140D_(arg0, arg1)
			end

			arg1:subscribeToModel(registerVal4, __FUNC_23F4_, false)
		end
	end
	arg1.hasEquipmentSubscriptions = true
	return {}
end

local function __FUNC_2430_(arg0, arg1)
	return __FUNC_209D_(arg0, arg1, "currentPrimaryOffhand.primaryOffhandRef")
end

local function __FUNC_24A5_(arg0, arg1)
	return __FUNC_209D_(arg0, arg1, "currentSecondaryOffhand.secondaryOffhandRef")
end

local function __FUNC_251D_(arg0, arg1)
	arg1.hintStrings = {}
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, "perks")
	if registerVal3 then
		for index4=0.000000, (CoD.CACUtility.maxPerkCategories - 1.000000), 1.000000 do
			local registerVal8 = Engine.GetModel(registerVal3, ("perk" .. index4 .. "_count"))
			local registerVal9 = Engine.GetModelValue(registerVal8)
			if not registerVal9 then
			end
			for index10=0.000000, (CoD.CACUtility.maxPerksInEachCategory - 1.000000), 1.000000 do
				local registerVal14 = Engine.GetModel(registerVal3, ("perk" .. index4 .. "_" .. index10))
				local registerVal15 = Engine.GetModel(registerVal14, "image")
				local registerVal16 = Engine.GetModel(registerVal14, "name")
				if index10 < 0.000000 then
					local registerVal19 = {}
					local registerVal20 = {}
					local registerVal21 = Engine.GetModelValue(registerVal15)
					registerVal20.image = registerVal21
					registerVal19.models = registerVal20
					table.insert({}, registerVal19)
					table.insert(arg1.hintStrings, Engine.GetModelValue(registerVal16))
				end
			end
		end
		if arg1.hasPerkSubscriptions ~= true then
			registerVal4 = Engine.GetModel(registerVal3, "anyPerkChanged")
			local function __FUNC_2929_()
				__FUNC_140D_(arg0, arg1)
			end

			arg1:subscribeToModel(registerVal4, __FUNC_2929_, false)
			arg1.hasPerkSubscriptions = true
		end
	end
	__FUNC_510_(arg1)
	return {}
end

local function __FUNC_2964_(arg0, arg1)
	arg1.hintStrings = {}
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, "bonuscards")
	if registerVal3 then
		for index4=0.000000, 2.000000, 1.000000 do
			local registerVal8 = Engine.GetModel(registerVal3, ("card" .. index4))
			if registerVal8 ~= nil and arg1.hasBonusCardSubscriptions ~= true then
				local function __FUNC_2CB6_()
					__FUNC_140D_(arg0, arg1)
				end

				arg1:subscribeToModel(registerVal8, __FUNC_2CB6_, false)
			end
			local registerVal9 = Engine.GetModelValue(registerVal8)
			if registerVal9 and registerVal9 ~= 0.000000 then
				local registerVal12 = {}
				local registerVal13 = {}
				local registerVal14 = CoD.CACUtility.GetImageForItemRef(registerVal9)
				registerVal13.image = registerVal14
				registerVal12.models = registerVal13
				table.insert({}, registerVal12)
				table.insert(arg1.hintStrings, Engine.Localize(CoD.CACUtility.GetNameForItemRef(registerVal9)))
			end
			arg1.hasBonusCardSubscriptions = true
		end
	end
	__FUNC_510_(arg1)
	return {}
end

local registerVal16 = DataSourceHelpers.ListSetup("CodCasterLoadoutAbilityOrWeapon", __FUNC_15B9_, true)
DataSources.CodCasterLoadoutAbilityOrWeapon = registerVal16
registerVal16 = DataSourceHelpers.ListSetup("CodCasterLoadoutPrimary", __FUNC_1FEB_, true)
DataSources.CodCasterLoadoutPrimary = registerVal16
registerVal16 = DataSourceHelpers.ListSetup("CodCasterLoadoutSecondary", __FUNC_2043_, true)
DataSources.CodCasterLoadoutSecondary = registerVal16
registerVal16 = DataSourceHelpers.ListSetup("CodCasterLoadoutEquipment", __FUNC_2430_, true)
DataSources.CodCasterLoadoutEquipment = registerVal16
registerVal16 = DataSourceHelpers.ListSetup("CodCasterLoadoutEquipmentSecondary", __FUNC_24A5_, true)
DataSources.CodCasterLoadoutEquipmentSecondary = registerVal16
registerVal16 = DataSourceHelpers.ListSetup("CodCasterLoadoutPerks", __FUNC_251D_, true)
DataSources.CodCasterLoadoutPerks = registerVal16
registerVal16 = DataSourceHelpers.ListSetup("CodCasterLoadoutWildcards", __FUNC_2964_, true)
DataSources.CodCasterLoadoutWildcards = registerVal16
registerVal16 = InheritFrom(LUI.UIElement)
CoD.CodCasterLoadoutListContainer = registerVal16
local function __FUNC_2CF0_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CodCasterLoadoutListContainer)
	registerVal2.id = "CodCasterLoadoutListContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 721.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 72.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal3:setTopBottom(true, true, 20.000000, 20.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.spacer0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 100.000000, 101.000000)
	registerVal4:setTopBottom(true, false, 20.000000, 92.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.spacer = registerVal4
	local registerVal5 = CoD.CodCasterLoadoutItem.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 101.000000, 221.000000)
	registerVal5:setTopBottom(true, false, 20.000000, 92.000000)
	registerVal5.CodCasterLoadoutSubGrid:setDataSource("CodCasterLoadoutAbilityOrWeapon")
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Shown"
	local function __FUNC_3D33_(arg0, arg2, arg3)
		return IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_lo_specialist_weapon", 1.000000)
	end

	registerVal9.condition = __FUNC_3D33_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "CodCaster.profileSettingsUpdated")
	local function __FUNC_3DCB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_3DCB_)
	registerVal2:addElement(registerVal5)
	registerVal2.SpecialistWeaponOrAbility = registerVal5
	local registerVal6 = CoD.CodCasterLoadoutItem.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 221.000000, 341.000000)
	registerVal6:setTopBottom(true, false, 20.000000, 92.000000)
	registerVal6.CodCasterLoadoutSubGrid:setDataSource("CodCasterLoadoutPrimary")
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Shown"
	local function __FUNC_3EFE_(arg0, arg2, arg3)
		return IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_lo_primary", 1.000000)
	end

	registerVal10.condition = __FUNC_3EFE_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "CodCaster.profileSettingsUpdated")
	local function __FUNC_3F8D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_3F8D_)
	registerVal2:addElement(registerVal6)
	registerVal2.PrimaryWeapon = registerVal6
	local registerVal7 = CoD.CodCasterLoadoutItem.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 341.000000, 461.000000)
	registerVal7:setTopBottom(true, false, 20.000000, 92.000000)
	registerVal7.CodCasterLoadoutSubGrid:setDataSource("CodCasterLoadoutSecondary")
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Shown"
	local function __FUNC_40C2_(arg0, arg2, arg3)
		return IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_lo_secondary", 1.000000)
	end

	registerVal11.condition = __FUNC_40C2_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "CodCaster.profileSettingsUpdated")
	local function __FUNC_4153_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_4153_)
	registerVal2:addElement(registerVal7)
	registerVal2.SecondaryWeapon = registerVal7
	registerVal8 = CoD.CodCasterLoadoutItem.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 461.000000, 581.000000)
	registerVal8:setTopBottom(true, false, 20.000000, 92.000000)
	registerVal8.CodCasterLoadoutSubGrid:setDataSource("CodCasterLoadoutEquipment")
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Shown"
	local function __FUNC_4286_(arg0, arg2, arg3)
		return IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_lo_equipment", 1.000000)
	end

	registerVal12.condition = __FUNC_4286_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "CodCaster.profileSettingsUpdated")
	local function __FUNC_4317_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_4317_)
	registerVal2:addElement(registerVal8)
	registerVal2.Equipment = registerVal8
	registerVal9 = CoD.CodCasterLoadoutItem.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 581.000000, 701.000000)
	registerVal9:setTopBottom(true, false, 20.000000, 92.000000)
	registerVal9.CodCasterLoadoutSubGrid:setDataSource("CodCasterLoadoutEquipmentSecondary")
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Shown"
	local function __FUNC_444A_(arg0, arg2, arg3)
		return IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_lo_equipment", 1.000000)
	end

	registerVal13.condition = __FUNC_444A_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "CodCaster.profileSettingsUpdated")
	local function __FUNC_44DB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_44DB_)
	registerVal2:addElement(registerVal9)
	registerVal2.Equipment2 = registerVal9
	registerVal10 = CoD.CodCasterLoadoutItem.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 701.000000, 821.000000)
	registerVal10:setTopBottom(true, false, 20.000000, 92.000000)
	registerVal10.CodCasterLoadoutSubGrid:setDataSource("CodCasterLoadoutPerks")
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Shown"
	local function __FUNC_460E_(arg0, arg2, arg3)
		local registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_lo_perks", 1.000000)
		if registerVal3 then
			registerVal3 = HasPerksInAnySlot(arg1)
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_460E_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "CodCaster.profileSettingsUpdated")
	local function __FUNC_46CA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_46CA_)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.platformUpdate")
	local function __FUNC_47FE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.platformUpdate"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_47FE_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "perks.perk0_count")
	local function __FUNC_492A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "perks.perk0_count"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_492A_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "perks.perk1_count")
	local function __FUNC_4A4F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "perks.perk1_count"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_4A4F_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "perks.perk2_count")
	local function __FUNC_4B73_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "perks.perk2_count"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_4B73_)
	registerVal2:addElement(registerVal10)
	registerVal2.Perks = registerVal10
	registerVal11 = CoD.CodCasterLoadoutItem.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 821.000000, 941.000000)
	registerVal11:setTopBottom(true, false, 20.000000, 92.000000)
	registerVal11.CodCasterLoadoutSubGrid:setDataSource("CodCasterLoadoutWildcards")
	registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Shown"
	local function __FUNC_4C97_(arg0, arg2, arg3)
		return IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_lo_wildcard", 1.000000)
	end

	registerVal15.condition = __FUNC_4C97_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "CodCaster.profileSettingsUpdated")
	local function __FUNC_4D26_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:subscribeToModel(registerVal14, __FUNC_4D26_)
	registerVal2:addElement(registerVal11)
	registerVal2.Wildcards = registerVal11
	registerVal12 = {}
	registerVal13 = {}
	local function __FUNC_4E5A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal13.DefaultClip = __FUNC_4E5A_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	local function __FUNC_4EBA_(arg0)
		arg0.SpecialistWeaponOrAbility:close()
		arg0.PrimaryWeapon:close()
		arg0.SecondaryWeapon:close()
		arg0.Equipment:close()
		arg0.Equipment2:close()
		arg0.Perks:close()
		arg0.Wildcards:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4EBA_)
	if __FUNC_DC5_ then
		__FUNC_DC5_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CodCasterLoadoutListContainer.new = __FUNC_2CF0_
