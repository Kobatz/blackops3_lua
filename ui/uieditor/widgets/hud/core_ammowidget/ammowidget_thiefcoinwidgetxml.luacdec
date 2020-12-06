-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_ThiefCoinWidgetxml = registerVal1
function CoD.AmmoWidget_ThiefCoinWidgetxml.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_ThiefCoinWidgetxml)
	registerVal2.id = "AmmoWidget_ThiefCoinWidgetxml"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.140000, -0.140000)
	registerVal3:setTopBottom(true, true, 0.140000, -0.140000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_blackjackring2"))
	registerVal2:addElement(registerVal3)
	registerVal2.RingBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 22.670000, -22.670000)
	registerVal4:setTopBottom(true, true, 22.670000, -22.670000)
	registerVal4:setYRot(180.000000)
	registerVal4:setZRot(8.000000)
	registerVal4:setScale(1.300000)
	local function __FUNC_749_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "HeroWeapon", "imageAvailable", __FUNC_749_)
	registerVal2:addElement(registerVal4)
	registerVal2.NewWeaponIcon = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 22.670000, -22.670000)
	registerVal5:setTopBottom(true, true, 22.670000, -22.670000)
	registerVal5:setZRot(8.000000)
	registerVal5:setScale(1.300000)
	local function __FUNC_7FC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "HeroWeapon", "thiefLastWeapon", __FUNC_7FC_)
	registerVal2:addElement(registerVal5)
	registerVal2.CurrentWeaponIcon = registerVal5
	local function __FUNC_8B0_(arg0)
		arg0.NewWeaponIcon:close()
		arg0.CurrentWeaponIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8B0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

