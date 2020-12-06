-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_TitleElemForeD = registerVal1
function CoD.FE_TitleElemForeD.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_TitleElemForeD)
	registerVal2.id = "FE_TitleElemForeD"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 28.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 28.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal3:setZoom(20.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_titlebackthickb"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.fored = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5A2_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_7C2_(arg0, arg1)
			local function __FUNC_918_(arg0, arg1)
				local function __FUNC_AA8_(arg0, arg1)
					local function __FUNC_C00_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 6000.000000, true, true, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 0.000000, 28.000000)
						arg0:setTopBottom(true, false, 0.000000, 64.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C00_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 920.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C00_)
				end

				if arg1.interrupted then
					__FUNC_AA8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 5860.000000, true, true, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 6.000000, 34.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AA8_)
			end

			if arg1.interrupted then
				__FUNC_918_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2579.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_918_)
		end

		registerVal3:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
		registerVal2.fored:setLeftRight(true, false, 0.000000, 28.000000)
		registerVal2.fored:setTopBottom(true, false, 0.000000, 64.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_7C2_)
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_5A2_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

