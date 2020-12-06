-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_loot_Dinosaur = registerVal1
function CoD.CallingCards_loot_Dinosaur.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_loot_Dinosaur)
	registerVal2.id = "CallingCards_loot_Dinosaur"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_loot_callingcard_dinosaurs_master_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 53.260000, 589.070000)
	registerVal4:setTopBottom(true, false, -81.860000, 81.860000)
	registerVal4:setRGB(0.930000, 1.000000, 0.720000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow00 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_loot_callingcard_dinosaurs_master_dino1"))
	registerVal2:addElement(registerVal5)
	registerVal2.Dino2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal6:setImage(RegisterImage("uie_t7_loot_callingcard_dinosaurs_master_dino2"))
	registerVal2:addElement(registerVal6)
	registerVal2.Dino1 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 119.000000, 181.000000)
	registerVal7:setTopBottom(true, false, 20.000000, 82.000000)
	registerVal7:setImage(RegisterImage("uie_t7_loot_callingcard_dinosaurs_master_ray2"))
	registerVal2:addElement(registerVal7)
	registerVal2.glow1 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 119.000000, 181.000000)
	registerVal8:setTopBottom(true, false, 20.000000, 82.000000)
	registerVal8:setImage(RegisterImage("uie_t7_loot_callingcard_dinosaurs_master_ray1"))
	registerVal2:addElement(registerVal8)
	registerVal2.glow2 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_9BD_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_D14_(arg0, arg1)
			local function __FUNC_E8F_(arg0, arg1)
				local function __FUNC_1007_(arg0, arg1)
					local function __FUNC_117F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1060.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_117F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_117F_)
				end

				if arg1.interrupted then
					__FUNC_1007_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 690.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1007_)
			end

			if arg1.interrupted then
				__FUNC_E8F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E8F_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow00:setAlpha(0.000000)
		__FUNC_D14_(registerVal4, {})
		local function __FUNC_1331_(arg0, arg1)
			local function __FUNC_14C0_(arg0, arg1)
				local function __FUNC_1650_(arg0, arg1)
					local function __FUNC_17E0_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 0.000000, 480.000000)
						arg0:setTopBottom(true, false, 0.000000, 120.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_17E0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -11.000000, 469.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17E0_)
				end

				if arg1.interrupted then
					__FUNC_1650_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 0.000000, 480.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1650_)
			end

			if arg1.interrupted then
				__FUNC_14C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -11.000000, 469.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14C0_)
		end

		registerVal5:completeAnimation()
		registerVal2.Dino2:setLeftRight(true, false, 0.000000, 480.000000)
		registerVal2.Dino2:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.Dino2:setAlpha(1.000000)
		__FUNC_1331_(registerVal5, {})
		local function __FUNC_1A00_(arg0, arg1)
			local function __FUNC_1B90_(arg0, arg1)
				local function __FUNC_1D20_(arg0, arg1)
					local function __FUNC_1EB0_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1030.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 0.000000, 480.000000)
						arg0:setTopBottom(true, false, 0.000000, 120.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1EB0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 18.000000, 498.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EB0_)
				end

				if arg1.interrupted then
					__FUNC_1D20_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 0.000000, 480.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D20_)
			end

			if arg1.interrupted then
				__FUNC_1B90_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 18.000000, 498.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B90_)
		end

		registerVal6:completeAnimation()
		registerVal2.Dino1:setLeftRight(true, false, 0.000000, 480.000000)
		registerVal2.Dino1:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.Dino1:setAlpha(1.000000)
		__FUNC_1A00_(registerVal6, {})
		local function __FUNC_20D0_(arg0, arg1)
			local function __FUNC_224B_(arg0, arg1)
				local function __FUNC_23C3_(arg0, arg1)
					local function __FUNC_253B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_253B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.110000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_253B_)
				end

				if arg1.interrupted then
					__FUNC_23C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23C3_)
			end

			if arg1.interrupted then
				__FUNC_224B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.110000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_224B_)
		end

		registerVal7:completeAnimation()
		registerVal2.glow1:setAlpha(1.000000)
		__FUNC_20D0_(registerVal7, {})
		local function __FUNC_26ED_(arg0, arg1)
			local function __FUNC_288A_(arg0, arg1)
				local function __FUNC_2A26_(arg0, arg1)
					local function __FUNC_2BC2_(arg0, arg1)
						local function __FUNC_2D5E_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setScale(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2D5E_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.720000)
						arg0:setScale(1.700000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D5E_)
					end

					if arg1.interrupted then
						__FUNC_2BC2_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:setScale(1.260000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BC2_)
				end

				if arg1.interrupted then
					__FUNC_2A26_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A26_)
			end

			if arg1.interrupted then
				__FUNC_288A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_288A_)
		end

		registerVal8:completeAnimation()
		registerVal2.glow2:setAlpha(0.000000)
		registerVal2.glow2:setScale(1.000000)
		__FUNC_26ED_(registerVal8, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal10.DefaultClip = __FUNC_9BD_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

