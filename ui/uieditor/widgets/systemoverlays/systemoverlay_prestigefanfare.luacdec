-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_PrestigeFanfare = registerVal1
function CoD.systemOverlay_PrestigeFanfare.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_PrestigeFanfare)
	registerVal2.id = "systemOverlay_PrestigeFanfare"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 112.000000, 368.000000)
	registerVal3:setTopBottom(false, true, -304.000000, -48.000000)
	local function __FUNC_A89_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_A89_)
	registerVal2:addElement(registerVal3)
	registerVal2.PrestigeIcon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 421.000000, 901.000000)
	registerVal4:setTopBottom(true, false, 92.000000, 212.000000)
	local function __FUNC_B3C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(GetBackgroundByID(registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "backgroundId", true, __FUNC_B3C_)
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCard = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 421.000000, 621.000000)
	registerVal5:setTopBottom(true, false, 10.000000, 40.000000)
	registerVal5:setTTF("fonts/escom.ttf")
	local function __FUNC_C13_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "title", true, __FUNC_C13_)
	registerVal2:addElement(registerVal5)
	registerVal2.Title = registerVal5
	local registerVal6 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 421.000000, 1216.000000)
	registerVal6:setTopBottom(true, false, 40.000000, 60.000000)
	local function __FUNC_CCA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "description", true, __FUNC_CCA_)
	registerVal2:addElement(registerVal6)
	registerVal2.Description = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_D9C_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_D9C_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_DFE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.CallingCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_DFE_
	registerVal7.DefaultStateZM = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "DefaultStateZM"
	local function __FUNC_EFF_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualToEnum(arg2, arg1, "prestigeGameMode", Enum.eModes.MODE_ZOMBIES)
	end

	registerVal10.condition = __FUNC_EFF_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "prestigeGameMode")
	local function __FUNC_FD1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "prestigeGameMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_FD1_)
	local function __FUNC_10F6_(arg0, arg1, arg2, arg3)
		GoBackAndUpdateStateOnPreviousMenu(registerVal2, arg2)
		return true
	end

	local function __FUNC_1164_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_CONTINUE")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_10F6_, __FUNC_1164_, false)
	local function __FUNC_1264_(arg0)
		arg0.Description:close()
		arg0.PrestigeIcon:close()
		arg0.CallingCard:close()
		arg0.Title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1264_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

