-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingMask")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBacking")
require("ui.uieditor.widgets.GenericPopups.List1ButtonLarge_internal")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingFooter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.List1ButtonLarge_Dialog = registerVal1
function CoD.List1ButtonLarge_Dialog.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.List1ButtonLarge_Dialog)
	registerVal2.id = "List1ButtonLarge_Dialog"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 362.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.LobbyMemberBackingMask.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -0.330000, -0.330000)
	registerVal3:setTopBottom(false, false, -14.170000, 14.000000)
	registerVal3:setRGB(0.110000, 0.140000, 0.180000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.LobbyMemberBackingMask0 = registerVal3
	local registerVal4 = CoD.LobbyMemberBacking.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -0.330000, -0.330000)
	registerVal4:setTopBottom(false, false, -14.170000, 14.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.LobbyMemberBacking0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -3.000000, 2.340000)
	registerVal5:setTopBottom(false, false, -11.670000, 12.330000)
	registerVal5:setRGB(0.330000, 0.330000, 0.330000)
	registerVal5:setImage(RegisterImage("uie_img_t7_menu_frontend_asset_list1l_focusline"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.LfocusLINE = registerVal5
	local registerVal6 = CoD.List1ButtonLarge_internal.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 8.820000, -10.180000)
	registerVal6:setTopBottom(false, false, -9.170000, 9.830000)
	registerVal6:setRGB(0.810000, 0.830000, 0.760000)
	registerVal6.Text0:setText(Engine.Localize("BUTTON"))
	registerVal2:addElement(registerVal6)
	registerVal2.buttoninternal0 = registerVal6
	local registerVal7 = CoD.LobbyMemberBackingFooter.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, -2.500000, 2.000000)
	registerVal7:setTopBottom(false, false, 11.000000, 14.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.LobbyMemberBackingFooter0 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_E01_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setLeftRight(true, true, -0.330000, -0.330000)
		registerVal2.LobbyMemberBackingMask0:setTopBottom(false, false, -14.170000, 14.000000)
		registerVal2.LobbyMemberBackingMask0:setRGB(0.110000, 0.140000, 0.180000)
		registerVal2.LobbyMemberBackingMask0:setAlpha(0.400000)
		registerVal2.LobbyMemberBackingMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBacking0:setLeftRight(true, true, -0.330000, -0.330000)
		registerVal2.LobbyMemberBacking0:setTopBottom(false, false, -14.170000, 14.000000)
		registerVal2.LobbyMemberBacking0:setAlpha(1.000000)
		registerVal2.LobbyMemberBacking0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LfocusLINE:setLeftRight(false, true, -3.000000, 2.340000)
		registerVal2.LfocusLINE:setTopBottom(false, false, -11.670000, 12.330000)
		registerVal2.LfocusLINE:setRGB(0.330000, 0.330000, 0.330000)
		registerVal2.LfocusLINE:setAlpha(1.000000)
		registerVal2.LfocusLINE:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.buttoninternal0:setLeftRight(true, false, 8.820000, 201.820000)
		registerVal2.buttoninternal0:setTopBottom(false, false, -7.770000, 11.230000)
		registerVal2.buttoninternal0:setRGB(0.810000, 0.830000, 0.760000)
		registerVal2.buttoninternal0:setAlpha(1.000000)
		registerVal2.buttoninternal0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, -2.500000, 2.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		registerVal2.LobbyMemberBackingFooter0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_E01_
	local function __FUNC_13D4_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_191A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -2.330000, 1.670000)
			arg0:setTopBottom(false, false, -16.170000, 16.000000)
			arg0:setRGB(0.160000, 0.220000, 0.270000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(60.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setLeftRight(true, true, -0.330000, -0.330000)
		registerVal2.LobbyMemberBackingMask0:setTopBottom(false, false, -14.170000, 14.000000)
		registerVal2.LobbyMemberBackingMask0:setRGB(0.110000, 0.140000, 0.180000)
		registerVal2.LobbyMemberBackingMask0:setAlpha(0.400000)
		registerVal2.LobbyMemberBackingMask0:setZoom(0.000000)
		__FUNC_191A_(registerVal3, {})
		local function __FUNC_1B90_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -2.330000, 1.670000)
			arg0:setTopBottom(false, false, -16.170000, 16.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(60.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBacking0:setLeftRight(true, true, -0.330000, -0.330000)
		registerVal2.LobbyMemberBacking0:setTopBottom(false, false, -14.170000, 14.000000)
		registerVal2.LobbyMemberBacking0:setAlpha(1.000000)
		registerVal2.LobbyMemberBacking0:setZoom(0.000000)
		__FUNC_1B90_(registerVal4, {})
		local function __FUNC_1DD5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, 8.010000, 13.350000)
			arg0:setTopBottom(false, false, -11.670000, 12.330000)
			arg0:setRGB(0.860000, 0.580000, 0.220000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(60.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LfocusLINE:setLeftRight(false, true, -3.000000, 2.340000)
		registerVal2.LfocusLINE:setTopBottom(false, false, -11.670000, 12.330000)
		registerVal2.LfocusLINE:setRGB(0.330000, 0.330000, 0.330000)
		registerVal2.LfocusLINE:setAlpha(1.000000)
		registerVal2.LfocusLINE:setZoom(0.000000)
		__FUNC_1DD5_(registerVal5, {})
		local function __FUNC_204C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(60.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.buttoninternal0:setRGB(0.810000, 0.830000, 0.760000)
		registerVal2.buttoninternal0:setAlpha(1.000000)
		registerVal2.buttoninternal0:setZoom(0.000000)
		__FUNC_204C_(registerVal6, {})
		local function __FUNC_2245_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -4.500000, 4.000000)
			arg0:setTopBottom(false, false, 14.000000, 17.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(60.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, -2.500000, 2.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		registerVal2.LobbyMemberBackingFooter0:setZoom(0.000000)
		__FUNC_2245_(registerVal7, {})
	end

	registerVal9.GainFocus = __FUNC_13D4_
	local function __FUNC_2489_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setLeftRight(true, true, -2.330000, 0.670000)
		registerVal2.LobbyMemberBackingMask0:setTopBottom(false, false, -16.170000, 16.000000)
		registerVal2.LobbyMemberBackingMask0:setRGB(0.160000, 0.220000, 0.270000)
		registerVal2.LobbyMemberBackingMask0:setAlpha(1.000000)
		registerVal2.LobbyMemberBackingMask0:setZoom(60.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBacking0:setLeftRight(true, true, -2.330000, 1.670000)
		registerVal2.LobbyMemberBacking0:setTopBottom(false, false, -16.170000, 16.000000)
		registerVal2.LobbyMemberBacking0:setZoom(60.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LfocusLINE:setLeftRight(false, true, 8.010000, 13.350000)
		registerVal2.LfocusLINE:setTopBottom(false, false, -11.670000, 12.330000)
		registerVal2.LfocusLINE:setRGB(0.860000, 0.580000, 0.220000)
		registerVal2.LfocusLINE:setAlpha(1.000000)
		registerVal2.LfocusLINE:setZoom(60.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.buttoninternal0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttoninternal0:setAlpha(1.000000)
		registerVal2.buttoninternal0:setZoom(60.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, -4.500000, 4.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 14.000000, 17.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(1.000000)
		registerVal2.LobbyMemberBackingFooter0:setZoom(60.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Focus = __FUNC_2489_
	local function __FUNC_29DC_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_2F1D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.330000, -0.330000)
			arg0:setTopBottom(false, false, -14.170000, 14.000000)
			arg0:setRGB(0.110000, 0.140000, 0.180000)
			arg0:setAlpha(0.400000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setLeftRight(true, true, -2.330000, 0.670000)
		registerVal2.LobbyMemberBackingMask0:setTopBottom(false, false, -16.170000, 16.000000)
		registerVal2.LobbyMemberBackingMask0:setRGB(0.160000, 0.220000, 0.270000)
		registerVal2.LobbyMemberBackingMask0:setAlpha(1.000000)
		registerVal2.LobbyMemberBackingMask0:setZoom(60.000000)
		__FUNC_2F1D_(registerVal3, {})
		local function __FUNC_318F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.330000, -0.330000)
			arg0:setTopBottom(false, false, -14.170000, 14.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBacking0:setLeftRight(true, true, -2.330000, 0.670000)
		registerVal2.LobbyMemberBacking0:setTopBottom(false, false, -16.170000, 16.000000)
		registerVal2.LobbyMemberBacking0:setAlpha(1.000000)
		registerVal2.LobbyMemberBacking0:setZoom(60.000000)
		__FUNC_318F_(registerVal4, {})
		local function __FUNC_33CC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -3.000000, 2.340000)
			arg0:setTopBottom(false, false, -11.670000, 12.330000)
			arg0:setRGB(0.330000, 0.330000, 0.330000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LfocusLINE:setLeftRight(false, true, 8.010000, 13.350000)
		registerVal2.LfocusLINE:setTopBottom(false, false, -11.670000, 12.330000)
		registerVal2.LfocusLINE:setRGB(0.860000, 0.580000, 0.220000)
		registerVal2.LfocusLINE:setAlpha(1.000000)
		registerVal2.LfocusLINE:setZoom(60.000000)
		__FUNC_33CC_(registerVal5, {})
		local function __FUNC_363A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setRGB(0.810000, 0.830000, 0.760000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.buttoninternal0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttoninternal0:setAlpha(1.000000)
		registerVal2.buttoninternal0:setZoom(60.000000)
		__FUNC_363A_(registerVal6, {})
		local function __FUNC_3840_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -2.500000, 2.000000)
			arg0:setTopBottom(false, false, 11.000000, 14.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, -4.500000, 4.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 14.000000, 17.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(1.000000)
		registerVal2.LobbyMemberBackingFooter0:setZoom(60.000000)
		__FUNC_3840_(registerVal7, {})
	end

	registerVal9.LoseFocus = __FUNC_29DC_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_3A80_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setLeftRight(true, true, -0.330000, -0.330000)
		registerVal2.LobbyMemberBackingMask0:setTopBottom(false, false, -14.170000, 14.000000)
		registerVal2.LobbyMemberBackingMask0:setRGB(0.110000, 0.140000, 0.180000)
		registerVal2.LobbyMemberBackingMask0:setAlpha(0.100000)
		registerVal2.LobbyMemberBackingMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBacking0:setLeftRight(true, true, -0.330000, -0.330000)
		registerVal2.LobbyMemberBacking0:setTopBottom(false, false, -14.170000, 14.000000)
		registerVal2.LobbyMemberBacking0:setAlpha(0.250000)
		registerVal2.LobbyMemberBacking0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LfocusLINE:setLeftRight(false, true, -3.000000, 2.340000)
		registerVal2.LfocusLINE:setTopBottom(false, false, -11.670000, 12.330000)
		registerVal2.LfocusLINE:setRGB(0.330000, 0.330000, 0.330000)
		registerVal2.LfocusLINE:setAlpha(0.250000)
		registerVal2.LfocusLINE:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.buttoninternal0:setLeftRight(true, false, 8.820000, 201.820000)
		registerVal2.buttoninternal0:setTopBottom(false, false, -7.770000, 11.230000)
		registerVal2.buttoninternal0:setRGB(0.810000, 0.830000, 0.760000)
		registerVal2.buttoninternal0:setAlpha(0.250000)
		registerVal2.buttoninternal0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, -2.500000, 2.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		registerVal2.LobbyMemberBackingFooter0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_3A80_
	local function __FUNC_4054_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_457E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -2.330000, 1.670000)
			arg0:setTopBottom(false, false, -16.170000, 16.000000)
			arg0:setRGB(0.160000, 0.220000, 0.270000)
			arg0:setAlpha(0.250000)
			arg0:setZoom(60.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setLeftRight(true, true, -0.330000, -0.330000)
		registerVal2.LobbyMemberBackingMask0:setTopBottom(false, false, -14.170000, 14.000000)
		registerVal2.LobbyMemberBackingMask0:setRGB(0.110000, 0.140000, 0.180000)
		registerVal2.LobbyMemberBackingMask0:setAlpha(0.100000)
		registerVal2.LobbyMemberBackingMask0:setZoom(0.000000)
		__FUNC_457E_(registerVal3, {})
		local function __FUNC_47F4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -2.330000, 1.670000)
			arg0:setTopBottom(false, false, -16.170000, 16.000000)
			arg0:setAlpha(0.250000)
			arg0:setZoom(60.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBacking0:setLeftRight(true, true, -0.330000, -0.330000)
		registerVal2.LobbyMemberBacking0:setTopBottom(false, false, -14.170000, 14.000000)
		registerVal2.LobbyMemberBacking0:setAlpha(0.250000)
		registerVal2.LobbyMemberBacking0:setZoom(0.000000)
		__FUNC_47F4_(registerVal4, {})
		local function __FUNC_4A39_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -1.000000, 4.340000)
			arg0:setTopBottom(false, false, -11.670000, 12.330000)
			arg0:setRGB(0.330000, 0.330000, 0.330000)
			arg0:setAlpha(0.250000)
			arg0:setZoom(60.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LfocusLINE:setLeftRight(false, true, -3.000000, 2.340000)
		registerVal2.LfocusLINE:setTopBottom(false, false, -11.670000, 12.330000)
		registerVal2.LfocusLINE:setRGB(0.330000, 0.330000, 0.330000)
		registerVal2.LfocusLINE:setAlpha(0.250000)
		registerVal2.LfocusLINE:setZoom(0.000000)
		__FUNC_4A39_(registerVal5, {})
		local function __FUNC_4CA6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setZoom(60.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.buttoninternal0:setRGB(0.810000, 0.830000, 0.760000)
		registerVal2.buttoninternal0:setZoom(0.000000)
		__FUNC_4CA6_(registerVal6, {})
		local function __FUNC_4E7F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -4.500000, 4.000000)
			arg0:setTopBottom(false, false, 14.000000, 17.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(60.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, -2.500000, 2.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 11.000000, 14.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		registerVal2.LobbyMemberBackingFooter0:setZoom(0.000000)
		__FUNC_4E7F_(registerVal7, {})
	end

	registerVal9.GainFocus = __FUNC_4054_
	local function __FUNC_50C1_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setLeftRight(true, true, -2.330000, 0.670000)
		registerVal2.LobbyMemberBackingMask0:setTopBottom(false, false, -16.170000, 16.000000)
		registerVal2.LobbyMemberBackingMask0:setRGB(0.160000, 0.220000, 0.270000)
		registerVal2.LobbyMemberBackingMask0:setAlpha(0.250000)
		registerVal2.LobbyMemberBackingMask0:setZoom(60.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBacking0:setLeftRight(true, true, -2.330000, 1.670000)
		registerVal2.LobbyMemberBacking0:setTopBottom(false, false, -16.170000, 16.000000)
		registerVal2.LobbyMemberBacking0:setZoom(60.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LfocusLINE:setLeftRight(false, true, -1.000000, 4.340000)
		registerVal2.LfocusLINE:setTopBottom(false, false, -11.670000, 12.330000)
		registerVal2.LfocusLINE:setAlpha(0.250000)
		registerVal2.LfocusLINE:setZoom(60.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.buttoninternal0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttoninternal0:setZoom(60.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, -4.500000, 4.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 14.000000, 17.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		registerVal2.LobbyMemberBackingFooter0:setZoom(60.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Focus = __FUNC_50C1_
	local function __FUNC_55D4_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_5AFE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.330000, -0.330000)
			arg0:setTopBottom(false, false, -14.170000, 14.000000)
			arg0:setRGB(0.110000, 0.140000, 0.180000)
			arg0:setAlpha(0.100000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.LobbyMemberBackingMask0:setLeftRight(true, true, -2.330000, 0.670000)
		registerVal2.LobbyMemberBackingMask0:setTopBottom(false, false, -16.170000, 16.000000)
		registerVal2.LobbyMemberBackingMask0:setRGB(0.160000, 0.220000, 0.270000)
		registerVal2.LobbyMemberBackingMask0:setAlpha(0.250000)
		registerVal2.LobbyMemberBackingMask0:setZoom(60.000000)
		__FUNC_5AFE_(registerVal3, {})
		local function __FUNC_5D6F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.330000, -0.330000)
			arg0:setTopBottom(false, false, -14.170000, 14.000000)
			arg0:setAlpha(0.250000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.LobbyMemberBacking0:setLeftRight(true, true, -2.330000, 0.670000)
		registerVal2.LobbyMemberBacking0:setTopBottom(false, false, -16.170000, 16.000000)
		registerVal2.LobbyMemberBacking0:setAlpha(0.250000)
		registerVal2.LobbyMemberBacking0:setZoom(60.000000)
		__FUNC_5D6F_(registerVal4, {})
		local function __FUNC_5FAC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, true, -3.000000, 2.340000)
			arg0:setTopBottom(false, false, -11.670000, 12.330000)
			arg0:setRGB(0.330000, 0.330000, 0.330000)
			arg0:setAlpha(0.250000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.LfocusLINE:setLeftRight(false, true, -1.000000, 4.340000)
		registerVal2.LfocusLINE:setTopBottom(false, false, -11.670000, 12.330000)
		registerVal2.LfocusLINE:setRGB(0.330000, 0.330000, 0.330000)
		registerVal2.LfocusLINE:setAlpha(0.250000)
		registerVal2.LfocusLINE:setZoom(60.000000)
		__FUNC_5FAC_(registerVal5, {})
		local function __FUNC_621A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setRGB(0.810000, 0.830000, 0.760000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.buttoninternal0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.buttoninternal0:setZoom(60.000000)
		__FUNC_621A_(registerVal6, {})
		local function __FUNC_63FD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -2.500000, 2.000000)
			arg0:setTopBottom(false, false, 11.000000, 14.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.LobbyMemberBackingFooter0:setLeftRight(true, true, -4.500000, 4.000000)
		registerVal2.LobbyMemberBackingFooter0:setTopBottom(false, false, 14.000000, 17.000000)
		registerVal2.LobbyMemberBackingFooter0:setAlpha(0.000000)
		registerVal2.LobbyMemberBackingFooter0:setZoom(60.000000)
		__FUNC_63FD_(registerVal7, {})
	end

	registerVal9.LoseFocus = __FUNC_55D4_
	registerVal8.Disabled = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Disabled"
	local function __FUNC_663C_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal11.condition = __FUNC_663C_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_6690_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_6690_)
	registerVal6.id = "buttoninternal0"
	local function __FUNC_67AE_(arg0, arg1)
		local registerVal2 = arg0.buttoninternal0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_67AE_)
	local function __FUNC_68B7_(arg0)
		arg0.LobbyMemberBackingMask0:close()
		arg0.LobbyMemberBacking0:close()
		arg0.buttoninternal0:close()
		arg0.LobbyMemberBackingFooter0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_68B7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

