-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_TextAttachmentInfoFire = registerVal1
function CoD.AmmoWidget_TextAttachmentInfoFire.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 5.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Right)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_TextAttachmentInfoFire)
	registerVal2.id = "AmmoWidget_TextAttachmentInfoFire"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 296.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, true, -68.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -16.000000, 0.000000)
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setLetterSpacing(0.500000)
	local function __FUNC_8AF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentWeapon", "fireRateString", __FUNC_8AF_)
	registerVal2:addElement(registerVal3)
	registerVal2.WeaponFireRateLbl = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, true, -188.000000, -73.000000)
	registerVal4:setTopBottom(false, true, -16.000000, 0.000000)
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(0.500000)
	local function __FUNC_940_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentWeapon", "weaponName", __FUNC_940_)
	registerVal2:addElement(registerVal4)
	registerVal2.WeaponNameStrokeLbl = registerVal4
	local function __FUNC_9FA_(arg0)
		arg0.WeaponFireRateLbl:close()
		arg0.WeaponNameStrokeLbl:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9FA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

