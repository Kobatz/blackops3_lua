-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_CareerCPWidget = registerVal1
function CoD.CallingCards_CareerCPWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_CareerCPWidget)
	registerVal2.id = "CallingCards_CareerCPWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_careercp_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 153.890000, 396.110000)
	registerVal4:setTopBottom(true, false, -152.990000, 97.740000)
	registerVal4:setRGB(1.000000, 0.940000, 0.420000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZRot(-84.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.GlowOrangeOver = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.380000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_careercp_clouds"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal5:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, -0.040000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.clouds1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal6:setTopBottom(true, false, 0.380000, 120.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_careercp_clouds2"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal6:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, -0.020000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.cloud2 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal7:setTopBottom(true, false, 0.380000, 120.380000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_careercp_clouds3"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal7:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, -0.030000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.cloud3 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 302.000000, 350.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_careercp_sword"))
	registerVal2:addElement(registerVal8)
	registerVal2.sword = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 329.000000, 375.000000)
	registerVal9:setTopBottom(true, false, 0.380000, 52.130000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcard_careercp_swordtail"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal9:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 3.910000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.swordtail = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 85.000000, 457.000000)
	registerVal10:setTopBottom(true, false, 0.380000, 120.380000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcard_careercp_leafs"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal10:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.000000, -0.380000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.leafs = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_D80_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_E9B_(arg0, arg1)
			local function __FUNC_1013_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1013_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.440000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1013_)
		end

		registerVal4:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		__FUNC_E9B_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal12.DefaultClip = __FUNC_D80_
	registerVal11.DefaultState = registerVal12
	registerVal2.clipsPerState = registerVal11
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

