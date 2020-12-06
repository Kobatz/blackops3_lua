-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_alertStatusBar")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Compact_BasicFrame")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_Compact_Layout = registerVal1
function CoD.systemOverlay_Compact_Layout.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_Compact_Layout)
	registerVal2.id = "systemOverlay_Compact_Layout"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setImage(RegisterImage("uie_default_white_255"))
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 180.000000, 414.000000)
	registerVal4:setRGB(0.070000, 0.070000, 0.080000)
	registerVal4:setAlpha(0.800000)
	registerVal2:addElement(registerVal4)
	registerVal2.backing = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal5:setTopBottom(true, false, 184.000000, 375.000000)
	registerVal5:setAlpha(0.250000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_master0_overlays_bkg"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Ambers = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 377.000000, 413.000000)
	registerVal6:setRGB(0.130000, 0.110000, 0.120000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.buttonBacking = registerVal6
	local registerVal7 = CoD.systemOverlay_alertStatusBar.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 180.000000, 184.000000)
	local function __FUNC_D87_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_D87_)
	registerVal2:addElement(registerVal7)
	registerVal2.alertStatusBar = registerVal7
	local registerVal8 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, false)
	registerVal8:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal8:setTopBottom(true, false, 184.000000, 368.000000)
	local function __FUNC_DD6_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_DD6_)
	local function __FUNC_E26_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:changeFrameWidget(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "frameWidget", true, __FUNC_E26_)
	registerVal2:addElement(registerVal8)
	registerVal2.frameWidget = registerVal8
	local registerVal9 = CoD.fe_LeftContainer_NOTLobby.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -232.000000, 200.000000)
	registerVal9:setTopBottom(true, false, 380.000000, 412.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.buttons = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 375.000000, 379.150000)
	registerVal10:setAlpha(0.900000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_featuredframeum"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.LineLeft = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_EC2_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.background:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_130C_(arg0, arg1)
			local function __FUNC_1464_(arg0, arg1)
				local function __FUNC_15DF_(arg0, arg1)
					local function __FUNC_1757_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.850000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1757_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1757_)
				end

				if arg1.interrupted then
					__FUNC_15DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15DF_)
			end

			if arg1.interrupted then
				__FUNC_1464_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1464_)
		end

		registerVal4:completeAnimation()
		registerVal2.backing:setAlpha(0.000000)
		__FUNC_130C_(registerVal4, {})
		local function __FUNC_1909_(arg0, arg1)
			local function __FUNC_1A60_(arg0, arg1)
				local function __FUNC_1BDB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.250000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1BDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BDB_)
			end

			if arg1.interrupted then
				__FUNC_1A60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A60_)
		end

		registerVal5:completeAnimation()
		registerVal2.Ambers:setAlpha(0.000000)
		registerVal2.Ambers:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_1909_(registerVal5, {})
		local function __FUNC_1E17_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.buttonBacking:setAlpha(0.000000)
		__FUNC_1E17_(registerVal6, {})
		local function __FUNC_1FC9_(arg0, arg1)
			local function __FUNC_217B_(arg0, arg1)
				local function __FUNC_232B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(true, false, 180.000000, 184.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_232B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 177.060000, 181.060000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_232B_)
			end

			if arg1.interrupted then
				__FUNC_217B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, true, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 175.000000, 179.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_217B_)
		end

		registerVal7:completeAnimation()
		registerVal2.alertStatusBar:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.alertStatusBar:setTopBottom(true, false, -70.000000, -66.000000)
		registerVal2.alertStatusBar:setAlpha(0.000000)
		__FUNC_1FC9_(registerVal7, {})
		local function __FUNC_2548_(arg0, arg1)
			local function __FUNC_26A0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 39.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_26A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26A0_)
		end

		registerVal8:completeAnimation()
		registerVal2.frameWidget:setAlpha(0.000000)
		__FUNC_2548_(registerVal8, {})
		local function __FUNC_2855_(arg0, arg1)
			local function __FUNC_29AC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 39.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_29AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29AC_)
		end

		registerVal9:completeAnimation()
		registerVal2.buttons:setAlpha(0.000000)
		__FUNC_2855_(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_EC2_
	registerVal11.DefaultState = registerVal12
	registerVal2.clipsPerState = registerVal11
	registerVal8.id = "frameWidget"
	local function __FUNC_2B61_(arg0, arg1)
		local registerVal2 = arg0.frameWidget:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2B61_)
	local function __FUNC_2C67_(arg0)
		arg0.alertStatusBar:close()
		arg0.buttons:close()
		arg0.frameWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2C67_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

