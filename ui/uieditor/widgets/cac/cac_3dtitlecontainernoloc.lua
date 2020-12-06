-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleElemBackB")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleElemBackA")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleElemForeB")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleElemMid")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleElemForeA")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleElemForeC")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleElemForeD")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleElemBaseA")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleElemTopC")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleElemTopB")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleElemTopA")
require("ui.uieditor.widgets.CAC.cac_3dTitle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_3dTitleContainerNoLoc = registerVal1
function CoD.cac_3dTitleContainerNoLoc.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_3dTitleContainerNoLoc)
	registerVal2.id = "cac_3dTitleContainerNoLoc"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 578.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 146.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 78.000000, 174.000000)
	registerVal3:setTopBottom(true, false, 10.000000, 103.330000)
	registerVal3:setZoom(-40.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_titlebackcircle"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.circles = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 38.000000, 190.000000)
	registerVal4:setTopBottom(true, false, 54.670000, 62.670000)
	registerVal4:setZRot(45.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_titlebacklinediaga"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.diaglrg = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 161.000000, 197.000000)
	registerVal5:setTopBottom(true, false, 14.670000, 22.670000)
	registerVal5:setZRot(45.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_titlebacklinediagb"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.diagsm = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 32.000000, 44.000000)
	registerVal6:setTopBottom(true, false, 29.000000, 81.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixela"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.pixela = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 68.000000, 100.000000)
	registerVal7:setTopBottom(true, false, 29.000000, 81.000000)
	registerVal7:setZoom(10.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelb"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.pixelb = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 42.000000, 58.000000)
	registerVal8:setTopBottom(true, false, 29.000000, 81.000000)
	registerVal8:setZoom(-5.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixelc"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.pixelc = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 94.000000, 134.000000)
	registerVal9:setTopBottom(true, false, 28.500000, 80.500000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_titlebackpixeld"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.pixeld = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 114.000000, 134.000000)
	registerVal10:setTopBottom(true, false, 49.000000, 61.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_titlebackthickc"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.centersquare = registerVal10
	local registerVal11 = CoD.FE_TitleElemBackB.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 106.000000, 134.000000)
	registerVal11:setTopBottom(true, false, -5.000000, 115.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.ElemBackB = registerVal11
	local registerVal12 = CoD.FE_TitleElemBackA.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 110.000000, 146.000000)
	registerVal12:setTopBottom(true, false, -4.320000, 115.680000)
	registerVal2:addElement(registerVal12)
	registerVal2.ElemBackA0 = registerVal12
	local registerVal13 = CoD.FE_TitleElemForeB.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 106.000000, 114.000000)
	registerVal13:setTopBottom(true, false, 22.500000, 86.500000)
	registerVal2:addElement(registerVal13)
	registerVal2.ElemForeB0 = registerVal13
	local registerVal14 = CoD.FE_TitleElemMid.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 24.000000, 144.000000)
	registerVal14:setTopBottom(true, false, 22.500000, 86.500000)
	registerVal2:addElement(registerVal14)
	registerVal2.ElemMid0 = registerVal14
	local registerVal15 = CoD.FE_TitleElemForeA.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 110.000000, 138.000000)
	registerVal15:setTopBottom(true, false, 22.670000, 86.670000)
	registerVal2:addElement(registerVal15)
	registerVal2.ElemForeA0 = registerVal15
	local registerVal16 = CoD.FE_TitleElemForeC.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 102.000000, 118.000000)
	registerVal16:setTopBottom(true, false, 21.830000, 87.170000)
	registerVal2:addElement(registerVal16)
	registerVal2.ElemForeC0 = registerVal16
	local registerVal17 = CoD.FE_TitleElemForeD.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 76.000000, 104.000000)
	registerVal17:setTopBottom(true, false, 22.500000, 86.500000)
	registerVal2:addElement(registerVal17)
	registerVal2.ElemForeD0 = registerVal17
	local registerVal18 = CoD.FE_TitleElemBaseA.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 66.000000, 122.000000)
	registerVal18:setTopBottom(true, false, 86.670000, 102.670000)
	registerVal2:addElement(registerVal18)
	registerVal2.ElemBaseA0 = registerVal18
	local registerVal19 = CoD.FE_TitleElemTopC.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 122.000000, 146.000000)
	registerVal19:setTopBottom(true, false, 15.000000, 19.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.ElemTopC0 = registerVal19
	local registerVal20 = CoD.FE_TitleElemTopB.new(arg0, arg1)
	registerVal20:setLeftRight(true, false, 116.000000, 172.000000)
	registerVal20:setTopBottom(true, false, 15.000000, 19.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.ElemTopB0 = registerVal20
	local registerVal21 = CoD.FE_TitleElemTopA.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, 60.000000, 116.000000)
	registerVal21:setTopBottom(true, false, 15.000000, 19.000000)
	registerVal2:addElement(registerVal21)
	registerVal2.ElemTopA0 = registerVal21
	local registerVal22 = CoD.cac_3dTitle.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 134.000000, 494.000000)
	registerVal22:setTopBottom(true, false, 29.500000, 80.500000)
	registerVal22.TextBox1.Label0:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	registerVal2:addElement(registerVal22)
	registerVal2.MenuTitle = registerVal22
	local registerVal23 = {}
	local registerVal24 = {}
	local function __FUNC_19DC_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.circles:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.diaglrg:setLeftRight(true, false, 38.000000, 190.000000)
		registerVal2.diaglrg:setTopBottom(true, false, 54.670000, 62.670000)
		registerVal2.diaglrg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.diagsm:setLeftRight(true, false, 161.000000, 197.000000)
		registerVal2.diagsm:setTopBottom(true, false, 14.670000, 22.670000)
		registerVal2.diagsm:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.pixela:setLeftRight(true, false, 32.000000, 44.000000)
		registerVal2.pixela:setTopBottom(true, false, 29.000000, 81.000000)
		registerVal2.pixela:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.pixelb:setLeftRight(true, false, 68.000000, 100.000000)
		registerVal2.pixelb:setTopBottom(true, false, 29.000000, 81.000000)
		registerVal2.pixelb:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.pixelc:setLeftRight(true, false, 42.000000, 58.000000)
		registerVal2.pixelc:setTopBottom(true, false, 29.000000, 81.000000)
		registerVal2.pixelc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.pixeld:setLeftRight(true, false, 94.000000, 134.000000)
		registerVal2.pixeld:setTopBottom(true, false, 28.500000, 80.500000)
		registerVal2.pixeld:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.centersquare:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ElemBackB:setLeftRight(true, false, 106.000000, 134.000000)
		registerVal2.ElemBackB:setTopBottom(true, false, -5.000000, 115.000000)
		registerVal2.ElemBackB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ElemBackA0:setLeftRight(true, false, 110.000000, 146.000000)
		registerVal2.ElemBackA0:setTopBottom(true, false, -4.320000, 115.680000)
		registerVal2.ElemBackA0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.ElemForeB0:setLeftRight(true, false, 106.000000, 114.000000)
		registerVal2.ElemForeB0:setTopBottom(true, false, 22.500000, 86.500000)
		registerVal2.ElemForeB0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.ElemMid0:setLeftRight(true, false, 24.000000, 144.000000)
		registerVal2.ElemMid0:setTopBottom(true, false, 22.500000, 86.500000)
		registerVal2.ElemMid0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.ElemForeA0:setLeftRight(true, false, 110.000000, 138.000000)
		registerVal2.ElemForeA0:setTopBottom(true, false, 22.670000, 86.670000)
		registerVal2.ElemForeA0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.ElemForeC0:setLeftRight(true, false, 102.000000, 118.000000)
		registerVal2.ElemForeC0:setTopBottom(true, false, 21.830000, 87.170000)
		registerVal2.ElemForeC0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.ElemForeD0:setLeftRight(true, false, 76.000000, 104.000000)
		registerVal2.ElemForeD0:setTopBottom(true, false, 22.500000, 86.500000)
		registerVal2.ElemForeD0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.ElemBaseA0:setLeftRight(true, false, 66.000000, 122.000000)
		registerVal2.ElemBaseA0:setTopBottom(true, false, 86.670000, 102.670000)
		registerVal2.ElemBaseA0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.ElemTopC0:setLeftRight(true, false, 122.000000, 146.000000)
		registerVal2.ElemTopC0:setTopBottom(true, false, 15.000000, 19.000000)
		registerVal2.ElemTopC0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.ElemTopB0:setLeftRight(true, false, 116.000000, 172.000000)
		registerVal2.ElemTopB0:setTopBottom(true, false, 15.000000, 19.000000)
		registerVal2.ElemTopB0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.ElemTopA0:setLeftRight(true, false, 60.000000, 116.000000)
		registerVal2.ElemTopA0:setTopBottom(true, false, 15.000000, 19.000000)
		registerVal2.ElemTopA0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_19DC_
	local function __FUNC_2784_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.circles:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.diaglrg:setLeftRight(true, false, 38.000000, 190.000000)
		registerVal2.diaglrg:setTopBottom(true, false, 54.670000, 62.670000)
		registerVal2.diaglrg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.diagsm:setLeftRight(true, false, 161.000000, 197.000000)
		registerVal2.diagsm:setTopBottom(true, false, 14.670000, 22.670000)
		registerVal2.diagsm:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_352A_(arg0, arg1)
			local function __FUNC_36B8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 319.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 32.000000, 44.000000)
				arg0:setTopBottom(true, false, 29.000000, 81.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_36B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 78.000000, 90.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36B8_)
		end

		registerVal6:completeAnimation()
		registerVal2.pixela:setLeftRight(true, false, 32.000000, 44.000000)
		registerVal2.pixela:setTopBottom(true, false, 29.000000, 81.000000)
		registerVal2.pixela:setAlpha(1.000000)
		__FUNC_352A_(registerVal6, {})
		local function __FUNC_38DD_(arg0, arg1)
			local function __FUNC_3A6C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 259.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 68.000000, 100.000000)
				arg0:setTopBottom(true, false, 29.000000, 81.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3A6C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 157.000000, 189.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A6C_)
		end

		registerVal7:completeAnimation()
		registerVal2.pixelb:setLeftRight(true, false, 68.000000, 100.000000)
		registerVal2.pixelb:setTopBottom(true, false, 29.000000, 81.000000)
		registerVal2.pixelb:setAlpha(1.000000)
		__FUNC_38DD_(registerVal7, {})
		local function __FUNC_3C91_(arg0, arg1)
			local function __FUNC_3E1E_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 420.000000, true, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 42.000000, 58.000000)
				arg0:setTopBottom(true, false, 29.000000, 81.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3E1E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, true, true, CoD.TweenType.Back)
			arg0:setLeftRight(true, false, 66.520000, 82.520000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E1E_)
		end

		registerVal8:completeAnimation()
		registerVal2.pixelc:setLeftRight(true, false, 42.000000, 58.000000)
		registerVal2.pixelc:setTopBottom(true, false, 29.000000, 81.000000)
		registerVal2.pixelc:setAlpha(1.000000)
		__FUNC_3C91_(registerVal8, {})
		local function __FUNC_403F_(arg0, arg1)
			local function __FUNC_41CA_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 270.000000, true, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 94.000000, 134.000000)
				arg0:setTopBottom(true, false, 28.500000, 80.500000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_41CA_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, true, true, CoD.TweenType.Back)
			arg0:setLeftRight(true, false, 167.200000, 207.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41CA_)
		end

		registerVal9:completeAnimation()
		registerVal2.pixeld:setLeftRight(true, false, 94.000000, 134.000000)
		registerVal2.pixeld:setTopBottom(true, false, 28.500000, 80.500000)
		registerVal2.pixeld:setAlpha(1.000000)
		__FUNC_403F_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.centersquare:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_43EB_(arg0, arg1)
			local function __FUNC_4578_(arg0, arg1)
				local function __FUNC_46D0_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 370.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 106.000000, 134.000000)
					arg0:setTopBottom(true, false, -5.000000, 115.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_46D0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46D0_)
			end

			if arg1.interrupted then
				__FUNC_4578_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 557.000000, 585.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4578_)
		end

		registerVal11:completeAnimation()
		registerVal2.ElemBackB:setLeftRight(true, false, 158.000000, 186.000000)
		registerVal2.ElemBackB:setTopBottom(true, false, -5.000000, 115.000000)
		registerVal2.ElemBackB:setAlpha(1.000000)
		__FUNC_43EB_(registerVal11, {})
		local function __FUNC_48F5_(arg0, arg1)
			local function __FUNC_4ABC_(arg0, arg1)
				local function __FUNC_4C14_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 110.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 110.000000, 146.000000)
					arg0:setTopBottom(true, false, -4.320000, 115.680000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_4C14_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C14_)
			end

			if arg1.interrupted then
				__FUNC_4ABC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 545.000000, 581.000000)
			arg0:setTopBottom(true, false, -5.000000, 115.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4ABC_)
		end

		registerVal12:completeAnimation()
		registerVal2.ElemBackA0:setLeftRight(true, false, 110.000000, 146.000000)
		registerVal2.ElemBackA0:setTopBottom(true, false, -4.320000, 115.680000)
		registerVal2.ElemBackA0:setAlpha(1.000000)
		__FUNC_48F5_(registerVal12, {})
		local function __FUNC_4E34_(arg0, arg1)
			local function __FUNC_4FC4_(arg0, arg1)
				local function __FUNC_511C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 106.000000, 114.000000)
					arg0:setTopBottom(true, false, 22.500000, 86.500000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_511C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_511C_)
			end

			if arg1.interrupted then
				__FUNC_4FC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 529.000000, 537.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FC4_)
		end

		registerVal13:completeAnimation()
		registerVal2.ElemForeB0:setLeftRight(true, false, 106.000000, 114.000000)
		registerVal2.ElemForeB0:setTopBottom(true, false, 22.500000, 86.500000)
		registerVal2.ElemForeB0:setAlpha(1.000000)
		__FUNC_4E34_(registerVal13, {})
		local function __FUNC_5341_(arg0, arg1)
			local function __FUNC_54D0_(arg0, arg1)
				local function __FUNC_5628_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 199.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 24.000000, 144.000000)
					arg0:setTopBottom(true, false, 22.500000, 86.500000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5628_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5628_)
			end

			if arg1.interrupted then
				__FUNC_54D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 473.000000, 593.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54D0_)
		end

		registerVal14:completeAnimation()
		registerVal2.ElemMid0:setLeftRight(true, false, 24.000000, 144.000000)
		registerVal2.ElemMid0:setTopBottom(true, false, 22.500000, 86.500000)
		registerVal2.ElemMid0:setAlpha(1.000000)
		__FUNC_5341_(registerVal14, {})
		local function __FUNC_584D_(arg0, arg1)
			local function __FUNC_59DC_(arg0, arg1)
				local function __FUNC_5B34_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 270.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 110.000000, 138.000000)
					arg0:setTopBottom(true, false, 22.670000, 86.670000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5B34_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B34_)
			end

			if arg1.interrupted then
				__FUNC_59DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 543.000000, 571.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59DC_)
		end

		registerVal15:completeAnimation()
		registerVal2.ElemForeA0:setLeftRight(true, false, 110.000000, 138.000000)
		registerVal2.ElemForeA0:setTopBottom(true, false, 22.670000, 86.670000)
		registerVal2.ElemForeA0:setAlpha(1.000000)
		__FUNC_584D_(registerVal15, {})
		local function __FUNC_5D59_(arg0, arg1)
			local function __FUNC_5F20_(arg0, arg1)
				local function __FUNC_6078_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 199.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 102.000000, 118.000000)
					arg0:setTopBottom(true, false, 21.830000, 87.170000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6078_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6078_)
			end

			if arg1.interrupted then
				__FUNC_5F20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 571.000000, 587.000000)
			arg0:setTopBottom(true, false, 21.830000, 87.170000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F20_)
		end

		registerVal16:completeAnimation()
		registerVal2.ElemForeC0:setLeftRight(true, false, 102.000000, 118.000000)
		registerVal2.ElemForeC0:setTopBottom(true, false, 21.830000, 87.170000)
		registerVal2.ElemForeC0:setAlpha(1.000000)
		__FUNC_5D59_(registerVal16, {})
		local function __FUNC_629D_(arg0, arg1)
			local function __FUNC_642C_(arg0, arg1)
				local function __FUNC_6584_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 349.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 76.000000, 104.000000)
					arg0:setTopBottom(true, false, 22.500000, 86.500000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6584_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6584_)
			end

			if arg1.interrupted then
				__FUNC_642C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 549.000000, 577.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_642C_)
		end

		registerVal17:completeAnimation()
		registerVal2.ElemForeD0:setLeftRight(true, false, 76.000000, 104.000000)
		registerVal2.ElemForeD0:setTopBottom(true, false, 22.500000, 86.500000)
		registerVal2.ElemForeD0:setAlpha(1.000000)
		__FUNC_629D_(registerVal17, {})
		local function __FUNC_67A9_(arg0, arg1)
			local function __FUNC_6938_(arg0, arg1)
				local function __FUNC_6A90_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 269.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 66.000000, 122.000000)
					arg0:setTopBottom(true, false, 86.670000, 102.670000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6A90_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A90_)
			end

			if arg1.interrupted then
				__FUNC_6938_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 529.000000, 585.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6938_)
		end

		registerVal18:completeAnimation()
		registerVal2.ElemBaseA0:setLeftRight(true, false, 66.000000, 122.000000)
		registerVal2.ElemBaseA0:setTopBottom(true, false, 86.670000, 102.670000)
		registerVal2.ElemBaseA0:setAlpha(1.000000)
		__FUNC_67A9_(registerVal18, {})
		local function __FUNC_6CB5_(arg0, arg1)
			local function __FUNC_6E44_(arg0, arg1)
				local function __FUNC_6F9C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 122.000000, 146.000000)
					arg0:setTopBottom(true, false, 15.000000, 19.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6F9C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F9C_)
			end

			if arg1.interrupted then
				__FUNC_6E44_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 521.000000, 545.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E44_)
		end

		registerVal19:completeAnimation()
		registerVal2.ElemTopC0:setLeftRight(true, false, 122.000000, 146.000000)
		registerVal2.ElemTopC0:setTopBottom(true, false, 15.000000, 19.000000)
		registerVal2.ElemTopC0:setAlpha(1.000000)
		__FUNC_6CB5_(registerVal19, {})
		local function __FUNC_71C1_(arg0, arg1)
			local function __FUNC_7350_(arg0, arg1)
				local function __FUNC_74A8_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 249.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 116.000000, 172.000000)
					arg0:setTopBottom(true, false, 15.000000, 19.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_74A8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74A8_)
			end

			if arg1.interrupted then
				__FUNC_7350_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 515.000000, 571.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7350_)
		end

		registerVal20:completeAnimation()
		registerVal2.ElemTopB0:setLeftRight(true, false, 116.000000, 172.000000)
		registerVal2.ElemTopB0:setTopBottom(true, false, 15.000000, 19.000000)
		registerVal2.ElemTopB0:setAlpha(1.000000)
		__FUNC_71C1_(registerVal20, {})
		local function __FUNC_76CD_(arg0, arg1)
			local function __FUNC_785C_(arg0, arg1)
				local function __FUNC_79B4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 270.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 60.000000, 116.000000)
					arg0:setTopBottom(true, false, 15.000000, 19.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_79B4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79B4_)
			end

			if arg1.interrupted then
				__FUNC_785C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 526.500000, 582.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_785C_)
		end

		registerVal21:completeAnimation()
		registerVal2.ElemTopA0:setLeftRight(true, false, 60.000000, 116.000000)
		registerVal2.ElemTopA0:setTopBottom(true, false, 15.000000, 19.000000)
		registerVal2.ElemTopA0:setAlpha(1.000000)
		__FUNC_76CD_(registerVal21, {})
		local function __FUNC_7BD9_(arg0, arg1)
			local function __FUNC_7D30_(arg0, arg1)
				local function __FUNC_7EAB_(arg0, arg1)
					local function __FUNC_8000_(arg0, arg1)
						local function __FUNC_817B_(arg0, arg1)
							local function __FUNC_82F3_(arg0, arg1)
								local function __FUNC_846B_(arg0, arg1)
									local function __FUNC_85C0_(arg0, arg1)
										local function __FUNC_873B_(arg0, arg1)
											local function __FUNC_8890_(arg0, arg1)
												local function __FUNC_8A0B_(arg0, arg1)
													local function __FUNC_8B60_(arg0, arg1)
														local function __FUNC_8CB8_(arg0, arg1)
															local function __FUNC_8E10_(arg0, arg1)
																local function __FUNC_8F68_(arg0, arg1)
																	local function __FUNC_90C0_(arg0, arg1)
																		local function __FUNC_9218_(arg0, arg1)
																			local function __FUNC_936E_(arg0, arg1)
																				local function __FUNC_94C4_(arg0, arg1)
																					local function __FUNC_961C_(arg0, arg1)
																						local function __FUNC_9774_(arg0, arg1)
																							local function __FUNC_98CC_(arg0, arg1)
																								local function __FUNC_9A24_(arg0, arg1)
																									local function __FUNC_9B7C_(arg0, arg1)
																										local function __FUNC_9CD4_(arg0, arg1)
																											local function __FUNC_9E2C_(arg0, arg1)
																												local function __FUNC_9F84_(arg0, arg1)
																													local function __FUNC_A0DC_(arg0, arg1)
																														if not arg1.interrupted then
																															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																														end
																														arg0:setAlpha(1.000000)
																														if arg1.interrupted then
																															registerVal2.clipFinished(arg0, arg1)
																														else
																															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																														end
																													end

																													if arg1.interrupted then
																														__FUNC_A0DC_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A0DC_)
																												end

																												if arg1.interrupted then
																													__FUNC_9F84_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F84_)
																											end

																											if arg1.interrupted then
																												__FUNC_9E2C_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E2C_)
																										end

																										if arg1.interrupted then
																											__FUNC_9CD4_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CD4_)
																									end

																									if arg1.interrupted then
																										__FUNC_9B7C_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B7C_)
																								end

																								if arg1.interrupted then
																									__FUNC_9A24_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A24_)
																							end

																							if arg1.interrupted then
																								__FUNC_98CC_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98CC_)
																						end

																						if arg1.interrupted then
																							__FUNC_9774_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9774_)
																					end

																					if arg1.interrupted then
																						__FUNC_961C_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_961C_)
																				end

																				if arg1.interrupted then
																					__FUNC_94C4_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_94C4_)
																			end

																			if arg1.interrupted then
																				__FUNC_936E_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 70.000000, false, true, CoD.TweenType.Back)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_936E_)
																		end

																		if arg1.interrupted then
																			__FUNC_9218_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9218_)
																	end

																	if arg1.interrupted then
																		__FUNC_90C0_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90C0_)
																end

																if arg1.interrupted then
																	__FUNC_8F68_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F68_)
															end

															if arg1.interrupted then
																__FUNC_8E10_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E10_)
														end

														if arg1.interrupted then
															__FUNC_8CB8_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CB8_)
													end

													if arg1.interrupted then
														__FUNC_8B60_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B60_)
												end

												if arg1.interrupted then
													__FUNC_8A0B_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A0B_)
											end

											if arg1.interrupted then
												__FUNC_8890_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8890_)
										end

										if arg1.interrupted then
											__FUNC_873B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.440000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_873B_)
									end

									if arg1.interrupted then
										__FUNC_85C0_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85C0_)
								end

								if arg1.interrupted then
									__FUNC_846B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.890000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_846B_)
							end

							if arg1.interrupted then
								__FUNC_82F3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82F3_)
						end

						if arg1.interrupted then
							__FUNC_817B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.480000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_817B_)
					end

					if arg1.interrupted then
						__FUNC_8000_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8000_)
				end

				if arg1.interrupted then
					__FUNC_7EAB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.640000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7EAB_)
			end

			if arg1.interrupted then
				__FUNC_7D30_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D30_)
		end

		registerVal22:completeAnimation()
		registerVal2.MenuTitle:setAlpha(0.000000)
		__FUNC_7BD9_(registerVal22, {})
	end

	registerVal24.Intro = __FUNC_2784_
	local function __FUNC_A291_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.circles:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.diaglrg:setLeftRight(true, false, 38.000000, 190.000000)
		registerVal2.diaglrg:setTopBottom(true, false, 54.670000, 62.670000)
		registerVal2.diaglrg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.diagsm:setLeftRight(true, false, 161.000000, 197.000000)
		registerVal2.diagsm:setTopBottom(true, false, 14.670000, 22.670000)
		registerVal2.diagsm:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_B036_(arg0, arg1)
			local function __FUNC_B1C4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 319.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 32.000000, 44.000000)
				arg0:setTopBottom(true, false, 29.000000, 81.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_B1C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 78.000000, 90.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B1C4_)
		end

		registerVal6:completeAnimation()
		registerVal2.pixela:setLeftRight(true, false, 32.000000, 44.000000)
		registerVal2.pixela:setTopBottom(true, false, 29.000000, 81.000000)
		registerVal2.pixela:setAlpha(1.000000)
		__FUNC_B036_(registerVal6, {})
		local function __FUNC_B3E9_(arg0, arg1)
			local function __FUNC_B578_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 259.000000, true, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 68.000000, 100.000000)
				arg0:setTopBottom(true, false, 29.000000, 81.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_B578_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 157.000000, 189.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B578_)
		end

		registerVal7:completeAnimation()
		registerVal2.pixelb:setLeftRight(true, false, 68.000000, 100.000000)
		registerVal2.pixelb:setTopBottom(true, false, 29.000000, 81.000000)
		registerVal2.pixelb:setAlpha(1.000000)
		__FUNC_B3E9_(registerVal7, {})
		local function __FUNC_B79D_(arg0, arg1)
			local function __FUNC_B92A_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 420.000000, true, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 42.000000, 58.000000)
				arg0:setTopBottom(true, false, 29.000000, 81.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_B92A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, true, true, CoD.TweenType.Back)
			arg0:setLeftRight(true, false, 66.520000, 82.520000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B92A_)
		end

		registerVal8:completeAnimation()
		registerVal2.pixelc:setLeftRight(true, false, 42.000000, 58.000000)
		registerVal2.pixelc:setTopBottom(true, false, 29.000000, 81.000000)
		registerVal2.pixelc:setAlpha(1.000000)
		__FUNC_B79D_(registerVal8, {})
		local function __FUNC_BB4B_(arg0, arg1)
			local function __FUNC_BCD6_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 270.000000, true, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 94.000000, 134.000000)
				arg0:setTopBottom(true, false, 28.500000, 80.500000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_BCD6_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, true, true, CoD.TweenType.Back)
			arg0:setLeftRight(true, false, 167.200000, 207.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCD6_)
		end

		registerVal9:completeAnimation()
		registerVal2.pixeld:setLeftRight(true, false, 94.000000, 134.000000)
		registerVal2.pixeld:setTopBottom(true, false, 28.500000, 80.500000)
		registerVal2.pixeld:setAlpha(1.000000)
		__FUNC_BB4B_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.centersquare:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_BEF7_(arg0, arg1)
			local function __FUNC_C084_(arg0, arg1)
				local function __FUNC_C1DC_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 279.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 106.000000, 134.000000)
					arg0:setTopBottom(true, false, -5.000000, 115.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_C1DC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C1DC_)
			end

			if arg1.interrupted then
				__FUNC_C084_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 557.000000, 585.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C084_)
		end

		registerVal11:completeAnimation()
		registerVal2.ElemBackB:setLeftRight(true, false, 158.000000, 186.000000)
		registerVal2.ElemBackB:setTopBottom(true, false, -5.000000, 115.000000)
		registerVal2.ElemBackB:setAlpha(1.000000)
		__FUNC_BEF7_(registerVal11, {})
		local function __FUNC_C401_(arg0, arg1)
			local function __FUNC_C5C8_(arg0, arg1)
				local function __FUNC_C720_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 110.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 110.000000, 146.000000)
					arg0:setTopBottom(true, false, -4.320000, 115.680000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_C720_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C720_)
			end

			if arg1.interrupted then
				__FUNC_C5C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 545.000000, 581.000000)
			arg0:setTopBottom(true, false, -5.000000, 115.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5C8_)
		end

		registerVal12:completeAnimation()
		registerVal2.ElemBackA0:setLeftRight(true, false, 110.000000, 146.000000)
		registerVal2.ElemBackA0:setTopBottom(true, false, -4.320000, 115.680000)
		registerVal2.ElemBackA0:setAlpha(1.000000)
		__FUNC_C401_(registerVal12, {})
		local function __FUNC_C940_(arg0, arg1)
			local function __FUNC_CAD0_(arg0, arg1)
				local function __FUNC_CC28_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 106.000000, 114.000000)
					arg0:setTopBottom(true, false, 22.500000, 86.500000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_CC28_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC28_)
			end

			if arg1.interrupted then
				__FUNC_CAD0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 529.000000, 537.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CAD0_)
		end

		registerVal13:completeAnimation()
		registerVal2.ElemForeB0:setLeftRight(true, false, 106.000000, 114.000000)
		registerVal2.ElemForeB0:setTopBottom(true, false, 22.500000, 86.500000)
		registerVal2.ElemForeB0:setAlpha(1.000000)
		__FUNC_C940_(registerVal13, {})
		local function __FUNC_CE4D_(arg0, arg1)
			local function __FUNC_CFDC_(arg0, arg1)
				local function __FUNC_D134_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 199.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 24.000000, 144.000000)
					arg0:setTopBottom(true, false, 22.500000, 86.500000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_D134_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D134_)
			end

			if arg1.interrupted then
				__FUNC_CFDC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 473.000000, 593.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CFDC_)
		end

		registerVal14:completeAnimation()
		registerVal2.ElemMid0:setLeftRight(true, false, 24.000000, 144.000000)
		registerVal2.ElemMid0:setTopBottom(true, false, 22.500000, 86.500000)
		registerVal2.ElemMid0:setAlpha(1.000000)
		__FUNC_CE4D_(registerVal14, {})
		local function __FUNC_D359_(arg0, arg1)
			local function __FUNC_D4E8_(arg0, arg1)
				local function __FUNC_D640_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 270.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 110.000000, 138.000000)
					arg0:setTopBottom(true, false, 22.670000, 86.670000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_D640_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D640_)
			end

			if arg1.interrupted then
				__FUNC_D4E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 543.000000, 571.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D4E8_)
		end

		registerVal15:completeAnimation()
		registerVal2.ElemForeA0:setLeftRight(true, false, 110.000000, 138.000000)
		registerVal2.ElemForeA0:setTopBottom(true, false, 22.670000, 86.670000)
		registerVal2.ElemForeA0:setAlpha(1.000000)
		__FUNC_D359_(registerVal15, {})
		local function __FUNC_D865_(arg0, arg1)
			local function __FUNC_DA2C_(arg0, arg1)
				local function __FUNC_DB84_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 199.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 102.000000, 118.000000)
					arg0:setTopBottom(true, false, 21.830000, 87.170000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_DB84_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DB84_)
			end

			if arg1.interrupted then
				__FUNC_DA2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 571.000000, 587.000000)
			arg0:setTopBottom(true, false, 21.830000, 87.170000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA2C_)
		end

		registerVal16:completeAnimation()
		registerVal2.ElemForeC0:setLeftRight(true, false, 102.000000, 118.000000)
		registerVal2.ElemForeC0:setTopBottom(true, false, 21.830000, 87.170000)
		registerVal2.ElemForeC0:setAlpha(1.000000)
		__FUNC_D865_(registerVal16, {})
		local function __FUNC_DDA9_(arg0, arg1)
			local function __FUNC_DF38_(arg0, arg1)
				local function __FUNC_E090_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 349.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 76.000000, 104.000000)
					arg0:setTopBottom(true, false, 22.500000, 86.500000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_E090_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E090_)
			end

			if arg1.interrupted then
				__FUNC_DF38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 549.000000, 577.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF38_)
		end

		registerVal17:completeAnimation()
		registerVal2.ElemForeD0:setLeftRight(true, false, 76.000000, 104.000000)
		registerVal2.ElemForeD0:setTopBottom(true, false, 22.500000, 86.500000)
		registerVal2.ElemForeD0:setAlpha(1.000000)
		__FUNC_DDA9_(registerVal17, {})
		local function __FUNC_E2B5_(arg0, arg1)
			local function __FUNC_E444_(arg0, arg1)
				local function __FUNC_E59C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 269.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 66.000000, 122.000000)
					arg0:setTopBottom(true, false, 86.670000, 102.670000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_E59C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E59C_)
			end

			if arg1.interrupted then
				__FUNC_E444_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 529.000000, 585.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E444_)
		end

		registerVal18:completeAnimation()
		registerVal2.ElemBaseA0:setLeftRight(true, false, 66.000000, 122.000000)
		registerVal2.ElemBaseA0:setTopBottom(true, false, 86.670000, 102.670000)
		registerVal2.ElemBaseA0:setAlpha(1.000000)
		__FUNC_E2B5_(registerVal18, {})
		local function __FUNC_E7C1_(arg0, arg1)
			local function __FUNC_E950_(arg0, arg1)
				local function __FUNC_EAA8_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 122.000000, 146.000000)
					arg0:setTopBottom(true, false, 15.000000, 19.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_EAA8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EAA8_)
			end

			if arg1.interrupted then
				__FUNC_E950_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 521.000000, 545.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E950_)
		end

		registerVal19:completeAnimation()
		registerVal2.ElemTopC0:setLeftRight(true, false, 122.000000, 146.000000)
		registerVal2.ElemTopC0:setTopBottom(true, false, 15.000000, 19.000000)
		registerVal2.ElemTopC0:setAlpha(1.000000)
		__FUNC_E7C1_(registerVal19, {})
		local function __FUNC_ECCD_(arg0, arg1)
			local function __FUNC_EE5C_(arg0, arg1)
				local function __FUNC_EFB4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 249.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 116.000000, 172.000000)
					arg0:setTopBottom(true, false, 15.000000, 19.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_EFB4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EFB4_)
			end

			if arg1.interrupted then
				__FUNC_EE5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 515.000000, 571.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE5C_)
		end

		registerVal20:completeAnimation()
		registerVal2.ElemTopB0:setLeftRight(true, false, 116.000000, 172.000000)
		registerVal2.ElemTopB0:setTopBottom(true, false, 15.000000, 19.000000)
		registerVal2.ElemTopB0:setAlpha(1.000000)
		__FUNC_ECCD_(registerVal20, {})
		local function __FUNC_F1D9_(arg0, arg1)
			local function __FUNC_F368_(arg0, arg1)
				local function __FUNC_F4C0_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 270.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 60.000000, 116.000000)
					arg0:setTopBottom(true, false, 15.000000, 19.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_F4C0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F4C0_)
			end

			if arg1.interrupted then
				__FUNC_F368_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 526.500000, 582.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F368_)
		end

		registerVal21:completeAnimation()
		registerVal2.ElemTopA0:setLeftRight(true, false, 60.000000, 116.000000)
		registerVal2.ElemTopA0:setTopBottom(true, false, 15.000000, 19.000000)
		registerVal2.ElemTopA0:setAlpha(1.000000)
		__FUNC_F1D9_(registerVal21, {})
		local function __FUNC_F6E5_(arg0, arg1)
			local function __FUNC_F83C_(arg0, arg1)
				local function __FUNC_F994_(arg0, arg1)
					local function __FUNC_FB0F_(arg0, arg1)
						local function __FUNC_FC64_(arg0, arg1)
							local function __FUNC_FDBC_(arg0, arg1)
								local function __FUNC_FF37_(arg0, arg1)
									local function __FUNC_1008C_(arg0, arg1)
										local function __FUNC_101E4_(arg0, arg1)
											local function __FUNC_1035F_(arg0, arg1)
												local function __FUNC_104B4_(arg0, arg1)
													local function __FUNC_1060C_(arg0, arg1)
														local function __FUNC_10764_(arg0, arg1)
															local function __FUNC_108DF_(arg0, arg1)
																local function __FUNC_10A34_(arg0, arg1)
																	local function __FUNC_10BAF_(arg0, arg1)
																		local function __FUNC_10D04_(arg0, arg1)
																			local function __FUNC_10E5C_(arg0, arg1)
																				local function __FUNC_10FB4_(arg0, arg1)
																					local function __FUNC_1110C_(arg0, arg1)
																						local function __FUNC_11264_(arg0, arg1)
																							local function __FUNC_113BC_(arg0, arg1)
																								local function __FUNC_11514_(arg0, arg1)
																									local function __FUNC_1166C_(arg0, arg1)
																										local function __FUNC_117C4_(arg0, arg1)
																											local function __FUNC_1191C_(arg0, arg1)
																												local function __FUNC_11A74_(arg0, arg1)
																													if not arg1.interrupted then
																														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													end
																													arg0:setAlpha(1.000000)
																													if arg1.interrupted then
																														registerVal2.clipFinished(arg0, arg1)
																													else
																														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																													end
																												end

																												if arg1.interrupted then
																													__FUNC_11A74_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11A74_)
																											end

																											if arg1.interrupted then
																												__FUNC_1191C_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1191C_)
																										end

																										if arg1.interrupted then
																											__FUNC_117C4_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_117C4_)
																									end

																									if arg1.interrupted then
																										__FUNC_1166C_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1166C_)
																								end

																								if arg1.interrupted then
																									__FUNC_11514_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11514_)
																							end

																							if arg1.interrupted then
																								__FUNC_113BC_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_113BC_)
																						end

																						if arg1.interrupted then
																							__FUNC_11264_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11264_)
																					end

																					if arg1.interrupted then
																						__FUNC_1110C_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1110C_)
																				end

																				if arg1.interrupted then
																					__FUNC_10FB4_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10FB4_)
																			end

																			if arg1.interrupted then
																				__FUNC_10E5C_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E5C_)
																		end

																		if arg1.interrupted then
																			__FUNC_10D04_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D04_)
																	end

																	if arg1.interrupted then
																		__FUNC_10BAF_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																	arg0:setAlpha(1.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10BAF_)
																end

																if arg1.interrupted then
																	__FUNC_10A34_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A34_)
															end

															if arg1.interrupted then
																__FUNC_108DF_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.440000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108DF_)
														end

														if arg1.interrupted then
															__FUNC_10764_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10764_)
													end

													if arg1.interrupted then
														__FUNC_1060C_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1060C_)
												end

												if arg1.interrupted then
													__FUNC_104B4_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_104B4_)
											end

											if arg1.interrupted then
												__FUNC_1035F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.890000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1035F_)
										end

										if arg1.interrupted then
											__FUNC_101E4_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_101E4_)
									end

									if arg1.interrupted then
										__FUNC_1008C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1008C_)
								end

								if arg1.interrupted then
									__FUNC_FF37_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF37_)
							end

							if arg1.interrupted then
								__FUNC_FDBC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FDBC_)
						end

						if arg1.interrupted then
							__FUNC_FC64_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC64_)
					end

					if arg1.interrupted then
						__FUNC_FB0F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.640000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB0F_)
				end

				if arg1.interrupted then
					__FUNC_F994_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F994_)
			end

			if arg1.interrupted then
				__FUNC_F83C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F83C_)
		end

		registerVal22:completeAnimation()
		registerVal2.MenuTitle:setAlpha(0.000000)
		__FUNC_F6E5_(registerVal22, {})
	end

	registerVal24.Update = __FUNC_A291_
	registerVal23.DefaultState = registerVal24
	registerVal2.clipsPerState = registerVal23
	local function __FUNC_11C29_(arg0)
		arg0.ElemBackB:close()
		arg0.ElemBackA0:close()
		arg0.ElemForeB0:close()
		arg0.ElemMid0:close()
		arg0.ElemForeA0:close()
		arg0.ElemForeC0:close()
		arg0.ElemForeD0:close()
		arg0.ElemBaseA0:close()
		arg0.ElemTopC0:close()
		arg0.ElemTopB0:close()
		arg0.ElemTopA0:close()
		arg0.MenuTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11C29_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

