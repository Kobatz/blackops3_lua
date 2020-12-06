-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SearchingForPlayer = registerVal1
function CoD.SearchingForPlayer.new(arg0, arg1)
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
	registerVal2:setClass(CoD.SearchingForPlayer)
	registerVal2.id = "SearchingForPlayer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3:setText(Engine.Localize("MENU_SEARCHING_FOR_PLAYER"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.SearchingForPlayer = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 200.000000, 204.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal4:setText(Engine.Localize("."))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.Dot0 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 204.000000, 208.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal5:setText(Engine.Localize("."))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.Dot1 = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 208.000000, 212.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal6:setText(Engine.Localize("."))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.Dot2 = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 212.000000, 216.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal7:setText(Engine.Localize("."))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.Dot3 = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 216.000000, 220.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal8:setText(Engine.Localize("."))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal8)
	registerVal2.Dot4 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_9B0_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_BFE_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.Dot0:setAlpha(1.000000)
		__FUNC_BFE_(registerVal4, {})
		local function __FUNC_DB1_(arg0, arg1)
			local function __FUNC_F08_(arg0, arg1)
				local function __FUNC_1083_(arg0, arg1)
					local function __FUNC_11D8_(arg0, arg1)
						local function __FUNC_1353_(arg0, arg1)
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
							__FUNC_1353_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1353_)
					end

					if arg1.interrupted then
						__FUNC_11D8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1200.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D8_)
				end

				if arg1.interrupted then
					__FUNC_1083_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1083_)
			end

			if arg1.interrupted then
				__FUNC_F08_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F08_)
		end

		registerVal5:completeAnimation()
		registerVal2.Dot1:setAlpha(0.000000)
		__FUNC_DB1_(registerVal5, {})
		local function __FUNC_1505_(arg0, arg1)
			local function __FUNC_165C_(arg0, arg1)
				local function __FUNC_17D7_(arg0, arg1)
					local function __FUNC_192C_(arg0, arg1)
						local function __FUNC_1AA7_(arg0, arg1)
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
							__FUNC_1AA7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AA7_)
					end

					if arg1.interrupted then
						__FUNC_192C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_192C_)
				end

				if arg1.interrupted then
					__FUNC_17D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17D7_)
			end

			if arg1.interrupted then
				__FUNC_165C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_165C_)
		end

		registerVal6:completeAnimation()
		registerVal2.Dot2:setAlpha(0.000000)
		__FUNC_1505_(registerVal6, {})
		local function __FUNC_1C59_(arg0, arg1)
			local function __FUNC_1DB0_(arg0, arg1)
				local function __FUNC_1F2B_(arg0, arg1)
					local function __FUNC_2080_(arg0, arg1)
						local function __FUNC_21FB_(arg0, arg1)
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
							__FUNC_21FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21FB_)
					end

					if arg1.interrupted then
						__FUNC_2080_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2080_)
				end

				if arg1.interrupted then
					__FUNC_1F2B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F2B_)
			end

			if arg1.interrupted then
				__FUNC_1DB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DB0_)
		end

		registerVal7:completeAnimation()
		registerVal2.Dot3:setAlpha(0.000000)
		__FUNC_1C59_(registerVal7, {})
		local function __FUNC_23AD_(arg0, arg1)
			local function __FUNC_2504_(arg0, arg1)
				local function __FUNC_265C_(arg0, arg1)
					local function __FUNC_27B4_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_27B4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27B4_)
				end

				if arg1.interrupted then
					__FUNC_265C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_265C_)
			end

			if arg1.interrupted then
				__FUNC_2504_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2504_)
		end

		registerVal8:completeAnimation()
		registerVal2.Dot4:setAlpha(0.000000)
		__FUNC_23AD_(registerVal8, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal10.DefaultClip = __FUNC_9B0_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

