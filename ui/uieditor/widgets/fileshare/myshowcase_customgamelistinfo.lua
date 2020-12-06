-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FileshareCustomGamesLocalGameTypeImage")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MyShowcase_CustomGameListInfo = registerVal1
function CoD.MyShowcase_CustomGameListInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MyShowcase_CustomGameListInfo)
	registerVal2.id = "MyShowcase_CustomGameListInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 400.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FileshareCustomGamesLocalGameTypeImage.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -214.500000, 214.500000)
	registerVal3:setTopBottom(true, false, 13.000000, 270.400000)
	local function __FUNC_B9A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.LocalGameTypeImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_B9A_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Hidden"
	local function __FUNC_C74_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal7.condition = __FUNC_C74_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.FileshareGameTypeImage = registerVal3
	local registerVal4 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 38.000000, 461.000000)
	registerVal4:setTopBottom(true, false, 285.000000, 319.000000)
	local function __FUNC_CC1_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_CC1_)
	local function __FUNC_D12_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.weaponNameLabel:setText(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "name", true, __FUNC_D12_)
	registerVal2:addElement(registerVal4)
	registerVal2.FileName = registerVal4
	local registerVal5 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 35.500000, 463.500000)
	registerVal5:setTopBottom(true, false, 325.500000, 351.500000)
	registerVal5.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_DC9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.SubTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "gameTypeString", true, __FUNC_DC9_)
	registerVal2:addElement(registerVal5)
	registerVal2.GameTypeName = registerVal5
	registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 41.500000, 464.500000)
	registerVal6:setTopBottom(true, false, 352.500000, 374.500000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setLetterSpacing(0.500000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_EA0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "gameDescription", true, __FUNC_EA0_)
	registerVal2:addElement(registerVal6)
	registerVal2.CustomGameDesc = registerVal6
	registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_F34_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.FileshareGameTypeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FileName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GameTypeName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CustomGameDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_F34_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_114E_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.FileshareGameTypeImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FileName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GameTypeName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CustomGameDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_114E_
	registerVal7.Visible = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_1366_(arg0)
		arg0.FileshareGameTypeImage:close()
		arg0.FileName:close()
		arg0.GameTypeName:close()
		arg0.CustomGameDesc:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1366_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

