-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MissionRecordVault.MissionRecordVault_AccoladesDifficulty")
require("ui.uieditor.widgets.MissionRecordVault.MissionRecordVault_YourBest")
require("ui.uieditor.widgets.MissionRecordVault.MissionRecordVault_ScoreWidget")
local function __FUNC_300_(arg0, arg1, arg2)
	local registerVal4 = arg2:getModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "selectedAccolade")
	Engine.CreateModel(registerVal3, "rewardName")
	Engine.CreateModel(registerVal3, "rewardImage")
	Engine.CreateModel(registerVal3, "challengeWidget")
	Engine.CreateModel(registerVal3, "centerText")
	Engine.CreateModel(registerVal3, "challengeProgressQuantity")
	Engine.CreateModel(registerVal3, "challengeName")
	Engine.CreateModel(registerVal3, "challengeDetails")
	Engine.CreateModel(registerVal3, "completed")
	local function __FUNC_640_(arg3, arg4, arg5, arg6)
		local registerVal4 = CoD[("MissionRecordVault_Accolades" .. arg4)].new(arg2, arg1)
		registerVal4:setLeftRight(arg3:getLocalLeftRight())
		registerVal4:setTopBottom(arg3:getLocalTopBottom())
		registerVal4:setModel(arg6, arg1)
		registerVal4:addElementBefore(arg3)
		arg0.MissionRecordVaultAccolade = registerVal4
		arg3:close()
		local function __FUNC_82B_(arg0)
			local registerVal1 = Engine.GetModelValue(arg5)
			if registerVal1 ~= nil then
				nil(registerVal4, registerVal1, arg5, arg6)
			end
		end

		registerVal4:subscribeToModel(arg5, __FUNC_82B_, false)
	end

	local registerVal7 = arg2:getModel()
	local registerVal6 = Engine.GetModel(registerVal7, "selectedAccolade")
	local registerVal8 = Engine.GetModel(registerVal6, "challengeWidget")
	Engine.SetModelValue(registerVal8, "Kills")
	local function __FUNC_8B4_(arg0)
		local registerVal1 = Engine.GetModel(arg0, "challengeWidget")
		local registerVal2 = Engine.GetModelValue(registerVal1)
		if registerVal2 == nil then
			local function __FUNC_9C9_(arg1)
				local registerVal1 = Engine.GetModelValue(registerVal1)
				if registerVal1 ~= nil then
					__FUNC_640_(arg0.MissionRecordVaultAccolade, registerVal1, registerVal1, arg0)
				end
			end

			arg0.MissionRecordVaultAccolade:subscribeToModel(registerVal1, __FUNC_9C9_)
		else
			__FUNC_640_(arg0.MissionRecordVaultAccolade, registerVal2, registerVal1, arg0)
		end
	end

	arg0.MissionRecordVaultAccolade:subscribeToModel(registerVal6, __FUNC_8B4_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MissionRecordVault_ChallengeSelectedInfo = registerVal2
local function __FUNC_A54_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MissionRecordVault_ChallengeSelectedInfo)
	registerVal2.id = "MissionRecordVault_ChallengeSelectedInfo"
	registerVal2.soundSet = "CAC_PrimaryWeapon"
	registerVal2:setLeftRight(true, false, 0.000000, 440.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 432.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -65.000000, 490.000000)
	registerVal3:setTopBottom(false, false, 40.000000, 88.220000)
	registerVal3:setAlpha(0.650000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cp_vault_sec_title_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.SecTitleBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 16.000000, 46.000000)
	registerVal4:setTopBottom(false, true, -45.000000, -15.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_1BA6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "rewardImage", true, __FUNC_1BA6_)
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -27.000000, 1.000000)
	registerVal5:setTopBottom(false, false, 38.000000, 42.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image30 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 52.000000, 267.000000)
	registerVal6:setTopBottom(true, false, 392.000000, 412.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1C58_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "rewardName", true, __FUNC_1C58_)
	registerVal2:addElement(registerVal6)
	registerVal2.TextBox0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -27.000000, 1.000000)
	registerVal7:setTopBottom(false, false, 83.000000, 87.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image300 = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 16.000000, 433.000000)
	registerVal8:setTopBottom(false, false, 55.000000, 75.000000)
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal8:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setLetterSpacing(1.000000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1D12_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "challengeName", true, __FUNC_1D12_)
	registerVal2:addElement(registerVal8)
	registerVal2.TextBox1 = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 16.000000, 421.000000)
	registerVal9:setTopBottom(true, false, 350.000000, 369.000000)
	registerVal9:setAlpha(0.550000)
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1DCB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "challengeDetails", true, __FUNC_1DCB_)
	registerVal2:addElement(registerVal9)
	registerVal2.TextBox2 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 67.140000, 68.140000)
	registerVal10:setTopBottom(true, false, 328.160000, 431.160000)
	registerVal10:setAlpha(0.270000)
	registerVal10:setZRot(90.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.line00 = registerVal10
	local registerVal11 = CoD.MissionRecordVault_AccoladesDifficulty.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -125.000000, 125.000000)
	registerVal11:setTopBottom(true, false, 10.000000, 260.000000)
	local function __FUNC_1E82_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_1E82_)
	local function __FUNC_1ED2_(arg0)
	end

	registerVal11:linkToElementModel(registerVal2, "challengeWidget", true, __FUNC_1ED2_)
	registerVal2:addElement(registerVal11)
	registerVal2.MissionRecordVaultAccolade = registerVal11
	local registerVal12 = CoD.MissionRecordVault_YourBest.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 230.500000, 358.500000)
	registerVal12:setTopBottom(true, false, 280.110000, 344.110000)
	registerVal12:setAlpha(0.000000)
	local function __FUNC_1F00_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.value:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "challengeProgressQuantity", true, __FUNC_1F00_)
	registerVal2:addElement(registerVal12)
	registerVal2.MissionRecordVaultYourBest = registerVal12
	local registerVal13 = CoD.MissionRecordVault_ScoreWidget.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 16.000000, 235.000000)
	registerVal13:setTopBottom(true, false, 307.000000, 346.000000)
	local function __FUNC_1FD5_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, nil, false, __FUNC_1FD5_)
	registerVal2:addElement(registerVal13)
	registerVal2.MissionRecordVaultScoreWidget0 = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_2026_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal15.DefaultClip = __FUNC_2026_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_2086_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.SecTitleBG:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image30:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TextBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Image300:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TextBox1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TextBox2:setAlpha(0.550000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.MissionRecordVaultAccolade:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.MissionRecordVaultYourBest:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal15.DefaultClip = __FUNC_2086_
	registerVal14.NoAccolades = registerVal15
	registerVal15 = {}
	local function __FUNC_2466_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.TextBox0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TextBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal12:completeAnimation()
		registerVal2.MissionRecordVaultYourBest:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal15.DefaultClip = __FUNC_2466_
	registerVal14.Incomplete = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "NoAccolades"
	local function __FUNC_2659_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "challengeImage")
		return (not registerVal3)
	end

	registerVal17.condition = __FUNC_2659_
	local registerVal18 = {}
	registerVal18.stateName = "Incomplete"
	local function __FUNC_26E0_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "completed")
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_26E0_
	registerVal16 = {registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal16)
	local function __FUNC_2759_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "challengeImage"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "challengeImage", true, __FUNC_2759_)
	local function __FUNC_287C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "completed"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "completed", true, __FUNC_287C_)
	local function __FUNC_299B_(arg0)
		arg0.MissionRecordVaultAccolade:close()
		arg0.MissionRecordVaultYourBest:close()
		arg0.MissionRecordVaultScoreWidget0:close()
		arg0.Image0:close()
		arg0.TextBox0:close()
		arg0.TextBox1:close()
		arg0.TextBox2:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_299B_)
	if __FUNC_300_ then
		__FUNC_300_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MissionRecordVault_ChallengeSelectedInfo.new = __FUNC_A54_
