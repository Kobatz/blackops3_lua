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
require("ui.uieditor.widgets.Lobby.Common.FE_3dTitle")
require("ui.uieditor.widgets.Lobby.Common.FE_LabelSubHeadingA")
local function __FUNC_573_(arg0, arg1, arg2)
	local registerVal3 = Dvar.ui_execdemo_gamescom:get()
	if CoD.isPC and registerVal3 then
		arg0.Local.Label0:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FE_3dTitleContainer = registerVal2
local function __FUNC_6D1_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_3dTitleContainer)
	registerVal2.id = "FE_3dTitleContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 578.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 146.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 78.000000, 174.000000)
	registerVal3:setTopBottom(true, false, 10.000000, 103.330000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setZoom(-40.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_titlebackcircle"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.circles = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 38.000000, 190.000000)
	registerVal4:setTopBottom(true, false, 54.670000, 62.670000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZRot(45.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_titlebacklinediaga"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.diaglrg = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 161.000000, 197.000000)
	registerVal5:setTopBottom(true, false, 14.670000, 22.670000)
	registerVal5:setAlpha(0.230000)
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
	registerVal11:setLeftRight(true, false, 108.000000, 136.000000)
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
	local registerVal22 = CoD.FE_3dTitle.new(arg0, arg1)
	registerVal22:setLeftRight(true, false, 136.000000, 454.000000)
	registerVal22:setTopBottom(true, false, 29.390000, 80.500000)
	registerVal22.TextBox1.Label0:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	local function __FUNC_1F66_(arg0, arg2)
		local registerVal5 = {}
		registerVal5.elementName = "MenuTitle"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal2, registerVal5, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal22:registerEventHandler("menu_loaded", __FUNC_1F66_)
	registerVal2:addElement(registerVal22)
	registerVal2.MenuTitle = registerVal22
	local registerVal23 = CoD.FE_LabelSubHeadingA.new(arg0, arg1)
	registerVal23:setLeftRight(true, false, 136.000000, 210.000000)
	registerVal23:setTopBottom(true, false, 84.110000, 113.110000)
	registerVal23:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal23:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal23.Label0:setRGB(0.740000, 0.780000, 0.790000)
	registerVal23.Label0:setText(Engine.Localize("MENU_LOCAL_CAPS"))
	registerVal23.Label0:setTTF("fonts/escom.ttf")
	local function __FUNC_2051_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23:setAlpha(GetOfflineAlpha(registerVal1))
		end
	end

	registerVal23:subscribeToGlobalModel(arg1, "LobbyRoot", "lobbyNetworkMode", __FUNC_2051_)
	registerVal2:addElement(registerVal23)
	registerVal2.Local = registerVal23
	local registerVal24 = {}
	local registerVal25 = {}
	local function __FUNC_2106_()
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

	registerVal25.DefaultClip = __FUNC_2106_
	local function __FUNC_2E52_()
		registerVal2:setupElementClipCounter(20.000000)
		local function __FUNC_3BD0_(arg0, arg1)
			local function __FUNC_3D28_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3D28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1049.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D28_)
		end

		registerVal3:completeAnimation()
		registerVal2.circles:setAlpha(0.000000)
		__FUNC_3BD0_(registerVal3, {})
		local function __FUNC_3EDD_(arg0, arg1)
			local function __FUNC_4034_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setLeftRight(true, false, 38.000000, 190.000000)
				arg0:setTopBottom(true, false, 54.670000, 62.670000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4034_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 949.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4034_)
		end

		registerVal4:completeAnimation()
		registerVal2.diaglrg:setLeftRight(true, false, 38.000000, 190.000000)
		registerVal2.diaglrg:setTopBottom(true, false, 54.670000, 62.670000)
		registerVal2.diaglrg:setAlpha(0.000000)
		__FUNC_3EDD_(registerVal4, {})
		local function __FUNC_4259_(arg0, arg1)
			local function __FUNC_43B0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 161.000000, 197.000000)
				arg0:setTopBottom(true, false, 14.670000, 22.670000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_43B0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43B0_)
		end

		registerVal5:completeAnimation()
		registerVal2.diagsm:setLeftRight(true, false, 161.000000, 197.000000)
		registerVal2.diagsm:setTopBottom(true, false, 14.670000, 22.670000)
		registerVal2.diagsm:setAlpha(0.000000)
		__FUNC_4259_(registerVal5, {})
		local function __FUNC_45D5_(arg0, arg1)
			local function __FUNC_472C_(arg0, arg1)
				local function __FUNC_48A7_(arg0, arg1)
					local function __FUNC_4A34_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 320.000000, true, true, CoD.TweenType.Linear)
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
						__FUNC_4A34_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 299.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 78.000000, 90.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A34_)
				end

				if arg1.interrupted then
					__FUNC_48A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48A7_)
			end

			if arg1.interrupted then
				__FUNC_472C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_472C_)
		end

		registerVal6:completeAnimation()
		registerVal2.pixela:setLeftRight(true, false, 32.000000, 44.000000)
		registerVal2.pixela:setTopBottom(true, false, 29.000000, 81.000000)
		registerVal2.pixela:setAlpha(0.000000)
		__FUNC_45D5_(registerVal6, {})
		local function __FUNC_4C59_(arg0, arg1)
			local function __FUNC_4DB0_(arg0, arg1)
				local function __FUNC_4F2B_(arg0, arg1)
					local function __FUNC_50B8_(arg0, arg1)
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
						__FUNC_50B8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 379.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 157.000000, 189.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50B8_)
				end

				if arg1.interrupted then
					__FUNC_4F2B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F2B_)
			end

			if arg1.interrupted then
				__FUNC_4DB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DB0_)
		end

		registerVal7:completeAnimation()
		registerVal2.pixelb:setLeftRight(true, false, 68.000000, 100.000000)
		registerVal2.pixelb:setTopBottom(true, false, 29.000000, 81.000000)
		registerVal2.pixelb:setAlpha(0.000000)
		__FUNC_4C59_(registerVal7, {})
		local function __FUNC_52DD_(arg0, arg1)
			local function __FUNC_5434_(arg0, arg1)
				local function __FUNC_55AF_(arg0, arg1)
					local function __FUNC_573A_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 419.000000, true, true, CoD.TweenType.Back)
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
						__FUNC_573A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 210.000000, true, true, CoD.TweenType.Back)
					arg0:setLeftRight(true, false, 66.520000, 82.520000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_573A_)
				end

				if arg1.interrupted then
					__FUNC_55AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55AF_)
			end

			if arg1.interrupted then
				__FUNC_5434_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5434_)
		end

		registerVal8:completeAnimation()
		registerVal2.pixelc:setLeftRight(true, false, 42.000000, 58.000000)
		registerVal2.pixelc:setTopBottom(true, false, 29.000000, 81.000000)
		registerVal2.pixelc:setAlpha(0.000000)
		__FUNC_52DD_(registerVal8, {})
		local function __FUNC_595B_(arg0, arg1)
			local function __FUNC_5AB0_(arg0, arg1)
				local function __FUNC_5C2B_(arg0, arg1)
					local function __FUNC_5DB6_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 269.000000, true, true, CoD.TweenType.Back)
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
						__FUNC_5DB6_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 399.000000, true, true, CoD.TweenType.Back)
					arg0:setLeftRight(true, false, 167.200000, 207.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DB6_)
				end

				if arg1.interrupted then
					__FUNC_5C2B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C2B_)
			end

			if arg1.interrupted then
				__FUNC_5AB0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AB0_)
		end

		registerVal9:completeAnimation()
		registerVal2.pixeld:setLeftRight(true, false, 94.000000, 134.000000)
		registerVal2.pixeld:setTopBottom(true, false, 28.500000, 80.500000)
		registerVal2.pixeld:setAlpha(0.000000)
		__FUNC_595B_(registerVal9, {})
		local function __FUNC_5FD7_(arg0, arg1)
			local function __FUNC_612C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_612C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_612C_)
		end

		registerVal10:completeAnimation()
		registerVal2.centersquare:setAlpha(0.000000)
		__FUNC_5FD7_(registerVal10, {})
		local function __FUNC_62E1_(arg0, arg1)
			local function __FUNC_6438_(arg0, arg1)
				local function __FUNC_65B3_(arg0, arg1)
					local function __FUNC_6740_(arg0, arg1)
						local function __FUNC_6898_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 370.000000, true, true, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 110.000000, 138.000000)
							arg0:setTopBottom(true, false, -5.000000, 115.000000)
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_6898_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6898_)
					end

					if arg1.interrupted then
						__FUNC_6740_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 340.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 557.000000, 585.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6740_)
				end

				if arg1.interrupted then
					__FUNC_65B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65B3_)
			end

			if arg1.interrupted then
				__FUNC_6438_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6438_)
		end

		registerVal11:completeAnimation()
		registerVal2.ElemBackB:setLeftRight(true, false, 158.000000, 186.000000)
		registerVal2.ElemBackB:setTopBottom(true, false, -5.000000, 115.000000)
		registerVal2.ElemBackB:setAlpha(0.000000)
		__FUNC_62E1_(registerVal11, {})
		local function __FUNC_6ABD_(arg0, arg1)
			local function __FUNC_6C14_(arg0, arg1)
				local function __FUNC_6D8F_(arg0, arg1)
					local function __FUNC_6F54_(arg0, arg1)
						local function __FUNC_70AC_(arg0, arg1)
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
							__FUNC_70AC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70AC_)
					end

					if arg1.interrupted then
						__FUNC_6F54_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 269.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 545.000000, 581.000000)
					arg0:setTopBottom(true, false, -5.000000, 115.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F54_)
				end

				if arg1.interrupted then
					__FUNC_6D8F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D8F_)
			end

			if arg1.interrupted then
				__FUNC_6C14_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 689.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C14_)
		end

		registerVal12:completeAnimation()
		registerVal2.ElemBackA0:setLeftRight(true, false, 110.000000, 146.000000)
		registerVal2.ElemBackA0:setTopBottom(true, false, -4.320000, 115.680000)
		registerVal2.ElemBackA0:setAlpha(0.000000)
		__FUNC_6ABD_(registerVal12, {})
		local function __FUNC_72CC_(arg0, arg1)
			local function __FUNC_7424_(arg0, arg1)
				local function __FUNC_759F_(arg0, arg1)
					local function __FUNC_772C_(arg0, arg1)
						local function __FUNC_7884_(arg0, arg1)
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
							__FUNC_7884_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7884_)
					end

					if arg1.interrupted then
						__FUNC_772C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 529.000000, 537.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_772C_)
				end

				if arg1.interrupted then
					__FUNC_759F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_759F_)
			end

			if arg1.interrupted then
				__FUNC_7424_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7424_)
		end

		registerVal13:completeAnimation()
		registerVal2.ElemForeB0:setLeftRight(true, false, 106.000000, 114.000000)
		registerVal2.ElemForeB0:setTopBottom(true, false, 22.500000, 86.500000)
		registerVal2.ElemForeB0:setAlpha(0.000000)
		__FUNC_72CC_(registerVal13, {})
		local function __FUNC_7AA9_(arg0, arg1)
			local function __FUNC_7C00_(arg0, arg1)
				local function __FUNC_7D7B_(arg0, arg1)
					local function __FUNC_7F08_(arg0, arg1)
						local function __FUNC_8060_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 200.000000, true, true, CoD.TweenType.Linear)
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
							__FUNC_8060_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8060_)
					end

					if arg1.interrupted then
						__FUNC_7F08_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 299.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 473.000000, 593.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F08_)
				end

				if arg1.interrupted then
					__FUNC_7D7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D7B_)
			end

			if arg1.interrupted then
				__FUNC_7C00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C00_)
		end

		registerVal14:completeAnimation()
		registerVal2.ElemMid0:setLeftRight(true, false, 24.000000, 144.000000)
		registerVal2.ElemMid0:setTopBottom(true, false, 22.500000, 86.500000)
		registerVal2.ElemMid0:setAlpha(0.000000)
		__FUNC_7AA9_(registerVal14, {})
		local function __FUNC_8285_(arg0, arg1)
			local function __FUNC_83DC_(arg0, arg1)
				local function __FUNC_8557_(arg0, arg1)
					local function __FUNC_86E4_(arg0, arg1)
						local function __FUNC_883C_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 269.000000, true, true, CoD.TweenType.Linear)
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
							__FUNC_883C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_883C_)
					end

					if arg1.interrupted then
						__FUNC_86E4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 240.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 543.000000, 571.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86E4_)
				end

				if arg1.interrupted then
					__FUNC_8557_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8557_)
			end

			if arg1.interrupted then
				__FUNC_83DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 660.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_83DC_)
		end

		registerVal15:completeAnimation()
		registerVal2.ElemForeA0:setLeftRight(true, false, 110.000000, 138.000000)
		registerVal2.ElemForeA0:setTopBottom(true, false, 22.670000, 86.670000)
		registerVal2.ElemForeA0:setAlpha(0.000000)
		__FUNC_8285_(registerVal15, {})
		local function __FUNC_8A61_(arg0, arg1)
			local function __FUNC_8BB8_(arg0, arg1)
				local function __FUNC_8D33_(arg0, arg1)
					local function __FUNC_8EF8_(arg0, arg1)
						local function __FUNC_9050_(arg0, arg1)
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
							__FUNC_9050_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9050_)
					end

					if arg1.interrupted then
						__FUNC_8EF8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 299.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 571.000000, 587.000000)
					arg0:setTopBottom(true, false, 21.830000, 87.170000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8EF8_)
				end

				if arg1.interrupted then
					__FUNC_8D33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D33_)
			end

			if arg1.interrupted then
				__FUNC_8BB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 660.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BB8_)
		end

		registerVal16:completeAnimation()
		registerVal2.ElemForeC0:setLeftRight(true, false, 102.000000, 118.000000)
		registerVal2.ElemForeC0:setTopBottom(true, false, 21.830000, 87.170000)
		registerVal2.ElemForeC0:setAlpha(0.000000)
		__FUNC_8A61_(registerVal16, {})
		local function __FUNC_9275_(arg0, arg1)
			local function __FUNC_93CC_(arg0, arg1)
				local function __FUNC_9547_(arg0, arg1)
					local function __FUNC_96D4_(arg0, arg1)
						local function __FUNC_982C_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 350.000000, true, true, CoD.TweenType.Linear)
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
							__FUNC_982C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_982C_)
					end

					if arg1.interrupted then
						__FUNC_96D4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 340.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 549.000000, 577.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_96D4_)
				end

				if arg1.interrupted then
					__FUNC_9547_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9547_)
			end

			if arg1.interrupted then
				__FUNC_93CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93CC_)
		end

		registerVal17:completeAnimation()
		registerVal2.ElemForeD0:setLeftRight(true, false, 76.000000, 104.000000)
		registerVal2.ElemForeD0:setTopBottom(true, false, 22.500000, 86.500000)
		registerVal2.ElemForeD0:setAlpha(0.000000)
		__FUNC_9275_(registerVal17, {})
		local function __FUNC_9A51_(arg0, arg1)
			local function __FUNC_9BA8_(arg0, arg1)
				local function __FUNC_9D23_(arg0, arg1)
					local function __FUNC_9EB0_(arg0, arg1)
						local function __FUNC_A008_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 270.000000, true, true, CoD.TweenType.Linear)
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
							__FUNC_A008_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A008_)
					end

					if arg1.interrupted then
						__FUNC_9EB0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 240.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 529.000000, 585.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9EB0_)
				end

				if arg1.interrupted then
					__FUNC_9D23_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D23_)
			end

			if arg1.interrupted then
				__FUNC_9BA8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BA8_)
		end

		registerVal18:completeAnimation()
		registerVal2.ElemBaseA0:setLeftRight(true, false, 66.000000, 122.000000)
		registerVal2.ElemBaseA0:setTopBottom(true, false, 86.670000, 102.670000)
		registerVal2.ElemBaseA0:setAlpha(0.000000)
		__FUNC_9A51_(registerVal18, {})
		local function __FUNC_A22D_(arg0, arg1)
			local function __FUNC_A384_(arg0, arg1)
				local function __FUNC_A4FF_(arg0, arg1)
					local function __FUNC_A68C_(arg0, arg1)
						local function __FUNC_A7E4_(arg0, arg1)
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
							__FUNC_A7E4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A7E4_)
					end

					if arg1.interrupted then
						__FUNC_A68C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 370.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 521.000000, 545.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A68C_)
				end

				if arg1.interrupted then
					__FUNC_A4FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A4FF_)
			end

			if arg1.interrupted then
				__FUNC_A384_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A384_)
		end

		registerVal19:completeAnimation()
		registerVal2.ElemTopC0:setLeftRight(true, false, 122.000000, 146.000000)
		registerVal2.ElemTopC0:setTopBottom(true, false, 15.000000, 19.000000)
		registerVal2.ElemTopC0:setAlpha(0.000000)
		__FUNC_A22D_(registerVal19, {})
		local function __FUNC_AA09_(arg0, arg1)
			local function __FUNC_AB60_(arg0, arg1)
				local function __FUNC_ACDB_(arg0, arg1)
					local function __FUNC_AE68_(arg0, arg1)
						local function __FUNC_AFC0_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 250.000000, true, true, CoD.TweenType.Linear)
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
							__FUNC_AFC0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFC0_)
					end

					if arg1.interrupted then
						__FUNC_AE68_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 299.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 515.000000, 571.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE68_)
				end

				if arg1.interrupted then
					__FUNC_ACDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACDB_)
			end

			if arg1.interrupted then
				__FUNC_AB60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB60_)
		end

		registerVal20:completeAnimation()
		registerVal2.ElemTopB0:setLeftRight(true, false, 116.000000, 172.000000)
		registerVal2.ElemTopB0:setTopBottom(true, false, 15.000000, 19.000000)
		registerVal2.ElemTopB0:setAlpha(0.000000)
		__FUNC_AA09_(registerVal20, {})
		local function __FUNC_B1E5_(arg0, arg1)
			local function __FUNC_B33C_(arg0, arg1)
				local function __FUNC_B4B7_(arg0, arg1)
					local function __FUNC_B644_(arg0, arg1)
						local function __FUNC_B79C_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 269.000000, true, true, CoD.TweenType.Linear)
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
							__FUNC_B79C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B79C_)
					end

					if arg1.interrupted then
						__FUNC_B644_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 299.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 526.500000, 582.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B644_)
				end

				if arg1.interrupted then
					__FUNC_B4B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4B7_)
			end

			if arg1.interrupted then
				__FUNC_B33C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B33C_)
		end

		registerVal21:completeAnimation()
		registerVal2.ElemTopA0:setLeftRight(true, false, 60.000000, 116.000000)
		registerVal2.ElemTopA0:setTopBottom(true, false, 15.000000, 19.000000)
		registerVal2.ElemTopA0:setAlpha(0.000000)
		__FUNC_B1E5_(registerVal21, {})
		local function __FUNC_B9C1_(arg0, arg1)
			local function __FUNC_BB18_(arg0, arg1)
				local function __FUNC_BC70_(arg0, arg1)
					local function __FUNC_BDC8_(arg0, arg1)
						local function __FUNC_BF20_(arg0, arg1)
							local function __FUNC_C078_(arg0, arg1)
								local function __FUNC_C1CE_(arg0, arg1)
									local function __FUNC_C324_(arg0, arg1)
										local function __FUNC_C47C_(arg0, arg1)
											local function __FUNC_C5D4_(arg0, arg1)
												local function __FUNC_C72C_(arg0, arg1)
													local function __FUNC_C884_(arg0, arg1)
														local function __FUNC_C9DC_(arg0, arg1)
															local function __FUNC_CB34_(arg0, arg1)
																local function __FUNC_CC8C_(arg0, arg1)
																	local function __FUNC_CDE4_(arg0, arg1)
																		local function __FUNC_CF3C_(arg0, arg1)
																			local function __FUNC_D094_(arg0, arg1)
																				local function __FUNC_D1EC_(arg0, arg1)
																					local function __FUNC_D344_(arg0, arg1)
																						local function __FUNC_D49C_(arg0, arg1)
																							local function __FUNC_D5F4_(arg0, arg1)
																								local function __FUNC_D74C_(arg0, arg1)
																									local function __FUNC_D8A4_(arg0, arg1)
																										local function __FUNC_D9FC_(arg0, arg1)
																											local function __FUNC_DB54_(arg0, arg1)
																												local function __FUNC_DCAC_(arg0, arg1)
																													if not arg1.interrupted then
																														arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																													end
																													arg0:setAlpha(1.000000)
																													if arg1.interrupted then
																														registerVal2.clipFinished(arg0, arg1)
																													else
																														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																													end
																												end

																												if arg1.interrupted then
																													__FUNC_DCAC_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DCAC_)
																											end

																											if arg1.interrupted then
																												__FUNC_DB54_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DB54_)
																										end

																										if arg1.interrupted then
																											__FUNC_D9FC_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D9FC_)
																									end

																									if arg1.interrupted then
																										__FUNC_D8A4_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8A4_)
																								end

																								if arg1.interrupted then
																									__FUNC_D74C_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D74C_)
																							end

																							if arg1.interrupted then
																								__FUNC_D5F4_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D5F4_)
																						end

																						if arg1.interrupted then
																							__FUNC_D49C_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D49C_)
																					end

																					if arg1.interrupted then
																						__FUNC_D344_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D344_)
																				end

																				if arg1.interrupted then
																					__FUNC_D1EC_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1EC_)
																			end

																			if arg1.interrupted then
																				__FUNC_D094_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D094_)
																		end

																		if arg1.interrupted then
																			__FUNC_CF3C_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Bounce)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF3C_)
																	end

																	if arg1.interrupted then
																		__FUNC_CDE4_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CDE4_)
																end

																if arg1.interrupted then
																	__FUNC_CC8C_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC8C_)
															end

															if arg1.interrupted then
																__FUNC_CB34_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB34_)
														end

														if arg1.interrupted then
															__FUNC_C9DC_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C9DC_)
													end

													if arg1.interrupted then
														__FUNC_C884_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C884_)
												end

												if arg1.interrupted then
													__FUNC_C72C_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C72C_)
											end

											if arg1.interrupted then
												__FUNC_C5D4_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5D4_)
										end

										if arg1.interrupted then
											__FUNC_C47C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C47C_)
									end

									if arg1.interrupted then
										__FUNC_C324_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C324_)
								end

								if arg1.interrupted then
									__FUNC_C1CE_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 390.000000, false, true, CoD.TweenType.Back)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C1CE_)
							end

							if arg1.interrupted then
								__FUNC_C078_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C078_)
						end

						if arg1.interrupted then
							__FUNC_BF20_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF20_)
					end

					if arg1.interrupted then
						__FUNC_BDC8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BDC8_)
				end

				if arg1.interrupted then
					__FUNC_BC70_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC70_)
			end

			if arg1.interrupted then
				__FUNC_BB18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB18_)
		end

		registerVal22:completeAnimation()
		registerVal2.MenuTitle:setAlpha(1.000000)
		__FUNC_B9C1_(registerVal22, {})
	end

	registerVal25.Intro = __FUNC_2E52_
	local function __FUNC_DE61_()
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
		local function __FUNC_EC3C_(arg0, arg1)
			local function __FUNC_EDCC_(arg0, arg1)
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
				__FUNC_EDCC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 78.000000, 90.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EDCC_)
		end

		registerVal6:completeAnimation()
		registerVal2.pixela:setLeftRight(true, false, 32.000000, 44.000000)
		registerVal2.pixela:setTopBottom(true, false, 29.000000, 81.000000)
		registerVal2.pixela:setAlpha(1.000000)
		__FUNC_EC3C_(registerVal6, {})
		local function __FUNC_EFF1_(arg0, arg1)
			local function __FUNC_F180_(arg0, arg1)
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
				__FUNC_F180_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 157.000000, 189.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F180_)
		end

		registerVal7:completeAnimation()
		registerVal2.pixelb:setLeftRight(true, false, 68.000000, 100.000000)
		registerVal2.pixelb:setTopBottom(true, false, 29.000000, 81.000000)
		registerVal2.pixelb:setAlpha(1.000000)
		__FUNC_EFF1_(registerVal7, {})
		local function __FUNC_F3A5_(arg0, arg1)
			local function __FUNC_F532_(arg0, arg1)
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
				__FUNC_F532_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, true, true, CoD.TweenType.Back)
			arg0:setLeftRight(true, false, 66.520000, 82.520000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F532_)
		end

		registerVal8:completeAnimation()
		registerVal2.pixelc:setLeftRight(true, false, 42.000000, 58.000000)
		registerVal2.pixelc:setTopBottom(true, false, 29.000000, 81.000000)
		registerVal2.pixelc:setAlpha(1.000000)
		__FUNC_F3A5_(registerVal8, {})
		local function __FUNC_F753_(arg0, arg1)
			local function __FUNC_F8DE_(arg0, arg1)
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
				__FUNC_F8DE_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, true, true, CoD.TweenType.Back)
			arg0:setLeftRight(true, false, 167.200000, 207.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F8DE_)
		end

		registerVal9:completeAnimation()
		registerVal2.pixeld:setLeftRight(true, false, 94.000000, 134.000000)
		registerVal2.pixeld:setTopBottom(true, false, 28.500000, 80.500000)
		registerVal2.pixeld:setAlpha(1.000000)
		__FUNC_F753_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.centersquare:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_FAFF_(arg0, arg1)
			local function __FUNC_FC8C_(arg0, arg1)
				local function __FUNC_FDE4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 339.000000, true, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 108.000000, 136.000000)
					arg0:setTopBottom(true, false, -5.000000, 115.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_FDE4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FDE4_)
			end

			if arg1.interrupted then
				__FUNC_FC8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 557.000000, 585.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC8C_)
		end

		registerVal11:completeAnimation()
		registerVal2.ElemBackB:setLeftRight(true, false, 158.000000, 186.000000)
		registerVal2.ElemBackB:setTopBottom(true, false, -5.000000, 115.000000)
		registerVal2.ElemBackB:setAlpha(1.000000)
		__FUNC_FAFF_(registerVal11, {})
		local function __FUNC_10009_(arg0, arg1)
			local function __FUNC_101D0_(arg0, arg1)
				local function __FUNC_10328_(arg0, arg1)
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
					__FUNC_10328_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10328_)
			end

			if arg1.interrupted then
				__FUNC_101D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 545.000000, 581.000000)
			arg0:setTopBottom(true, false, -5.000000, 115.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_101D0_)
		end

		registerVal12:completeAnimation()
		registerVal2.ElemBackA0:setLeftRight(true, false, 110.000000, 146.000000)
		registerVal2.ElemBackA0:setTopBottom(true, false, -4.320000, 115.680000)
		registerVal2.ElemBackA0:setAlpha(1.000000)
		__FUNC_10009_(registerVal12, {})
		local function __FUNC_10548_(arg0, arg1)
			local function __FUNC_106D8_(arg0, arg1)
				local function __FUNC_10830_(arg0, arg1)
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
					__FUNC_10830_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10830_)
			end

			if arg1.interrupted then
				__FUNC_106D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 529.000000, 537.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_106D8_)
		end

		registerVal13:completeAnimation()
		registerVal2.ElemForeB0:setLeftRight(true, false, 106.000000, 114.000000)
		registerVal2.ElemForeB0:setTopBottom(true, false, 22.500000, 86.500000)
		registerVal2.ElemForeB0:setAlpha(1.000000)
		__FUNC_10548_(registerVal13, {})
		local function __FUNC_10A55_(arg0, arg1)
			local function __FUNC_10BE4_(arg0, arg1)
				local function __FUNC_10D3C_(arg0, arg1)
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
					__FUNC_10D3C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D3C_)
			end

			if arg1.interrupted then
				__FUNC_10BE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 473.000000, 593.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10BE4_)
		end

		registerVal14:completeAnimation()
		registerVal2.ElemMid0:setLeftRight(true, false, 24.000000, 144.000000)
		registerVal2.ElemMid0:setTopBottom(true, false, 22.500000, 86.500000)
		registerVal2.ElemMid0:setAlpha(1.000000)
		__FUNC_10A55_(registerVal14, {})
		local function __FUNC_10F61_(arg0, arg1)
			local function __FUNC_110F0_(arg0, arg1)
				local function __FUNC_11248_(arg0, arg1)
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
					__FUNC_11248_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11248_)
			end

			if arg1.interrupted then
				__FUNC_110F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 543.000000, 571.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_110F0_)
		end

		registerVal15:completeAnimation()
		registerVal2.ElemForeA0:setLeftRight(true, false, 110.000000, 138.000000)
		registerVal2.ElemForeA0:setTopBottom(true, false, 22.670000, 86.670000)
		registerVal2.ElemForeA0:setAlpha(1.000000)
		__FUNC_10F61_(registerVal15, {})
		local function __FUNC_1146D_(arg0, arg1)
			local function __FUNC_11634_(arg0, arg1)
				local function __FUNC_1178C_(arg0, arg1)
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
					__FUNC_1178C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1178C_)
			end

			if arg1.interrupted then
				__FUNC_11634_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 571.000000, 587.000000)
			arg0:setTopBottom(true, false, 21.830000, 87.170000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11634_)
		end

		registerVal16:completeAnimation()
		registerVal2.ElemForeC0:setLeftRight(true, false, 102.000000, 118.000000)
		registerVal2.ElemForeC0:setTopBottom(true, false, 21.830000, 87.170000)
		registerVal2.ElemForeC0:setAlpha(1.000000)
		__FUNC_1146D_(registerVal16, {})
		local function __FUNC_119B1_(arg0, arg1)
			local function __FUNC_11B40_(arg0, arg1)
				local function __FUNC_11C98_(arg0, arg1)
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
					__FUNC_11C98_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11C98_)
			end

			if arg1.interrupted then
				__FUNC_11B40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 549.000000, 577.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11B40_)
		end

		registerVal17:completeAnimation()
		registerVal2.ElemForeD0:setLeftRight(true, false, 76.000000, 104.000000)
		registerVal2.ElemForeD0:setTopBottom(true, false, 22.500000, 86.500000)
		registerVal2.ElemForeD0:setAlpha(1.000000)
		__FUNC_119B1_(registerVal17, {})
		local function __FUNC_11EBD_(arg0, arg1)
			local function __FUNC_1204C_(arg0, arg1)
				local function __FUNC_121A4_(arg0, arg1)
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
					__FUNC_121A4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_121A4_)
			end

			if arg1.interrupted then
				__FUNC_1204C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 529.000000, 585.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1204C_)
		end

		registerVal18:completeAnimation()
		registerVal2.ElemBaseA0:setLeftRight(true, false, 66.000000, 122.000000)
		registerVal2.ElemBaseA0:setTopBottom(true, false, 86.670000, 102.670000)
		registerVal2.ElemBaseA0:setAlpha(1.000000)
		__FUNC_11EBD_(registerVal18, {})
		local function __FUNC_123C9_(arg0, arg1)
			local function __FUNC_12558_(arg0, arg1)
				local function __FUNC_126B0_(arg0, arg1)
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
					__FUNC_126B0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_126B0_)
			end

			if arg1.interrupted then
				__FUNC_12558_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 521.000000, 545.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12558_)
		end

		registerVal19:completeAnimation()
		registerVal2.ElemTopC0:setLeftRight(true, false, 122.000000, 146.000000)
		registerVal2.ElemTopC0:setTopBottom(true, false, 15.000000, 19.000000)
		registerVal2.ElemTopC0:setAlpha(1.000000)
		__FUNC_123C9_(registerVal19, {})
		local function __FUNC_128D5_(arg0, arg1)
			local function __FUNC_12A64_(arg0, arg1)
				local function __FUNC_12BBC_(arg0, arg1)
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
					__FUNC_12BBC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12BBC_)
			end

			if arg1.interrupted then
				__FUNC_12A64_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 515.000000, 571.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12A64_)
		end

		registerVal20:completeAnimation()
		registerVal2.ElemTopB0:setLeftRight(true, false, 116.000000, 172.000000)
		registerVal2.ElemTopB0:setTopBottom(true, false, 15.000000, 19.000000)
		registerVal2.ElemTopB0:setAlpha(1.000000)
		__FUNC_128D5_(registerVal20, {})
		local function __FUNC_12DE1_(arg0, arg1)
			local function __FUNC_12F70_(arg0, arg1)
				local function __FUNC_130C8_(arg0, arg1)
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
					__FUNC_130C8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_130C8_)
			end

			if arg1.interrupted then
				__FUNC_12F70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 526.500000, 582.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12F70_)
		end

		registerVal21:completeAnimation()
		registerVal2.ElemTopA0:setLeftRight(true, false, 60.000000, 116.000000)
		registerVal2.ElemTopA0:setTopBottom(true, false, 15.000000, 19.000000)
		registerVal2.ElemTopA0:setAlpha(1.000000)
		__FUNC_12DE1_(registerVal21, {})
		local function __FUNC_132ED_(arg0, arg1)
			local function __FUNC_134DA_(arg0, arg1)
				local function __FUNC_136C6_(arg0, arg1)
					local function __FUNC_138B2_(arg0, arg1)
						local function __FUNC_13A9E_(arg0, arg1)
							local function __FUNC_13C8A_(arg0, arg1)
								local function __FUNC_13E76_(arg0, arg1)
									local function __FUNC_14062_(arg0, arg1)
										local function __FUNC_1424E_(arg0, arg1)
											local function __FUNC_1443A_(arg0, arg1)
												local function __FUNC_14626_(arg0, arg1)
													local function __FUNC_14812_(arg0, arg1)
														local function __FUNC_149FE_(arg0, arg1)
															local function __FUNC_14BEA_(arg0, arg1)
																local function __FUNC_14DD6_(arg0, arg1)
																	local function __FUNC_14FC2_(arg0, arg1)
																		local function __FUNC_151AE_(arg0, arg1)
																			local function __FUNC_1539A_(arg0, arg1)
																				local function __FUNC_15586_(arg0, arg1)
																					local function __FUNC_156DC_(arg0, arg1)
																						local function __FUNC_15834_(arg0, arg1)
																							local function __FUNC_1598C_(arg0, arg1)
																								if not arg1.interrupted then
																									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																									arg0.TextBox1:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																								end
																								arg0.TextBox1:setAlpha(1.000000)
																								if arg1.interrupted then
																									registerVal2.clipFinished(arg0, arg1)
																								else
																									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																								end
																							end

																							if arg1.interrupted then
																								__FUNC_1598C_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1598C_)
																						end

																						if arg1.interrupted then
																							__FUNC_15834_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15834_)
																					end

																					if arg1.interrupted then
																						__FUNC_156DC_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_156DC_)
																				end

																				if arg1.interrupted then
																					__FUNC_15586_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
																				arg0.TextBox1:beginAnimation("subkeyframe", 60.000000, false, false, CoD.TweenType.Linear)
																				arg0.TextBox1:setAlpha(1.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15586_)
																			end

																			if arg1.interrupted then
																				__FUNC_1539A_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																			arg0.TextBox1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
																			arg0.TextBox1:setAlpha(0.890000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1539A_)
																		end

																		if arg1.interrupted then
																			__FUNC_151AE_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																		arg0.TextBox1:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																		arg0.TextBox1:setAlpha(0.870000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_151AE_)
																	end

																	if arg1.interrupted then
																		__FUNC_14FC2_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.TextBox1:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0.TextBox1:setAlpha(0.840000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14FC2_)
																end

																if arg1.interrupted then
																	__FUNC_14DD6_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																arg0.TextBox1:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
																arg0.TextBox1:setAlpha(0.820000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14DD6_)
															end

															if arg1.interrupted then
																__FUNC_14BEA_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
															arg0.TextBox1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
															arg0.TextBox1:setAlpha(0.790000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14BEA_)
														end

														if arg1.interrupted then
															__FUNC_149FE_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
														arg0.TextBox1:beginAnimation("subkeyframe", 39.000000, false, false, CoD.TweenType.Linear)
														arg0.TextBox1:setAlpha(0.770000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_149FE_)
													end

													if arg1.interrupted then
														__FUNC_14812_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Bounce)
													arg0.TextBox1:beginAnimation("subkeyframe", 259.000000, false, false, CoD.TweenType.Bounce)
													arg0.TextBox1:setAlpha(0.700000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14812_)
												end

												if arg1.interrupted then
													__FUNC_14626_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
												arg0.TextBox1:beginAnimation("subkeyframe", 90.000000, false, false, CoD.TweenType.Linear)
												arg0.TextBox1:setAlpha(0.230000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14626_)
											end

											if arg1.interrupted then
												__FUNC_1443A_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.TextBox1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0.TextBox1:setAlpha(0.510000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1443A_)
										end

										if arg1.interrupted then
											__FUNC_1424E_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0.TextBox1:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0.TextBox1:setAlpha(0.470000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1424E_)
									end

									if arg1.interrupted then
										__FUNC_14062_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0.TextBox1:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0.TextBox1:setAlpha(0.440000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14062_)
								end

								if arg1.interrupted then
									__FUNC_13E76_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0.TextBox1:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0.TextBox1:setAlpha(0.360000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13E76_)
							end

							if arg1.interrupted then
								__FUNC_13C8A_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0.TextBox1:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0.TextBox1:setAlpha(0.330000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13C8A_)
						end

						if arg1.interrupted then
							__FUNC_13A9E_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0.TextBox1:beginAnimation("subkeyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0.TextBox1:setAlpha(0.260000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A9E_)
					end

					if arg1.interrupted then
						__FUNC_138B2_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0.TextBox1:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0.TextBox1:setAlpha(0.220000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_138B2_)
				end

				if arg1.interrupted then
					__FUNC_136C6_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.TextBox1:beginAnimation("subkeyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0.TextBox1:setAlpha(0.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_136C6_)
			end

			if arg1.interrupted then
				__FUNC_134DA_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0.TextBox1:beginAnimation("subkeyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0.TextBox1:setAlpha(0.110000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_134DA_)
		end

		registerVal22:completeAnimation()
		registerVal22.TextBox1:completeAnimation()
		registerVal2.MenuTitle.TextBox1:setAlpha(0.000000)
		__FUNC_132ED_(registerVal22, {})
	end

	registerVal25.Update = __FUNC_DE61_
	local function __FUNC_15BB4_()
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
		local function __FUNC_16963_(arg0, arg1)
			local function __FUNC_16B4E_(arg0, arg1)
				local function __FUNC_16D3A_(arg0, arg1)
					local function __FUNC_16F26_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
							arg0.TextBox1:beginAnimation("subkeyframe", 49.000000, false, false, CoD.TweenType.Linear)
						end
						arg0.TextBox1:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_16F26_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0.TextBox1:beginAnimation("subkeyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0.TextBox1:setAlpha(0.580000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F26_)
				end

				if arg1.interrupted then
					__FUNC_16D3A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0.TextBox1:beginAnimation("subkeyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0.TextBox1:setAlpha(0.190000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16D3A_)
			end

			if arg1.interrupted then
				__FUNC_16B4E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0.TextBox1:beginAnimation("subkeyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0.TextBox1:setAlpha(0.640000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16B4E_)
		end

		registerVal22:completeAnimation()
		registerVal22.TextBox1:completeAnimation()
		registerVal2.MenuTitle.TextBox1:setAlpha(1.000000)
		__FUNC_16963_(registerVal22, {})
	end

	registerVal25.TextChange = __FUNC_15BB4_
	registerVal24.DefaultState = registerVal25
	registerVal2.clipsPerState = registerVal24
	local function __FUNC_1714C_(arg0)
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
		arg0.Local:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1714C_)
	if __FUNC_573_ then
		__FUNC_573_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FE_3dTitleContainer.new = __FUNC_6D1_
