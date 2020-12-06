-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1D6_(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.CACUtility.GetLocalizedAttachmentsString(arg0)
	arg0:setState("DefaultState")
	arg0.Attachments:setText(registerVal4)
	if arg0.collapseTimer ~= nil then
		arg0.collapseTimer:close()
	end
end

local function __FUNC_32D_(arg0)
	arg0.UpdateAttachments = __FUNC_1D6_
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_TextAttachmentInfo = registerVal3
local function __FUNC_37B_(arg0, arg1)
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
	registerVal2:setClass(CoD.AmmoWidget_TextAttachmentInfo)
	registerVal2.id = "AmmoWidget_TextAttachmentInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 296.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, true, -115.500000, 0.000000)
	registerVal3:setTopBottom(false, true, -16.000000, 0.000000)
	registerVal3:setText(Engine.Localize("Attachments here"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.Attachments = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, true, -235.500000, -120.500000)
	registerVal4:setTopBottom(false, true, -16.000000, 0.000000)
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(0.500000)
	local function __FUNC_B0D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentWeapon", "weaponName", __FUNC_B0D_)
	registerVal2:addElement(registerVal4)
	registerVal2.WeaponNameStrokeLbl = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_BC6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Attachments:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WeaponNameStrokeLbl:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_BC6_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_D28_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Attachments:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WeaponNameStrokeLbl:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_D28_
	registerVal5.Collapsed = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_E91_(arg0)
		arg0.WeaponNameStrokeLbl:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E91_)
	if __FUNC_32D_ then
		__FUNC_32D_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AmmoWidget_TextAttachmentInfo.new = __FUNC_37B_
