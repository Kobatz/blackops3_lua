-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.fe_RightContainerMain")
require("ui.uieditor.widgets.Footer.fe_LeftContainerMain")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.fe_FooterContainerMain = registerVal1
function CoD.fe_FooterContainerMain.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.fe_FooterContainerMain)
	registerVal2.id = "fe_FooterContainerMain"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -123.000000, 131.500000)
	registerVal3:setTopBottom(false, true, -40.000000, 149.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.650000)
	registerVal2:addElement(registerVal3)
	registerVal2.blackleftBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -123.000000, 131.500000)
	registerVal4:setTopBottom(false, true, -41.850000, -37.850000)
	registerVal4:setAlpha(0.550000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_featuredframeum"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.LineLeft = registerVal4
	local registerVal5 = CoD.fe_RightContainerMain.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -930.000000, -48.000000)
	registerVal5:setTopBottom(false, true, -65.000000, -4.000000)
	local function __FUNC_945_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_945_)
	registerVal2:addElement(registerVal5)
	registerVal2.feRightContainer = registerVal5
	local registerVal6 = CoD.fe_LeftContainerMain.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 47.000000, 509.000000)
	registerVal6:setTopBottom(false, true, -29.500000, -11.500000)
	registerVal2:addElement(registerVal6)
	registerVal2.PressStartText = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_996_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_B81_(arg0, arg1)
			local function __FUNC_CD8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.650000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_CD8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD8_)
		end

		registerVal3:completeAnimation()
		registerVal2.blackleftBG:setAlpha(0.000000)
		__FUNC_B81_(registerVal3, {})
		local function __FUNC_E8D_(arg0, arg1)
			local function __FUNC_FE4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.550000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_FE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE4_)
		end

		registerVal4:completeAnimation()
		registerVal2.LineLeft:setAlpha(0.000000)
		__FUNC_E8D_(registerVal4, {})
		local function __FUNC_1199_(arg0, arg1)
			local function __FUNC_12F0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_12F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12F0_)
		end

		registerVal5:completeAnimation()
		registerVal2.feRightContainer:setAlpha(0.000000)
		__FUNC_1199_(registerVal5, {})
		local function __FUNC_14A5_(arg0, arg1)
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
		registerVal2.PressStartText:setAlpha(0.000000)
		__FUNC_14A5_(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_996_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_1659_(arg0)
		arg0.feRightContainer:close()
		arg0.PressStartText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1659_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

