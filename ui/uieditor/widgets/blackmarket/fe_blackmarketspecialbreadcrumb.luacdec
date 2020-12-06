-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Bread_linker")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_BlackMarketSpecialBreadcrumb = registerVal1
function CoD.FE_BlackMarketSpecialBreadcrumb.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_BlackMarketSpecialBreadcrumb)
	registerVal2.id = "FE_BlackMarketSpecialBreadcrumb"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 72.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BM_Bread_linker.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -29.000000, 55.000000)
	registerVal3:setTopBottom(true, false, 6.000000, 78.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BMBreadlinker = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 4.000000, 88.000000)
	registerVal4:setTopBottom(true, false, -1.000000, 83.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setScale(2.090000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_blackmarket_breadcrumb_glow"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -1.000000, 95.000000)
	registerVal5:setTopBottom(true, false, -12.000000, 84.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_blackmarket_breadcrumb"))
	registerVal2:addElement(registerVal5)
	registerVal2.Bread = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 22.000000, 70.000000)
	registerVal6:setTopBottom(true, false, 17.000000, 65.000000)
	registerVal6:setRGB(1.000000, 0.830000, 0.410000)
	registerVal6:setAlpha(0.010000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_blackmarket_breadcrumb-02"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
	registerVal6:setShaderVector(0.000000, 0.996191, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BreadGlint = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_9B7_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_D41_(arg0, arg1)
			local function __FUNC_EDE_(arg0, arg1)
				local function __FUNC_1057_(arg0, arg1)
					local function __FUNC_11F2_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 810.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setScale(2.200000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_11F2_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 429.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.740000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11F2_)
				end

				if arg1.interrupted then
					__FUNC_1057_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1057_)
			end

			if arg1.interrupted then
				__FUNC_EDE_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.230000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EDE_)
		end

		registerVal4:beginAnimation("keyframe", 2200.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:setScale(0.900000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_D41_)
		local function __FUNC_13C8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 5000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Bread:setAlpha(1.000000)
		__FUNC_13C8_(registerVal5, {})
		local function __FUNC_157D_(arg0, arg1)
			local function __FUNC_16D4_(arg0, arg1)
				local function __FUNC_186B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1059.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
					arg0:setShaderVector(0.000000, 0.996191, 0.000000, 0.000000, 0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_186B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 820.000000, false, false, CoD.TweenType.Linear)
				arg0:setShaderVector(0.000000, 0.996191, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_186B_)
			end

			if arg1.interrupted then
				__FUNC_16D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1620.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16D4_)
		end

		registerVal6:completeAnimation()
		registerVal2.BreadGlint:setAlpha(1.000000)
		registerVal2.BreadGlint:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
		registerVal2.BreadGlint:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_157D_(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_9B7_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_1AF6_(arg0)
		arg0.BMBreadlinker:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1AF6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

