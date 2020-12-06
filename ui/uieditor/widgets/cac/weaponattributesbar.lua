-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_WeapStatsBarEmpty")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponAttributesBar = registerVal1
function CoD.WeaponAttributesBar.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponAttributesBar)
	registerVal2.id = "WeaponAttributesBar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_WeapStatsBarEmpty.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 250.000000, 286.000000)
	registerVal3:setTopBottom(true, false, -1.000000, 15.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Dash10Empty = registerVal3
	local registerVal4 = CoD.cac_WeapStatsBarEmpty.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 222.000000, 258.000000)
	registerVal4:setTopBottom(true, false, -1.000000, 15.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Dash9Empty = registerVal4
	local registerVal5 = CoD.cac_WeapStatsBarEmpty.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 194.000000, 230.000000)
	registerVal5:setTopBottom(true, false, -1.000000, 15.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Dash8Empty = registerVal5
	local registerVal6 = CoD.cac_WeapStatsBarEmpty.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 166.000000, 202.000000)
	registerVal6:setTopBottom(true, false, -1.000000, 15.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Dash7Empty = registerVal6
	local registerVal7 = CoD.cac_WeapStatsBarEmpty.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 138.000000, 174.000000)
	registerVal7:setTopBottom(true, false, -1.000000, 15.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Dash6Empty = registerVal7
	local registerVal8 = CoD.cac_WeapStatsBarEmpty.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 110.000000, 146.000000)
	registerVal8:setTopBottom(true, false, -1.000000, 15.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Dash5Empty = registerVal8
	local registerVal9 = CoD.cac_WeapStatsBarEmpty.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 82.000000, 118.000000)
	registerVal9:setTopBottom(true, false, -1.000000, 15.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.Dash4Empty = registerVal9
	local registerVal10 = CoD.cac_WeapStatsBarEmpty.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 54.000000, 90.000000)
	registerVal10:setTopBottom(true, false, -1.000000, 15.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.Dash3Empty = registerVal10
	local registerVal11 = CoD.cac_WeapStatsBarEmpty.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 26.000000, 62.000000)
	registerVal11:setTopBottom(true, false, -1.000000, 15.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.Dash2Empty = registerVal11
	local registerVal12 = CoD.cac_WeapStatsBarEmpty.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, -2.000000, 34.000000)
	registerVal12:setTopBottom(true, false, -1.000000, 15.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.Dash1Empty = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal13:setImage(RegisterImage("uie_img_t7_menu_cacselection_infoboxameterfill"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal13:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.weaponAttribute = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal14:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal14:setRGB(1.000000, 0.000000, 0.000000)
	registerVal14:setImage(RegisterImage("uie_img_t7_menu_cacselection_infoboxameterfill"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal14:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.attachmentAttribute = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_E32_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal13:completeAnimation()
		registerVal2.weaponAttribute:setAlpha(1.000000)
		registerVal2.weaponAttribute:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		registerVal2.weaponAttribute:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.weaponAttribute:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.weaponAttribute:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.weaponAttribute:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.attachmentAttribute:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.attachmentAttribute:setAlpha(1.000000)
		registerVal2.attachmentAttribute:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.attachmentAttribute:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.attachmentAttribute:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.attachmentAttribute:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.attachmentAttribute:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_E32_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_123F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal14:completeAnimation()
		registerVal2.attachmentAttribute:setRGB(0.000000, 1.000000, 0.000000)
		registerVal2.attachmentAttribute:setAlpha(1.000000)
		registerVal2.attachmentAttribute:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.attachmentAttribute:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.attachmentAttribute:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.attachmentAttribute:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.attachmentAttribute:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_123F_
	registerVal15.Increase = registerVal16
	registerVal16 = {}
	local function __FUNC_14F0_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal14:completeAnimation()
		registerVal2.attachmentAttribute:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.attachmentAttribute:setAlpha(1.000000)
		registerVal2.attachmentAttribute:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.attachmentAttribute:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.attachmentAttribute:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.attachmentAttribute:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.attachmentAttribute:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_14F0_
	registerVal15.Decrease = registerVal16
	registerVal2.clipsPerState = registerVal15
	local function __FUNC_17A4_(arg0)
		arg0.Dash10Empty:close()
		arg0.Dash9Empty:close()
		arg0.Dash8Empty:close()
		arg0.Dash7Empty:close()
		arg0.Dash6Empty:close()
		arg0.Dash5Empty:close()
		arg0.Dash4Empty:close()
		arg0.Dash3Empty:close()
		arg0.Dash2Empty:close()
		arg0.Dash1Empty:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_17A4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

