-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DLC_Free_TitleAndText = registerVal1
function CoD.DLC_Free_TitleAndText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DLC_Free_TitleAndText)
	registerVal2.id = "DLC_Free_TitleAndText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 420.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 104.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setText(Engine.Localize("MENU_DLC_TRY_AWAKENING_FREE"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal3:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Title = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 1.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 20.000000, 36.000000)
	registerVal4:setRGB(0.690000, 0.690000, 0.690000)
	registerVal4:setText(Engine.Localize("MENU_DLC_TRY_AWAKENING_FREE_DESC"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Body = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_883_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Title:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.Title:setTopBottom(true, false, 0.000000, 20.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_883_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

