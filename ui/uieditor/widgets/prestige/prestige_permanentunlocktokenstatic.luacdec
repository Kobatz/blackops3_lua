-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Prestige_PermanentUnlockTokenStatic = registerVal1
function CoD.Prestige_PermanentUnlockTokenStatic.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Prestige_PermanentUnlockTokenStatic)
	registerVal2.id = "Prestige_PermanentUnlockTokenStatic"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_icontokenbox"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.imgTokenBox = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.430000)
	registerVal4:setImage(RegisterImage("uie_t7_gamesettings_asteriskicon"))
	registerVal2:addElement(registerVal4)
	registerVal2.imgIconTokenMult = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -16.000000, 16.000000)
	registerVal5:setTopBottom(true, true, -16.000000, 16.000000)
	registerVal5:setAlpha(0.920000)
	registerVal5:setScale(0.500000)
	registerVal5:setImage(RegisterImage("uie_t7_icons_prestige_permanenttoken"))
	registerVal2:addElement(registerVal5)
	registerVal2.imgIconToken = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 12.700000)
	registerVal6:setTopBottom(true, true, -2.000000, 10.700000)
	registerVal6:setRGB(1.000000, 0.480000, 0.000000)
	registerVal6:setAlpha(RandomAddPercent(-15.000000, 0.000000))
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.glow = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_911_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.imgTokenBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.imgIconTokenMult:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.imgIconToken:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.glow:setAlpha(RandomAddPercent(-15.000000, 0.000000))
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_911_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_B48_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.imgTokenBox:setLeftRight(true, true, -1.890000, 3.890000)
		registerVal2.imgTokenBox:setTopBottom(true, true, -4.000000, 4.000000)
		registerVal2.imgTokenBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.imgIconTokenMult:setAlpha(0.430000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.imgIconToken:setAlpha(0.920000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_E45_(arg0, arg1)
			local function __FUNC_F9C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(RandomAddPercent(-15.000000, 0.260000))
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F9C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F9C_)
		end

		registerVal6:completeAnimation()
		registerVal2.glow:setAlpha(RandomAddPercent(-15.000000, 0.260000))
		__FUNC_E45_(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_B48_
	registerVal7.Visible = registerVal8
	registerVal2.clipsPerState = registerVal7
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

