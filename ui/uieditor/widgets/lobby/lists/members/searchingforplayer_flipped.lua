-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SearchingForPlayer_Flipped = registerVal1
function CoD.SearchingForPlayer_Flipped.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SearchingForPlayer_Flipped)
	registerVal2.id = "SearchingForPlayer_Flipped"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 4.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3:setText(Engine.Localize("."))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.Dot3 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 4.000000, 8.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal4:setText(Engine.Localize("."))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.Dot2 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 8.000000, 12.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal5:setText(Engine.Localize("."))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.Dot1 = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 12.000000, 16.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal6:setText(Engine.Localize("."))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.Dot0 = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 16.000000, 352.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal7:setText(Engine.Localize("MENU_SEARCHING_FOR_PLAYER"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.SearchingForPlayer = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_934_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_B34_(arg0, arg1)
			local function __FUNC_C8C_(arg0, arg1)
				local function __FUNC_E07_(arg0, arg1)
					local function __FUNC_F5C_(arg0, arg1)
						local function __FUNC_10D7_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_10D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D7_)
					end

					if arg1.interrupted then
						__FUNC_F5C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F5C_)
				end

				if arg1.interrupted then
					__FUNC_E07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E07_)
			end

			if arg1.interrupted then
				__FUNC_C8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8C_)
		end

		registerVal3:completeAnimation()
		registerVal2.Dot3:setAlpha(0.000000)
		__FUNC_B34_(registerVal3, {})
		local function __FUNC_1289_(arg0, arg1)
			local function __FUNC_13E0_(arg0, arg1)
				local function __FUNC_155B_(arg0, arg1)
					local function __FUNC_16B0_(arg0, arg1)
						local function __FUNC_182B_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_182B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_182B_)
					end

					if arg1.interrupted then
						__FUNC_16B0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16B0_)
				end

				if arg1.interrupted then
					__FUNC_155B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_155B_)
			end

			if arg1.interrupted then
				__FUNC_13E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13E0_)
		end

		registerVal4:completeAnimation()
		registerVal2.Dot2:setAlpha(0.000000)
		__FUNC_1289_(registerVal4, {})
		local function __FUNC_19DD_(arg0, arg1)
			local function __FUNC_1B34_(arg0, arg1)
				local function __FUNC_1CAF_(arg0, arg1)
					local function __FUNC_1E04_(arg0, arg1)
						local function __FUNC_1F7F_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1F7F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F7F_)
					end

					if arg1.interrupted then
						__FUNC_1E04_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1200.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E04_)
				end

				if arg1.interrupted then
					__FUNC_1CAF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CAF_)
			end

			if arg1.interrupted then
				__FUNC_1B34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B34_)
		end

		registerVal5:completeAnimation()
		registerVal2.Dot1:setAlpha(0.000000)
		__FUNC_19DD_(registerVal5, {})
		local function __FUNC_2131_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Dot0:setAlpha(1.000000)
		__FUNC_2131_(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_934_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

