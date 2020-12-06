-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_ReturnFire_Stars")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_ReturnFireWidget = registerVal1
function CoD.CallingCards_ReturnFireWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_ReturnFireWidget)
	registerVal2.id = "CallingCards_ReturnFireWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_returnfire_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 352.620000)
	registerVal4:setTopBottom(true, false, 24.790000, 98.480000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_returnfire_rainbow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal4:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.600000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.rainbow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 284.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 8.000000, 106.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_returnfire_cat"))
	registerVal2:addElement(registerVal5)
	registerVal2.cat = registerVal5
	local registerVal6 = CoD.CallingCards_ReturnFire_Stars.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 253.020000, 352.620000)
	registerVal6:setTopBottom(true, false, 15.640000, 106.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.CallingCardsReturnFireStars = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_923_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_B23_(arg0, arg1)
			local function __FUNC_CB0_(arg0, arg1)
				local function __FUNC_E40_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 284.000000, 480.000000)
					arg0:setTopBottom(true, false, 8.000000, 106.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_E40_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 0.480000, 98.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E40_)
			end

			if arg1.interrupted then
				__FUNC_CB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 10.640000, 108.640000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB0_)
		end

		registerVal5:completeAnimation()
		registerVal2.cat:setLeftRight(true, false, 284.000000, 480.000000)
		registerVal2.cat:setTopBottom(true, false, 8.000000, 106.000000)
		__FUNC_B23_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CallingCardsReturnFireStars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_923_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_1042_(arg0)
		arg0.CallingCardsReturnFireStars:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1042_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

