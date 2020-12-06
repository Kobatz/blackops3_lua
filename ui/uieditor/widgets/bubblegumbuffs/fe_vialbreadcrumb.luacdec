-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_VialBreadcrumb = registerVal1
function CoD.FE_VialBreadcrumb.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_VialBreadcrumb)
	registerVal2.id = "FE_VialBreadcrumb"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 46.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 23.000000)
	registerVal3:setTopBottom(false, false, -11.500000, 11.500000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_zm_vial_aar_256"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 18.500000, 54.500000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal4.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_78C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.SubTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "MegaChewTokens", "remainingTokens", __FUNC_78C_)
	registerVal2:addElement(registerVal4)
	registerVal2.StartMenuIdentitySubTitle = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_864_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_A36_(arg0, arg1)
			local function __FUNC_BCB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1409.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
				arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_BCB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCB_)
		end

		registerVal3:completeAnimation()
		registerVal2.Image0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
		registerVal2.Image0:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_A36_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_864_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_E31_(arg0)
		arg0.StartMenuIdentitySubTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E31_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

