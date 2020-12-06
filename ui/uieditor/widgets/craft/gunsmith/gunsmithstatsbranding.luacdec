-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithSessionModeText")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithSessionModeBrandingImage")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithStatsBranding = registerVal1
function CoD.GunsmithStatsBranding.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 2.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Right)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithStatsBranding)
	registerVal2.id = "GunsmithStatsBranding"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 134.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.GunsmithSessionModeText.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 48.940000, 134.000000)
	registerVal3:setTopBottom(true, false, 3.500000, 28.500000)
	registerVal3.modeText:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	registerVal2:addElement(registerVal3)
	registerVal2.sessionMode = registerVal3
	local registerVal4 = CoD.GunsmithSessionModeBrandingImage.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 14.940000, 46.940000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal4.cpLogo:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.bo3BrandingLogo = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8FB_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal3.modeText:completeAnimation()
		registerVal2.sessionMode.modeText:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.mpLogo:completeAnimation()
		registerVal4.cpLogo:completeAnimation()
		registerVal2.bo3BrandingLogo.mpLogo:setAlpha(1.000000)
		registerVal2.bo3BrandingLogo.cpLogo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8FB_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B7D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal3.modeText:completeAnimation()
		registerVal2.sessionMode.modeText:setText(Engine.Localize("MENU_CAMPAIGN_CAPS"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.mpLogo:completeAnimation()
		registerVal4.cpLogo:completeAnimation()
		registerVal2.bo3BrandingLogo.mpLogo:setAlpha(0.000000)
		registerVal2.bo3BrandingLogo.cpLogo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B7D_
	registerVal5.Campaign = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_DFE_(arg0)
		arg0.sessionMode:close()
		arg0.bo3BrandingLogo:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DFE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

