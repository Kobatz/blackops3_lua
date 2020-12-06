-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_loot_Manga = registerVal1
function CoD.CallingCards_loot_Manga.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_loot_Manga)
	registerVal2.id = "CallingCards_loot_Manga"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 122.000000)
	registerVal3:setImage(RegisterImage("uie_t7_loot_callingcard_manga_flying_kick_master_bg1"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 122.000000)
	registerVal4:setImage(RegisterImage("uie_t7_loot_callingcard_manga_flying_kick_master_bg2"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 122.000000)
	registerVal5:setImage(RegisterImage("uie_t7_loot_callingcard_manga_flying_kick_master_bg3"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image10 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_6C5_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_897_(arg0, arg1)
			local function __FUNC_9EC_(arg0, arg1)
				local function __FUNC_B67_(arg0, arg1)
					local function __FUNC_CBC_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_CBC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CBC_)
				end

				if arg1.interrupted then
					__FUNC_B67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B67_)
			end

			if arg1.interrupted then
				__FUNC_9EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9EC_)
		end

		registerVal4:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		__FUNC_897_(registerVal4, {})
		local function __FUNC_E71_(arg0, arg1)
			local function __FUNC_FC8_(arg0, arg1)
				local function __FUNC_1143_(arg0, arg1)
					local function __FUNC_1298_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1298_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1298_)
				end

				if arg1.interrupted then
					__FUNC_1143_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1143_)
			end

			if arg1.interrupted then
				__FUNC_FC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 550.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC8_)
		end

		registerVal5:completeAnimation()
		registerVal2.Image10:setAlpha(0.000000)
		__FUNC_E71_(registerVal5, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal7.DefaultClip = __FUNC_6C5_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

