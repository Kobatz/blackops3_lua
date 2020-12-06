-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_background")
require("ui.uieditor.widgets.playercard.CallingCard")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SelfIdentityBadge = registerVal1
function CoD.SelfIdentityBadge.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SelfIdentityBadge)
	registerVal2.id = "SelfIdentityBadge"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 342.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Social_background.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -244.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardBG = registerVal3
	local registerVal4 = CoD.Social_background.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -342.000000, -244.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.emblemBG = registerVal4
	local registerVal5 = CoD.CallingCard.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -244.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 60.000000)
	local function __FUNC_975_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_975_)
	local function __FUNC_9C6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.SocialCallingCardSubTitle.FEListSubHeaderPanel0:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "clantag", true, __FUNC_9C6_)
	local function __FUNC_AD6_(arg2)
		CallingCards_EmblemGetProfile(arg0, registerVal5, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "PerController", "CallingCardsIdentity.GetPublicProfileComplete", __FUNC_AD6_)
	registerVal2:addElement(registerVal5)
	registerVal2.CallingCard = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -342.000000, -244.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 60.000000)
	local function __FUNC_B3F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "xuid", true, __FUNC_B3F_)
	registerVal2:addElement(registerVal6)
	registerVal2.emblem = registerVal6
	local registerVal7 = LUI.UIElement.new()
	registerVal7:setLeftRight(true, false, -56.500000, -8.500000)
	registerVal7:setTopBottom(true, false, -60.500000, -12.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.Sound = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_BE0_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.CallingCardBG:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.emblemBG:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCard:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.emblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_BE0_
	local function __FUNC_DE8_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1254_(arg0, arg1)
			local function __FUNC_1407_(arg0, arg1)
				local function __FUNC_155C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, true, -244.000000, 0.000000)
					arg0:setTopBottom(true, false, 0.000000, 60.000000)
					arg0:setRGB(1.000000, 1.000000, 1.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_155C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1980.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_155C_)
			end

			if arg1.interrupted then
				__FUNC_1407_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, true, -244.000000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1407_)
		end

		registerVal3:completeAnimation()
		registerVal2.CallingCardBG:setLeftRight(false, true, 426.000000, 670.000000)
		registerVal2.CallingCardBG:setTopBottom(true, false, 0.000000, 60.000000)
		registerVal2.CallingCardBG:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.CallingCardBG:setAlpha(0.000000)
		__FUNC_1254_(registerVal3, {})
		local function __FUNC_17A0_(arg0, arg1)
			local function __FUNC_1953_(arg0, arg1)
				local function __FUNC_1AA8_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, true, -342.000000, -244.000000)
					arg0:setTopBottom(true, false, 0.000000, 60.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1AA8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1980.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AA8_)
			end

			if arg1.interrupted then
				__FUNC_1953_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, true, -342.000000, -244.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1953_)
		end

		registerVal4:completeAnimation()
		registerVal2.emblemBG:setLeftRight(false, true, 328.000000, 426.000000)
		registerVal2.emblemBG:setTopBottom(true, false, 0.000000, 60.000000)
		registerVal2.emblemBG:setAlpha(0.000000)
		__FUNC_17A0_(registerVal4, {})
		local function __FUNC_1CC8_(arg0, arg1)
			local function __FUNC_1E7B_(arg0, arg1)
				local function __FUNC_1FF3_(arg0, arg1)
					local function __FUNC_216B_(arg0, arg1)
						local function __FUNC_22E3_(arg0, arg1)
							local function __FUNC_245B_(arg0, arg1)
								local function __FUNC_25B0_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(false, true, -244.000000, 0.000000)
									arg0:setTopBottom(true, false, 0.000000, 60.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_25B0_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 1840.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25B0_)
							end

							if arg1.interrupted then
								__FUNC_245B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_245B_)
						end

						if arg1.interrupted then
							__FUNC_22E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22E3_)
					end

					if arg1.interrupted then
						__FUNC_216B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_216B_)
				end

				if arg1.interrupted then
					__FUNC_1FF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FF3_)
			end

			if arg1.interrupted then
				__FUNC_1E7B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, true, -244.000000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E7B_)
		end

		registerVal5:completeAnimation()
		registerVal2.CallingCard:setLeftRight(false, true, 426.000000, 670.000000)
		registerVal2.CallingCard:setTopBottom(true, false, 0.000000, 60.000000)
		registerVal2.CallingCard:setAlpha(0.000000)
		__FUNC_1CC8_(registerVal5, {})
		local function __FUNC_27CB_(arg0, arg1)
			local function __FUNC_297B_(arg0, arg1)
				local function __FUNC_2AF3_(arg0, arg1)
					local function __FUNC_2C6B_(arg0, arg1)
						local function __FUNC_2DE3_(arg0, arg1)
							local function __FUNC_2F5B_(arg0, arg1)
								local function __FUNC_30B0_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(false, true, -342.000000, -244.000000)
									arg0:setTopBottom(true, false, 0.000000, 60.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_30B0_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 1840.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30B0_)
							end

							if arg1.interrupted then
								__FUNC_2F5B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F5B_)
						end

						if arg1.interrupted then
							__FUNC_2DE3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DE3_)
					end

					if arg1.interrupted then
						__FUNC_2C6B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C6B_)
				end

				if arg1.interrupted then
					__FUNC_2AF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AF3_)
			end

			if arg1.interrupted then
				__FUNC_297B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, true, -342.000000, -244.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_297B_)
		end

		registerVal6:completeAnimation()
		registerVal2.emblem:setLeftRight(false, true, 328.000000, 426.000000)
		registerVal2.emblem:setTopBottom(true, false, 0.000000, 60.000000)
		registerVal2.emblem:setAlpha(0.000000)
		__FUNC_27CB_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Sound:setPlaySoundDirect(true)
		registerVal2.Sound:playSound("uin_bm_slideout", arg1)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.ShowBadge = __FUNC_DE8_
	local function __FUNC_32D0_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.CallingCardBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.emblemBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.emblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.Hide = __FUNC_32D0_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_34D8_(arg0)
		arg0.CallingCardBG:close()
		arg0.emblemBG:close()
		arg0.CallingCard:close()
		arg0.emblem:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_34D8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

