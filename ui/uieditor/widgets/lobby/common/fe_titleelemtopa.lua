-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_TitleElemTopA = registerVal1
function CoD.FE_TitleElemTopA.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_TitleElemTopA)
	registerVal2.id = "FE_TitleElemTopA"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 56.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 4.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 56.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_titlebackthicktopa"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.topa = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_581_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_6E9_(arg0, arg1)
			local function __FUNC_840_(arg0, arg1)
				local function __FUNC_9D0_(arg0, arg1)
					local function __FUNC_B28_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 8779.000000, true, true, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 0.000000, 56.000000)
						arg0:setTopBottom(true, false, 0.000000, 4.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B28_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 3859.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B28_)
				end

				if arg1.interrupted then
					__FUNC_9D0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 7900.000000, true, true, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -20.000000, 36.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D0_)
			end

			if arg1.interrupted then
				__FUNC_840_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 3279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_840_)
		end

		registerVal3:completeAnimation()
		registerVal2.topa:setLeftRight(true, false, 0.000000, 56.000000)
		registerVal2.topa:setTopBottom(true, false, 0.000000, 4.000000)
		__FUNC_6E9_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_581_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

