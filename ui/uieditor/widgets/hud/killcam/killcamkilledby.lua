-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Killcam.KillcamKilledByImage")
local function __FUNC_21B_(arg0, arg1)
	local function __FUNC_2DE_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		arg0.ImageContainer.Image:setImage(RegisterImage(registerVal1))
		local registerVal2, registerVal3, registerVal4, registerVal5 = arg0.ImageContainer:getLocalLeftRight()
		local registerVal6, registerVal7, registerVal8, registerVal9 = arg0.ImageContainer:getLocalTopBottom()
		local registerVal10, registerVal11 = arg0.ImageContainer.Image:getImageDimensions()
		if registerVal1 and registerVal10 ~= 0.000000 and registerVal11 ~= 0.000000 then
			arg0.ImageContainer:setLeftRight(true, false, registerVal4, (registerVal4 + (((registerVal9 - registerVal8) / registerVal11) * registerVal10)))
			local registerVal14 = Engine.GetModelForController(arg1)
			local registerVal13 = CoD.SafeGetModelValue(registerVal14, "hudItems.killcamWeapon.flip")
			if registerVal13 then
				arg0.ImageContainer.Image:setLeftRight(true, false, (((registerVal9 - registerVal8) / registerVal11) * registerVal10), 0.000000)
			else
				arg0.ImageContainer.Image:setLeftRight(true, false, 0.000000, (((registerVal9 - registerVal8) / registerVal11) * registerVal10))
			end
			arg0:setLayoutCached(false)
		end
	end

	arg0.ImageContainer:subscribeToGlobalModel(arg1, "HUDItems", "killcamWeapon.killfeedicon", __FUNC_2DE_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.KillcamKilledBy = registerVal2
local function __FUNC_60D_(arg0, arg1)
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
	registerVal2:setAlignment(LUI.Alignment.Right)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.KillcamKilledBy)
	registerVal2.id = "KillcamKilledBy"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 492.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 450.530000, 492.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setTTF("fonts/default.ttf")
	local function __FUNC_1841_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(PrependToLocalizeStringIfNotEmpty(" + ", registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "HUDItems", "killcamWeapon.attachment5", __FUNC_1841_)
	registerVal2:addElement(registerVal3)
	registerVal2.KilledByAttachment5 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 409.050000, 450.530000)
	registerVal4:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal4:setTTF("fonts/default.ttf")
	local function __FUNC_193E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(PrependToLocalizeStringIfNotEmpty(" + ", registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "HUDItems", "killcamWeapon.attachment4", __FUNC_193E_)
	registerVal2:addElement(registerVal4)
	registerVal2.KilledByAttachment4 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 367.580000, 409.050000)
	registerVal5:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal5:setTTF("fonts/default.ttf")
	local function __FUNC_1A3A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(PrependToLocalizeStringIfNotEmpty(" + ", registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "HUDItems", "killcamWeapon.attachment3", __FUNC_1A3A_)
	registerVal2:addElement(registerVal5)
	registerVal2.KilledByAttachment3 = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 326.100000, 367.580000)
	registerVal6:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal6:setTTF("fonts/default.ttf")
	local function __FUNC_1B36_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(PrependToLocalizeStringIfNotEmpty(" + ", registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "HUDItems", "killcamWeapon.attachment2", __FUNC_1B36_)
	registerVal2:addElement(registerVal6)
	registerVal2.KilledByAttachment2 = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 284.630000, 326.100000)
	registerVal7:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal7:setTTF("fonts/default.ttf")
	local function __FUNC_1C32_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(PrependToLocalizeStringIfNotEmpty(" + ", registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "HUDItems", "killcamWeapon.attachment1", __FUNC_1C32_)
	registerVal2:addElement(registerVal7)
	registerVal2.KilledByAttachment1 = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 243.160000, 284.630000)
	registerVal8:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal8:setTTF("fonts/default.ttf")
	local function __FUNC_1D2E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "HUDItems", "killcamWeapon.attachment0", __FUNC_1D2E_)
	registerVal2:addElement(registerVal8)
	registerVal2.KilledByAttachment0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 232.160000, 243.160000)
	registerVal9:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.spacer1 = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 128.630000, 232.160000)
	registerVal10:setTopBottom(true, false, -1.000000, 19.000000)
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal10:setShaderVector(0.000000, 0.150000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1DE6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "HUDItems", "killcamWeapon.weaponName", __FUNC_1DE6_)
	registerVal2:addElement(registerVal10)
	registerVal2.KilledByWeapon = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 122.630000, 128.630000)
	registerVal11:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.spacer2 = registerVal11
	local registerVal12 = CoD.KillcamKilledByImage.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 91.630000, 122.630000)
	registerVal12:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.ImageContainer = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 85.630000, 91.630000)
	registerVal13:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.spacer0 = registerVal13
	local registerVal14 = LUI.UITightText.new()
	registerVal14:setLeftRight(true, false, 24.630000, 85.630000)
	registerVal14:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal14:setText(Engine.Localize("MPUI_KILLED_BY_PRE_CAPS"))
	registerVal14:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal14)
	registerVal2.KilledBy = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_1E9E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal16.DefaultClip = __FUNC_1E9E_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_1EFE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal16.DefaultClip = __FUNC_1EFE_
	registerVal15.Killcam = registerVal16
	registerVal16 = {}
	local function __FUNC_1F5E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal16.DefaultClip = __FUNC_1F5E_
	registerVal15.FinalKillcam = registerVal16
	registerVal16 = {}
	local function __FUNC_1FBE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal16.DefaultClip = __FUNC_1FBE_
	registerVal15.NemesisKillcam = registerVal16
	registerVal16 = {}
	local function __FUNC_201E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal16.DefaultClip = __FUNC_201E_
	registerVal15.RoundEndingKillcam = registerVal16
	registerVal2.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Killcam"
	local function __FUNC_207E_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM)
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
			if not registerVal3 and not registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
			else
			end
		end
		return true
	end

	registerVal18.condition = __FUNC_207E_
	local registerVal19 = {}
	registerVal19.stateName = "FinalKillcam"
	local function __FUNC_2266_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		return registerVal3
	end

	registerVal19.condition = __FUNC_2266_
	local registerVal20 = {}
	registerVal20.stateName = "NemesisKillcam"
	local function __FUNC_2336_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM)
		return registerVal3
	end

	registerVal20.condition = __FUNC_2336_
	local registerVal21 = {}
	registerVal21.stateName = "RoundEndingKillcam"
	local function __FUNC_2408_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		return registerVal3
	end

	registerVal21.condition = __FUNC_2408_
	registerVal17 = {registerVal18, registerVal19, registerVal20, registerVal21}
	registerVal2:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_24DE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal17, __FUNC_24DE_)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM))
	local function __FUNC_2665_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_NEMESIS_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal17, __FUNC_2665_)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM))
	local function __FUNC_27F2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal17, __FUNC_27F2_)
	registerVal18 = Engine.GetModelForController(arg1)
	registerVal17 = Engine.GetModel(registerVal18, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM))
	local function __FUNC_297C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal17, __FUNC_297C_)
	local function __FUNC_2B0C_(arg0)
		arg0.ImageContainer:close()
		arg0.KilledByAttachment5:close()
		arg0.KilledByAttachment4:close()
		arg0.KilledByAttachment3:close()
		arg0.KilledByAttachment2:close()
		arg0.KilledByAttachment1:close()
		arg0.KilledByAttachment0:close()
		arg0.KilledByWeapon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2B0C_)
	if __FUNC_21B_ then
		__FUNC_21B_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.KillcamKilledBy.new = __FUNC_60D_
