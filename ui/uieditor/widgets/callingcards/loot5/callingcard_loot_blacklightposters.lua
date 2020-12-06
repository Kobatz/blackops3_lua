-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_loot_blacklightposters = registerVal1
function CoD.CallingCard_loot_blacklightposters.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCard_loot_blacklightposters)
	registerVal2.id = "CallingCard_loot_blacklightposters"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.black = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_loot_callingcard_blacklightposters_bg"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal4:setShaderVector(0.000000, 0.000000, 0.700000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.240000, 0.170000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.bg = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_loot_callingcard_blacklightposters_bg"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.bg0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal6:setImage(RegisterImage("uie_t7_loot_callingcard_blacklightposters_cloud_flipbook"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal6:setShaderVector(0.000000, 3.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 6.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.cloud = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal7:setImage(RegisterImage("uie_t7_loot_callingcard_blacklightposters_biker1_flipbook"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal7:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 15.900000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.biker = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_A3E_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_DEC_(arg0, arg1)
			local function __FUNC_F88_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 429.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
				arg0:setShaderVector(0.000000, 0.000000, 0.700000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 0.240000, 0.170000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
				arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F88_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 0.300000, 1.020000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F88_)
		end

		registerVal4:completeAnimation()
		registerVal2.bg:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.bg:setShaderVector(0.000000, 0.000000, 0.700000, 0.000000, 0.000000)
		registerVal2.bg:setShaderVector(1.000000, 0.240000, 0.170000, 0.000000, 0.000000)
		registerVal2.bg:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.bg:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_DEC_(registerVal4, {})
		local function __FUNC_1258_(arg0, arg1)
			local function __FUNC_13D3_(arg0, arg1)
				local function __FUNC_154B_(arg0, arg1)
					local function __FUNC_16C3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.500000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_16C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16C3_)
				end

				if arg1.interrupted then
					__FUNC_154B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_154B_)
			end

			if arg1.interrupted then
				__FUNC_13D3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13D3_)
		end

		registerVal5:completeAnimation()
		registerVal2.bg0:setAlpha(0.500000)
		__FUNC_1258_(registerVal5, {})
		local function __FUNC_1875_(arg0, arg1)
			local function __FUNC_19EF_(arg0, arg1)
				local function __FUNC_1B67_(arg0, arg1)
					local function __FUNC_1D17_(arg0, arg1)
						local function __FUNC_1EC7_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 0.000000, 480.000000)
							arg0:setTopBottom(true, false, 0.000000, 120.000000)
							arg0:setScale(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1EC7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 0.000000, 480.000000)
						arg0:setScale(1.010000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EC7_)
					end

					if arg1.interrupted then
						__FUNC_1D17_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 3.000000, 483.000000)
					arg0:setScale(1.030000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D17_)
				end

				if arg1.interrupted then
					__FUNC_1B67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(1.040000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B67_)
			end

			if arg1.interrupted then
				__FUNC_19EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.050000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19EF_)
		end

		registerVal7:completeAnimation()
		registerVal2.biker:setLeftRight(true, false, 0.000000, 480.000000)
		registerVal2.biker:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.biker:setScale(1.000000)
		__FUNC_1875_(registerVal7, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_A3E_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

