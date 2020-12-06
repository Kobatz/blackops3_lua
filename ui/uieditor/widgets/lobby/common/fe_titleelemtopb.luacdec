-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_TitleElemTopB = registerVal1
function CoD.FE_TitleElemTopB.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_TitleElemTopB)
	registerVal2.id = "FE_TitleElemTopB"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 56.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 4.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 10.400000, 66.400000)
	registerVal3:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_titlebackthicktopb"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.topb = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_58B_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_6F1_(arg0, arg1)
			local function __FUNC_880_(arg0, arg1)
				local function __FUNC_9D8_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 8139.000000, true, true, CoD.TweenType.Linear)
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
					__FUNC_9D8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 4000.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D8_)
			end

			if arg1.interrupted then
				__FUNC_880_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10500.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 12.000000, 68.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_880_)
		end

		registerVal3:completeAnimation()
		registerVal2.topb:setLeftRight(true, false, 0.000000, 56.000000)
		registerVal2.topb:setTopBottom(true, false, 0.000000, 4.000000)
		__FUNC_6F1_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_58B_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

