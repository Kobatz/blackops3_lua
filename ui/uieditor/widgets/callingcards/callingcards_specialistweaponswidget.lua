-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_SpecialistWeaponsWidget = registerVal1
function CoD.CallingCards_SpecialistWeaponsWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_SpecialistWeaponsWidget)
	registerVal2.id = "CallingCards_SpecialistWeaponsWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_specilistweapons_firebreak"))
	registerVal2:addElement(registerVal3)
	registerVal2.Firebreak = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcards_specilistweapons_spectre"))
	registerVal2:addElement(registerVal4)
	registerVal2.Spectre = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcards_specilistweapons_seraph"))
	registerVal2:addElement(registerVal5)
	registerVal2.Seraph = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcards_specilistweapons_reaper"))
	registerVal2:addElement(registerVal6)
	registerVal2.Reaper = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcards_specilistweapons_prophet"))
	registerVal2:addElement(registerVal7)
	registerVal2.Prophet = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcards_specilistweapons_outrider"))
	registerVal2:addElement(registerVal8)
	registerVal2.Outrider = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcards_specilistweapons_nomad"))
	registerVal2:addElement(registerVal9)
	registerVal2.Nomad = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcards_specilistweapons_battery"))
	registerVal2:addElement(registerVal10)
	registerVal2.Battery = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal11:setImage(RegisterImage("uie_t7_callingcards_specilistweapons_ruin"))
	registerVal2:addElement(registerVal11)
	registerVal2.Ruin = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_B35_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_10D9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 559.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:beginAnimation("keyframe", 4809.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(1.000000)
		registerVal3:setScale(1.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_10D9_)
		local function __FUNC_12AB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 4199.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(1.000000)
		registerVal4:setScale(1.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_12AB_)
		local function __FUNC_1480_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:beginAnimation("keyframe", 3619.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(1.000000)
		registerVal5:setScale(1.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_1480_)
		local function __FUNC_1658_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 2980.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(1.000000)
		registerVal6:setScale(1.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_1658_)
		local function __FUNC_1830_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 630.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:beginAnimation("keyframe", 2349.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(1.000000)
		registerVal7:setScale(1.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_1830_)
		local function __FUNC_1A08_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:beginAnimation("keyframe", 1759.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(1.000000)
		registerVal8:setScale(1.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_1A08_)
		local function __FUNC_1BE0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:beginAnimation("keyframe", 1159.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(1.000000)
		registerVal9:setScale(1.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_1BE0_)
		local function __FUNC_1DB8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(1.000000)
		registerVal10:setScale(1.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_1DB8_)
		local function __FUNC_1F90_(arg0, arg1)
			local function __FUNC_210B_(arg0, arg1)
				local function __FUNC_2260_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 559.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					arg0:setScale(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2260_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 4219.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2260_)
			end

			if arg1.interrupted then
				__FUNC_210B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_210B_)
		end

		registerVal11:completeAnimation()
		registerVal2.Ruin:setAlpha(1.000000)
		registerVal2.Ruin:setScale(1.000000)
		__FUNC_1F90_(registerVal11, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal13.DefaultClip = __FUNC_B35_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

