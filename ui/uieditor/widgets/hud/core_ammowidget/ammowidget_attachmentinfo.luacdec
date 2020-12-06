-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_TextAttachmentInfo")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_TextAttachmentInfoFire")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_Pixel")
local function __FUNC_2ED_(arg0, arg1)
	local registerVal3, registerVal4 = CoD.CACUtility.GetWeaponAndAttachments(arg0.AttachmentInfo, arg1)
	if not arg0.AttachmentInfo.currentWeapon then
		return 
	end
	if arg0.AttachmentInfo.currentWeapon ~= arg0.AttachmentInfo.currentWeapon or registerVal4 then
		arg0.AttachmentInfo:UpdateAttachments()
	end
	if registerVal3 == 0.000000 then
	end
	if arg0.currentState ~= "NoAttachments" then
		arg0:setState("NoAttachments")
	else
		if arg0.AttachmentInfo.currentWeapon ~= arg0.AttachmentInfo.currentWeapon or registerVal4 then
			arg0:playClip("DefaultClip")
		end
	end
end

local function __FUNC_535_(arg0, arg1)
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.GetModel(registerVal5, "currentWeapon.updateWeaponSelect")
	local function __FUNC_62D_(arg2)
		__FUNC_2ED_(arg0, arg1)
	end

	arg0:subscribeToModel(registerVal4, __FUNC_62D_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_AttachmentInfo = registerVal3
local function __FUNC_668_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_AttachmentInfo)
	registerVal2.id = "AmmoWidget_AttachmentInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 316.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidget_TextAttachmentInfo.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -296.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -18.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.AttachmentInfo = registerVal3
	local registerVal4 = CoD.AmmoWidget_TextAttachmentInfoFire.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -296.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -18.000000, 0.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, -1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.AttachmentInfoFireRate = registerVal4
	local registerVal5 = CoD.DamageWidget_Pixel.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 224.250000, 235.250000)
	registerVal5:setTopBottom(true, false, 4.500000, 6.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Pixel0 = registerVal5
	local registerVal6 = CoD.DamageWidget_Pixel.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 224.250000, 235.250000)
	registerVal6:setTopBottom(true, false, 12.500000, 14.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Pixel1 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_E08_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_118D_(arg0, arg1)
			local function __FUNC_12E4_(arg0, arg1)
				local function __FUNC_145F_(arg0, arg1)
					local function __FUNC_15D7_(arg0, arg1)
						local function __FUNC_174F_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_174F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_174F_)
					end

					if arg1.interrupted then
						__FUNC_15D7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.930000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D7_)
				end

				if arg1.interrupted then
					__FUNC_145F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_145F_)
			end

			if arg1.interrupted then
				__FUNC_12E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12E4_)
		end

		registerVal3:completeAnimation()
		registerVal2.AttachmentInfo:setAlpha(1.000000)
		__FUNC_118D_(registerVal3, {})
		local function __FUNC_1901_(arg0, arg1)
			local function __FUNC_1A58_(arg0, arg1)
				local function __FUNC_1BD3_(arg0, arg1)
					local function __FUNC_1D4B_(arg0, arg1)
						local function __FUNC_1EC3_(arg0, arg1)
							local function __FUNC_203B_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_203B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_203B_)
						end

						if arg1.interrupted then
							__FUNC_1EC3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EC3_)
					end

					if arg1.interrupted then
						__FUNC_1D4B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D4B_)
				end

				if arg1.interrupted then
					__FUNC_1BD3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.670000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BD3_)
			end

			if arg1.interrupted then
				__FUNC_1A58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A58_)
		end

		registerVal4:completeAnimation()
		registerVal2.AttachmentInfoFireRate:setAlpha(0.000000)
		__FUNC_1901_(registerVal4, {})
		local function __FUNC_21ED_(arg0, arg1)
			local function __FUNC_2367_(arg0, arg1)
				local function __FUNC_24BC_(arg0, arg1)
					local function __FUNC_2637_(arg0, arg1)
						local function __FUNC_278C_(arg0, arg1)
							local function __FUNC_2977_(arg0, arg1)
								local function __FUNC_2ACC_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, false, 224.250000, 252.250000)
									arg0:setTopBottom(true, false, 13.500000, 11.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2ACC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ACC_)
							end

							if arg1.interrupted then
								__FUNC_2977_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 224.250000, 252.250000)
							arg0:setTopBottom(true, false, 13.500000, 11.000000)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2977_)
						end

						if arg1.interrupted then
							__FUNC_278C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_278C_)
					end

					if arg1.interrupted then
						__FUNC_2637_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2637_)
				end

				if arg1.interrupted then
					__FUNC_24BC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24BC_)
			end

			if arg1.interrupted then
				__FUNC_2367_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2367_)
		end

		registerVal5:beginAnimation("keyframe", 2099.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setLeftRight(true, false, 224.250000, 295.250000)
		registerVal5:setTopBottom(true, false, 9.500000, 11.000000)
		registerVal5:setAlpha(0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_21ED_)
		local function __FUNC_2CF1_(arg0, arg1)
			local function __FUNC_2E6B_(arg0, arg1)
				local function __FUNC_2FC0_(arg0, arg1)
					local function __FUNC_313B_(arg0, arg1)
						local function __FUNC_3290_(arg0, arg1)
							local function __FUNC_347B_(arg0, arg1)
								local function __FUNC_35D0_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, false, 224.250000, 295.250000)
									arg0:setTopBottom(true, false, 4.500000, 3.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_35D0_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35D0_)
							end

							if arg1.interrupted then
								__FUNC_347B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 224.250000, 295.250000)
							arg0:setTopBottom(true, false, 4.500000, 3.000000)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_347B_)
						end

						if arg1.interrupted then
							__FUNC_3290_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3290_)
					end

					if arg1.interrupted then
						__FUNC_313B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_313B_)
				end

				if arg1.interrupted then
					__FUNC_2FC0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FC0_)
			end

			if arg1.interrupted then
				__FUNC_2E6B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E6B_)
		end

		registerVal6:beginAnimation("keyframe", 2009.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setLeftRight(true, false, 239.250000, 250.250000)
		registerVal6:setTopBottom(true, false, 6.500000, 3.000000)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_2CF1_)
	end

	registerVal8.DefaultClip = __FUNC_E08_
	local function __FUNC_37F5_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_3B76_(arg0, arg1)
			local function __FUNC_3CEF_(arg0, arg1)
				local function __FUNC_3E44_(arg0, arg1)
					local function __FUNC_3FBF_(arg0, arg1)
						local function __FUNC_4114_(arg0, arg1)
							local function __FUNC_428F_(arg0, arg1)
								local function __FUNC_43E4_(arg0, arg1)
									local function __FUNC_455F_(arg0, arg1)
										local function __FUNC_46B4_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_46B4_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46B4_)
									end

									if arg1.interrupted then
										__FUNC_455F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.700000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_455F_)
								end

								if arg1.interrupted then
									__FUNC_43E4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43E4_)
							end

							if arg1.interrupted then
								__FUNC_428F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_428F_)
						end

						if arg1.interrupted then
							__FUNC_4114_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4114_)
					end

					if arg1.interrupted then
						__FUNC_3FBF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FBF_)
				end

				if arg1.interrupted then
					__FUNC_3E44_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E44_)
			end

			if arg1.interrupted then
				__FUNC_3CEF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CEF_)
		end

		registerVal3:completeAnimation()
		registerVal2.AttachmentInfo:setAlpha(1.000000)
		__FUNC_3B76_(registerVal3, {})
		local function __FUNC_4869_(arg0, arg1)
			local function __FUNC_49E3_(arg0, arg1)
				local function __FUNC_4B38_(arg0, arg1)
					local function __FUNC_4CB3_(arg0, arg1)
						local function __FUNC_4E08_(arg0, arg1)
							local function __FUNC_4F83_(arg0, arg1)
								local function __FUNC_50D8_(arg0, arg1)
									local function __FUNC_5253_(arg0, arg1)
										local function __FUNC_53A8_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_53A8_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53A8_)
									end

									if arg1.interrupted then
										__FUNC_5253_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5253_)
								end

								if arg1.interrupted then
									__FUNC_50D8_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50D8_)
							end

							if arg1.interrupted then
								__FUNC_4F83_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.800000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F83_)
						end

						if arg1.interrupted then
							__FUNC_4E08_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E08_)
					end

					if arg1.interrupted then
						__FUNC_4CB3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CB3_)
				end

				if arg1.interrupted then
					__FUNC_4B38_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B38_)
			end

			if arg1.interrupted then
				__FUNC_49E3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49E3_)
		end

		registerVal4:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_4869_)
		local function __FUNC_555D_(arg0, arg1)
			local function __FUNC_56B4_(arg0, arg1)
				local function __FUNC_582F_(arg0, arg1)
					local function __FUNC_5984_(arg0, arg1)
						local function __FUNC_5AFF_(arg0, arg1)
							local function __FUNC_5C54_(arg0, arg1)
								local function __FUNC_5E3F_(arg0, arg1)
									local function __FUNC_5F94_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, false, 224.250000, 235.250000)
										arg0:setTopBottom(true, false, 4.500000, 8.000000)
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_5F94_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F94_)
								end

								if arg1.interrupted then
									__FUNC_5E3F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 224.250000, 235.250000)
								arg0:setTopBottom(true, false, 4.500000, 8.000000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E3F_)
							end

							if arg1.interrupted then
								__FUNC_5C54_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C54_)
						end

						if arg1.interrupted then
							__FUNC_5AFF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AFF_)
					end

					if arg1.interrupted then
						__FUNC_5984_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5984_)
				end

				if arg1.interrupted then
					__FUNC_582F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_582F_)
			end

			if arg1.interrupted then
				__FUNC_56B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56B4_)
		end

		registerVal5:completeAnimation()
		registerVal2.Pixel0:setLeftRight(true, false, 249.250000, 334.250000)
		registerVal2.Pixel0:setTopBottom(true, false, 4.500000, 6.000000)
		registerVal2.Pixel0:setAlpha(0.000000)
		__FUNC_555D_(registerVal5, {})
		local function __FUNC_61B9_(arg0, arg1)
			local function __FUNC_6310_(arg0, arg1)
				local function __FUNC_648B_(arg0, arg1)
					local function __FUNC_65E0_(arg0, arg1)
						local function __FUNC_6770_(arg0, arg1)
							local function __FUNC_68C8_(arg0, arg1)
								local function __FUNC_6A7B_(arg0, arg1)
									local function __FUNC_6C08_(arg0, arg1)
										local function __FUNC_6DF3_(arg0, arg1)
											local function __FUNC_6F48_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 224.250000, 235.250000)
												arg0:setTopBottom(true, false, 10.500000, 14.000000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_6F48_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F48_)
										end

										if arg1.interrupted then
											__FUNC_6DF3_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 224.250000, 235.250000)
										arg0:setTopBottom(true, false, 10.500000, 14.000000)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DF3_)
									end

									if arg1.interrupted then
										__FUNC_6C08_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 249.250000, 334.250000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C08_)
								end

								if arg1.interrupted then
									__FUNC_6A7B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 229.920000, 334.250000)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A7B_)
							end

							if arg1.interrupted then
								__FUNC_68C8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68C8_)
						end

						if arg1.interrupted then
							__FUNC_6770_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 220.250000, 334.250000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6770_)
					end

					if arg1.interrupted then
						__FUNC_65E0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65E0_)
				end

				if arg1.interrupted then
					__FUNC_648B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_648B_)
			end

			if arg1.interrupted then
				__FUNC_6310_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6310_)
		end

		registerVal6:completeAnimation()
		registerVal2.Pixel1:setLeftRight(true, false, 249.250000, 334.250000)
		registerVal2.Pixel1:setTopBottom(true, false, 12.500000, 14.000000)
		registerVal2.Pixel1:setAlpha(0.000000)
		__FUNC_61B9_(registerVal6, {})
	end

	registerVal8.NoAttachments = __FUNC_37F5_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_716D_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.AttachmentInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AttachmentInfoFireRate:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Pixel0:setLeftRight(true, false, 249.250000, 334.250000)
		registerVal2.Pixel0:setTopBottom(true, false, 4.500000, 6.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Pixel1:setLeftRight(true, false, 249.250000, 334.250000)
		registerVal2.Pixel1:setTopBottom(true, false, 12.500000, 14.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_716D_
	local function __FUNC_7435_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_77BF_(arg0, arg1)
			local function __FUNC_7937_(arg0, arg1)
				local function __FUNC_7A8C_(arg0, arg1)
					local function __FUNC_7C07_(arg0, arg1)
						local function __FUNC_7D5C_(arg0, arg1)
							local function __FUNC_7ED7_(arg0, arg1)
								local function __FUNC_802C_(arg0, arg1)
									local function __FUNC_81A7_(arg0, arg1)
										local function __FUNC_82FC_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_82FC_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82FC_)
									end

									if arg1.interrupted then
										__FUNC_81A7_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_81A7_)
								end

								if arg1.interrupted then
									__FUNC_802C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_802C_)
							end

							if arg1.interrupted then
								__FUNC_7ED7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.800000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7ED7_)
						end

						if arg1.interrupted then
							__FUNC_7D5C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D5C_)
					end

					if arg1.interrupted then
						__FUNC_7C07_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C07_)
				end

				if arg1.interrupted then
					__FUNC_7A8C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A8C_)
			end

			if arg1.interrupted then
				__FUNC_7937_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7937_)
		end

		registerVal3:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_77BF_)
		local function __FUNC_84B1_(arg0, arg1)
			local function __FUNC_862B_(arg0, arg1)
				local function __FUNC_8780_(arg0, arg1)
					local function __FUNC_88FB_(arg0, arg1)
						local function __FUNC_8A50_(arg0, arg1)
							local function __FUNC_8BCB_(arg0, arg1)
								local function __FUNC_8D20_(arg0, arg1)
									local function __FUNC_8E9B_(arg0, arg1)
										local function __FUNC_8FF0_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_8FF0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FF0_)
									end

									if arg1.interrupted then
										__FUNC_8E9B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.700000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E9B_)
								end

								if arg1.interrupted then
									__FUNC_8D20_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D20_)
							end

							if arg1.interrupted then
								__FUNC_8BCB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BCB_)
						end

						if arg1.interrupted then
							__FUNC_8A50_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A50_)
					end

					if arg1.interrupted then
						__FUNC_88FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88FB_)
				end

				if arg1.interrupted then
					__FUNC_8780_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8780_)
			end

			if arg1.interrupted then
				__FUNC_862B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_862B_)
		end

		registerVal4:completeAnimation()
		registerVal2.AttachmentInfoFireRate:setAlpha(1.000000)
		__FUNC_84B1_(registerVal4, {})
		local function __FUNC_91A5_(arg0, arg1)
			local function __FUNC_92FC_(arg0, arg1)
				local function __FUNC_9477_(arg0, arg1)
					local function __FUNC_95CC_(arg0, arg1)
						local function __FUNC_9747_(arg0, arg1)
							local function __FUNC_989C_(arg0, arg1)
								local function __FUNC_9A4F_(arg0, arg1)
									local function __FUNC_9BA4_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, false, 224.250000, 235.250000)
										arg0:setTopBottom(true, false, 4.500000, 6.000000)
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_9BA4_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BA4_)
								end

								if arg1.interrupted then
									__FUNC_9A4F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 224.250000, 235.250000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A4F_)
							end

							if arg1.interrupted then
								__FUNC_989C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_989C_)
						end

						if arg1.interrupted then
							__FUNC_9747_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9747_)
					end

					if arg1.interrupted then
						__FUNC_95CC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95CC_)
				end

				if arg1.interrupted then
					__FUNC_9477_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9477_)
			end

			if arg1.interrupted then
				__FUNC_92FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92FC_)
		end

		registerVal5:completeAnimation()
		registerVal2.Pixel0:setLeftRight(true, false, 249.250000, 334.250000)
		registerVal2.Pixel0:setTopBottom(true, false, 4.500000, 6.000000)
		registerVal2.Pixel0:setAlpha(0.000000)
		__FUNC_91A5_(registerVal5, {})
		local function __FUNC_9DC9_(arg0, arg1)
			local function __FUNC_9F43_(arg0, arg1)
				local function __FUNC_A098_(arg0, arg1)
					local function __FUNC_A213_(arg0, arg1)
						local function __FUNC_A3A0_(arg0, arg1)
							local function __FUNC_A4F8_(arg0, arg1)
								local function __FUNC_A688_(arg0, arg1)
									local function __FUNC_A83B_(arg0, arg1)
										local function __FUNC_A990_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setLeftRight(true, false, 224.250000, 235.250000)
											arg0:setTopBottom(true, false, 12.500000, 14.000000)
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_A990_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A990_)
									end

									if arg1.interrupted then
										__FUNC_A83B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 224.250000, 235.250000)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A83B_)
								end

								if arg1.interrupted then
									__FUNC_A688_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 249.250000, 334.250000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A688_)
							end

							if arg1.interrupted then
								__FUNC_A4F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A4F8_)
						end

						if arg1.interrupted then
							__FUNC_A3A0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 220.250000, 334.250000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3A0_)
					end

					if arg1.interrupted then
						__FUNC_A213_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A213_)
				end

				if arg1.interrupted then
					__FUNC_A098_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A098_)
			end

			if arg1.interrupted then
				__FUNC_9F43_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F43_)
		end

		registerVal6:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setLeftRight(true, false, 249.250000, 334.250000)
		registerVal6:setTopBottom(true, false, 12.500000, 14.000000)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_9DC9_)
	end

	registerVal8.DefaultState = __FUNC_7435_
	registerVal7.NoAttachments = registerVal8
	registerVal8 = {}
	local function __FUNC_ABB5_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.AttachmentInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AttachmentInfoFireRate:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_ABB5_
	registerVal7.HeroWeapon = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_AD23_(arg0)
		arg0.AttachmentInfo:close()
		arg0.AttachmentInfoFireRate:close()
		arg0.Pixel0:close()
		arg0.Pixel1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AD23_)
	if __FUNC_535_ then
		__FUNC_535_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AmmoWidget_AttachmentInfo.new = __FUNC_668_
