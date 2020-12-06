-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Perk3Widget = registerVal1
function CoD.CallingCards_Perk3Widget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_Perk3Widget)
	registerVal2.id = "CallingCards_Perk3Widget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_perk3_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_perk3_bolt_flipbook"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook_add"))
	registerVal4:setShaderVector(0.000000, 3.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 5.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.boltFlipbook0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 120.780000, 385.220000)
	registerVal5:setTopBottom(true, false, 11.850000, 108.150000)
	registerVal5:setRGB(0.000000, 1.000000, 0.960000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZRot(-63.000000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Glow = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_810_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_921_(arg0, arg1)
			local function __FUNC_A9B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A9B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.470000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9B_)
		end

		registerVal5:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_921_(registerVal5, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal7.DefaultClip = __FUNC_810_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

