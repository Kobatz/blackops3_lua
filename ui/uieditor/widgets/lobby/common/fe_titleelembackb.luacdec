-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_TitleElemBackB = registerVal1
function CoD.FE_TitleElemBackB.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_TitleElemBackB)
	registerVal2.id = "FE_TitleElemBackB"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 28.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 28.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setZoom(-30.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_titlebackthicke"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.backb = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5A2_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_70A_(arg0, arg1)
			local function __FUNC_898_(arg0, arg1)
				local function __FUNC_9F0_(arg0, arg1)
					local function __FUNC_B80_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 2329.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 0.000000, 28.000000)
						arg0:setTopBottom(true, false, 0.000000, 120.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B80_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 3369.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 0.000000, 28.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B80_)
				end

				if arg1.interrupted then
					__FUNC_9F0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1909.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F0_)
			end

			if arg1.interrupted then
				__FUNC_898_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 3960.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 13.000000, 41.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_898_)
		end

		registerVal3:completeAnimation()
		registerVal2.backb:setLeftRight(true, false, 0.000000, 28.000000)
		registerVal2.backb:setTopBottom(true, false, 0.000000, 120.000000)
		__FUNC_70A_(registerVal3, {})
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

