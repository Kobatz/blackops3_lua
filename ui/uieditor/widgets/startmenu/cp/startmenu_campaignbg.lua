-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.CP.StartMenu_CampaignBGTextures")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_CampaignBG = registerVal1
function CoD.StartMenu_CampaignBG.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_CampaignBG)
	registerVal2.id = "StartMenu_CampaignBG"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.blackimage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.820000)
	registerVal4:setScale(1.000000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_menu_cac_version6_backdrop720p"))
	registerVal2:addElement(registerVal4)
	registerVal2.Background = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.blackImage = registerVal5
	local registerVal6 = CoD.StartMenu_CampaignBGTextures.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.StartMenuCampaignBGTextures = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_8BF_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_8BF_
	local function __FUNC_91E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.Intro = __FUNC_91E_
	local function __FUNC_97E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.Back = __FUNC_97E_
	local function __FUNC_9DE_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.blackimage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.blackImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.Close = __FUNC_9DE_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_B8E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_B8E_
	registerVal7.Campaign = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_BEE_(arg0)
		arg0.StartMenuCampaignBGTextures:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BEE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

