-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.lmgInfiniteReticle_Status = registerVal1
function CoD.lmgInfiniteReticle_Status.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.lmgInfiniteReticle_Status)
	registerVal2.id = "lmgInfiniteReticle_Status"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 133.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, -1.000000, 7.600000)
	registerVal3:setImage(RegisterImage("uie_t7_weapon_lmg_screen_frame"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.FrameTop = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 15.000000, 23.600000)
	registerVal4:setXRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_weapon_lmg_screen_frame"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.FrameBottom = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 8.870000, 121.870000)
	registerVal5:setTopBottom(true, false, 3.590000, 18.590000)
	registerVal5:setText(Engine.Localize("MENU_STATUS_CAPS"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.Status = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_865_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_865_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

