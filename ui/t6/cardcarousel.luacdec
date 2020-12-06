-- Decompiled with CoDLUIDecompiler by JariK

CoD.CardCarousel = {}
CoD.CardCarousel.ItemWidth = 170.000000
CoD.CardCarousel.ItemHeight = 170.000000
CoD.CardCarousel.HighlighedItemWidth = 250.000000
CoD.CardCarousel.HighlighedItemHeight = 230.000000
CoD.CardCarousel.Spacing = 10.000000
CoD.CardCarousel.ScrollTime = 170.000000
CoD.CardCarousel.CardGrowShrinkTime = 170.000000
CoD.CardCarousel.TitleSize = CoD.textSize.Big
CoD.CardCarousel.SpaceBetweenTitleAndCarousel = 10.000000
CoD.CardCarousel.SpaceBetweenCarouselAndTitleList = 10.000000
CoD.CardCarousel.TopOffset = 15.000000
CoD.CardCarousel.EdgeBounceOffset = 20.000000
CoD.CardCarousel.MiniCarouselItemHeight = 10.000000
CoD.CardCarousel.MiniCarouselItemWidth = 10.000000
local registerVal1 = {}
registerVal1.name = "card_big"
CoD.CardCarousel.CardBigEvent = registerVal1
registerVal1 = {}
registerVal1.name = "card_small"
CoD.CardCarousel.CardSmallEvent = registerVal1
CoD.CardCarousel.HintTextLeft = 0.000000
CoD.CardCarousel.HintTextWidth = 250.000000
CoD.CardCarousel.HintTextHeight = 50.000000
CoD.CardCarousel.HintFadeInTime = 500.000000
CoD.CardCarousel.MouseDragDistance = 80.000000
if CoD.isPC then
	CoD.CardCarousel.FadeTime = 50.000000
else
	CoD.CardCarousel.FadeTime = 200.000000
end
function CoD.CardCarousel.GetCurrentCarouselInfo(arg0)
	local registerVal1 = {}
	registerVal1.carouselIndex = arg0.cardCarousel.cardCarouselList.m_currentCardCarouselIndex
	registerVal1.carouselID = arg0.cardCarousel.id
	registerVal1.cardIndex = arg0.cardIndex
	return registerVal1
end

function CoD.CardCarousel.HorizontalListGainFocus(arg0, arg1)
	arg0.m_scrollTime = 0.000000
	arg0.cardCarousel.m_cardGrowShrinkTime = 0.000000
	arg0.cardCarousel:animateToState("fade_in", 0.000000)
	local registerVal4 = {}
	registerVal4.name = "enableGrowShrink"
	arg0:dispatchEventToChildren(registerVal4)
	if arg0.m_currentCardIndex and arg0.cards[arg0.m_currentCardIndex] then
		registerVal4 = {}
		registerVal4.name = "gain_focus"
		registerVal4.controller = arg1.controller
		arg0.cards[arg0.m_currentCardIndex]:processEvent(registerVal4)
	else
		if arg0.cards[1.000000] ~= nil then
			registerVal4 = {}
			registerVal4.name = "gain_focus"
			registerVal4.controller = arg1.controller
			arg0.cards[1.000000]:processEvent(registerVal4)
		end
	end
	arg0.cardCarousel.m_isActive = true
end

function CoD.CardCarousel.HorizontalListLoseFocus(arg0, arg1)
	arg0.cardCarousel.m_isActive = false
	local registerVal4 = {}
	registerVal4.name = "disableGrowShrink"
	arg0:dispatchEventToChildren(registerVal4)
	local registerVal6 = {}
	registerVal6.leftAnchor = true
	registerVal6.rightAnchor = true
	registerVal6.left = 0.000000
	registerVal6.right = -CoD.CoD9Button.Height
	registerVal6.topAnchor = true
	registerVal6.bottomAnchor = false
	registerVal6.top = (-20.000000 * arg0.cardCarousel.cardCarouselList.m_lastScrollDirection)
	registerVal6.bottom = arg0.cardCarousel.cardCarouselList.cardCarouselSize
	registerVal6.alpha = 0.000000
	arg0.cardCarousel:registerAnimationState("fade_out", registerVal6)
	arg0.cardCarousel:animateToState("fade_out", arg0.cardCarousel.m_fadeTime)
	arg0:dispatchEventToChildren(arg1)
end

local function __FUNC_133B_(arg0, arg1)
	arg0.hintTextContainer:beginAnimation("fade_out", CoD.CardCarousel.HintFadeInTime)
	arg0.hintTextContainer:setAlpha(0.000000)
end

local function __FUNC_1447_(arg0, arg1)
	arg0.hintTextContainer.hintText:updateText(arg1.hintText)
	arg0.hintTextContainer:setAlpha(0.000000)
	arg0.hintTextContainer:beginAnimation("fade_in", CoD.CardCarousel.HintFadeInTime)
	arg0.hintTextContainer:setAlpha(1.000000)
end

local function __FUNC_15C1_(arg0, arg1)
	arg0:animateToState("default", 0.000000)
	CoD.CardCarouselList.UpdateCurrentCarousel(arg0.cardCarouselList)
end

local function __FUNC_16B6_(arg0, arg1, arg2)
	if arg0.horizontalList.m_currentCardIndex == arg1 then
	end
	arg0.horizontalList.m_currentCardIndex = arg1
	if arg0.m_alignToCenter then
	end
	local registerVal9 = {}
	registerVal9.leftAnchor = false
	registerVal9.rightAnchor = false
	registerVal9.left = -((arg0.m_itemWidth + arg0.m_spacing) * (arg0.horizontalList.m_currentCardIndex - 0.000000))
	registerVal9.right = 0.000000
	arg0.horizontalList:registerAnimationState("move_carousel", registerVal9)
	arg0.horizontalList:animateToState("move_carousel", 0.000000, false, false)
end

local function __FUNC_18DE_(arg0, arg1)
	__FUNC_16B6_(arg0.cardCarousel, arg0.cardCarousel.horizontalList.m_currentCardIndex, (arg0.cardCarousel.m_scrollTime / 2.000000))
end

local function __FUNC_19C1_(arg0, arg1, arg2)
	if arg1 == "left" and arg0.horizontalList.m_currentCardIndex == 1.000000 then
		local registerVal3 = arg0:getNumCards()
		if 1.000000 < registerVal3 and not arg2 then
			if arg0.m_alignToCenter then
			end
			local registerVal9 = {}
			registerVal9.leftAnchor = false
			registerVal9.rightAnchor = false
			registerVal9.left = (-((arg0.m_itemWidth + arg0.m_spacing) * (arg0.horizontalList.m_currentCardIndex - 0.000000)) + CoD.CardCarousel.EdgeBounceOffset)
			registerVal9.right = 0.000000
			arg0.horizontalList:registerAnimationState("edge_bounce", registerVal9)
			arg0.horizontalList:animateToState("edge_bounce", (arg0.m_scrollTime / 2.000000), false, false)
			arg0.horizontalList:registerEventHandler("transition_complete_edge_bounce", __FUNC_18DE_)
		end
		if arg0.cardCarouselList then
			arg0.cardCarouselList.leftButtonRepeater:cancelRepetition()
		end
		return true
	else
		if arg1 == "right" and arg0.horizontalList.m_currentCardIndex == #arg0.horizontalList.cards then
			registerVal3 = arg0:getNumCards()
			if 1.000000 < registerVal3 and not arg2 then
				if arg0.m_alignToCenter then
				end
				registerVal9 = {}
				registerVal9.leftAnchor = false
				registerVal9.rightAnchor = false
				registerVal9.left = (-((arg0.m_itemWidth + arg0.m_spacing) * (arg0.horizontalList.m_currentCardIndex - 0.000000)) - CoD.CardCarousel.EdgeBounceOffset)
				registerVal9.right = 0.000000
				arg0.horizontalList:registerAnimationState("edge_bounce", registerVal9)
				arg0.horizontalList:animateToState("edge_bounce", (arg0.m_scrollTime / 2.000000), false, false)
				arg0.horizontalList:registerEventHandler("transition_complete_edge_bounce", __FUNC_18DE_)
			end
			if arg0.cardCarouselList then
				arg0.cardCarouselList.rightButtonRepeater:cancelRepetition()
			end
			return true
		end
	end
	return false
end

CoD_CardCarousel_PerformEdgeBounce = __FUNC_19C1_
local function __FUNC_1F48_(arg0, arg1)
	if arg0.disableGrowShrink ~= true then
		arg0:animateToState("big", arg0.cardCarousel.m_cardGrowShrinkTime)
		if arg0.centerImageContainer then
			arg0.centerImageContainer:animateToState("big", arg0.cardCarousel.m_cardGrowShrinkTime)
		end
		arg0:processEvent(CoD.CardCarousel.CardBigEvent)
	end
	if not arg0.cardCarousel.disablePip then
		arg0.miniCard.backGround:animateToState("fade_in", arg0.cardCarousel.m_cardGrowShrinkTime)
	end
	__FUNC_16B6_(arg0.cardCarousel, arg0.cardIndex, arg0.cardCarousel.m_scrollTime)
	arg0.cardCarousel.m_scrollTime = CoD.CardCarousel.ScrollTime
	arg0.cardCarousel.m_cardGrowShrinkTime = CoD.CardCarousel.CardGrowShrinkTime
	if arg0.border then
		arg0.border:setRGB(CoD.trueOrange.r, CoD.trueOrange.g, CoD.trueOrange.b)
	end
	if arg0.highlight then
		if arg0.isLocked == true then
			arg0.highlight:setRGB(1.000000, 1.000000, 1.000000)
		else
			arg0.highlight:setRGB(CoD.BOIIOrange.r, CoD.BOIIOrange.g, CoD.BOIIOrange.b)
		end
	end
	local registerVal4 = {}
	registerVal4.name = "card_gain_focus"
	registerVal4.card = arg0
	registerVal4.hintText = arg1.hintText
	registerVal4.hintImage = arg1.hintImage
	registerVal4.controller = arg1.controller
	arg0:dispatchEventToParent(registerVal4)
	return LUI.UIButton.gainFocus(arg0, arg1)
end

CoD.CardCarousel.Card_GainFocus = __FUNC_1F48_
function CoD.CardCarousel.Card_LoseFocus(arg0, arg1)
	LUI.UIButton.loseFocus(arg0, arg1)
	if arg0.disableGrowShrink ~= true then
		arg0:animateToState("small", arg0.cardCarousel.m_cardGrowShrinkTime)
		if arg0.centerImageContainer then
			arg0.centerImageContainer:animateToState("default", arg0.cardCarousel.m_cardGrowShrinkTime)
		end
		arg0:processEvent(CoD.CardCarousel.CardSmallEvent)
	end
	if arg0.border then
		arg0.border:setRGB(CoD.offGray.r, CoD.offGray.g, CoD.offGray.b)
	end
	if not arg0.cardCarousel.disablePip then
		arg0.miniCard.backGround:animateToState("default", arg0.cardCarousel.m_cardGrowShrinkTime)
	end
	local registerVal4 = {}
	registerVal4.name = "card_lose_focus"
	registerVal4.controller = arg1.controller
	registerVal4.card = arg0
	arg0:dispatchEventToParent(registerVal4)
end

local function __FUNC_2986_(arg0)
	local registerVal2 = {}
	registerVal2.leftAnchor = true
	registerVal2.rightAnchor = false
	registerVal2.left = 0.000000
	registerVal2.right = CoD.CardCarousel.MiniCarouselItemWidth
	registerVal2.topAnchor = true
	registerVal2.bottomAnchor = true
	registerVal2.top = 0.000000
	registerVal2.bottom = 0.000000
	local registerVal1 = LUI.UIElement.new(registerVal2)
	if not arg0.cardCarousel.disablePip then
		local registerVal3 = {}
		registerVal3.leftAnchor = true
		registerVal3.rightAnchor = true
		registerVal3.left = 0.000000
		registerVal3.right = 0.000000
		registerVal3.topAnchor = true
		registerVal3.bottomAnchor = true
		registerVal3.top = 0.000000
		registerVal3.bottom = 0.000000
		registerVal3.red = 1.000000
		registerVal3.green = 1.000000
		registerVal3.blue = 1.000000
		registerVal3.alpha = 0.000000
		local registerVal4 = RegisterMaterial("menu_vis_carousel_pip_fill")
		registerVal3.material = registerVal4
		registerVal2 = LUI.UIImage.new(registerVal3)
		registerVal1.backGround = registerVal2
		registerVal1:addElement(registerVal1.backGround)
		registerVal1.backGround:setPriority(10.000000)
		registerVal2 = LUI.UIImage.new()
		registerVal2:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2:setImage(RegisterMaterial("menu_vis_carousel_pip"))
		registerVal1:addElement(registerVal2)
		local registerVal6 = {}
		registerVal6.alpha = 1.000000
		registerVal1.backGround:registerAnimationState("fade_in", registerVal6)
	end
	arg0.miniCard = registerVal1
	arg0.cardCarousel.miniCarousel:addElement(registerVal1)
end

function CoD_CardCarousel_Card_EnableGrowShrink(arg0, arg1)
	arg0.disableGrowShrink = false
end

function CoD_CardCarousel_Card_DisableGrowShrink(arg0, arg1)
	arg0.disableGrowShrink = true
end

function CoD.CardCarousel.Card_SetupCenterImage(arg0, arg1, arg2, arg3, arg4, arg5)
	if arg4 then
	end
	local registerVal14 = {}
	registerVal14.leftAnchor = false
	registerVal14.rightAnchor = false
	registerVal14.left = (-arg2 / 2.000000)
	registerVal14.right = (arg2 / 2.000000)
	registerVal14.topAnchor = false
	registerVal14.bottomAnchor = false
	registerVal14.top = (-(CoD.textSize.Default / 2.000000) - (arg3 / 2.000000))
	registerVal14.bottom = (-(CoD.textSize.Default / 2.000000) + (arg3 / 2.000000))
	local registerVal13 = LUI.UIElement.new(registerVal14)
	local registerVal17 = {}
	registerVal17.leftAnchor = false
	registerVal17.rightAnchor = false
	registerVal17.left = (-(arg2 * arg4) / 2.000000)
	registerVal17.right = ((arg2 * arg4) / 2.000000)
	registerVal17.topAnchor = false
	registerVal17.bottomAnchor = false
	registerVal17.top = (-(CoD.textSize.Default / 2.000000) - ((arg3 * arg4) / 2.000000))
	registerVal17.bottom = (-(CoD.textSize.Default / 2.000000) + ((arg3 * arg4) / 2.000000))
	registerVal13:registerAnimationState("big", registerVal17)
	if arg5 then
		local registerVal15 = LUI.UIStreamedImage.new(nil, nil, true)
	else
		registerVal15 = LUI.UIImage.new()
	end
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal13.centerImage = registerVal15
	if arg1 then
		registerVal15:setImage(RegisterMaterial(arg1))
	end
	registerVal13:addElement(registerVal15)
	registerVal13.centerImage = registerVal15
	arg0.centerImageContainer = registerVal13
	arg0:addElement(registerVal13)
end

local function __FUNC_32C8_(arg0)
	local registerVal2 = {}
	registerVal2.leftAnchor = true
	registerVal2.rightAnchor = false
	registerVal2.left = 0.000000
	registerVal2.right = arg0.m_itemWidth
	registerVal2.topAnchor = true
	registerVal2.bottomAnchor = true
	registerVal2.top = 0.000000
	registerVal2.bottom = 0.000000
	local registerVal1 = LUI.UIButton.new(registerVal2)
	registerVal1.cardCarousel = arg0
	__FUNC_2986_(registerVal1)
	local registerVal6 = {}
	registerVal6.zoom = 0.000000
	registerVal1:registerAnimationState("default", registerVal6)
	registerVal6 = {}
	registerVal6.leftAnchor = true
	registerVal6.rightAnchor = false
	registerVal6.left = 0.000000
	registerVal6.right = arg0.m_itemWidth
	registerVal6.topAnchor = true
	registerVal6.bottomAnchor = true
	registerVal6.top = 0.000000
	registerVal6.bottom = 0.000000
	registerVal1:registerAnimationState("small", registerVal6)
	registerVal6 = {}
	registerVal6.leftAnchor = true
	registerVal6.rightAnchor = false
	registerVal6.left = 0.000000
	registerVal6.right = arg0.m_highlightedItemWidth
	registerVal6.topAnchor = true
	registerVal6.bottomAnchor = false
	registerVal6.top = -CoD.CardCarousel.TopOffset
	registerVal6.bottom = (-CoD.CardCarousel.TopOffset + arg0.m_highlightedItemHeight)
	registerVal1:registerAnimationState("big", registerVal6)
	registerVal1:registerEventHandler("gain_focus", CoD.CardCarousel.Card_GainFocus)
	registerVal1:registerEventHandler("lose_focus", CoD.CardCarousel.Card_LoseFocus)
	registerVal1:registerEventHandler("enableGrowShrink", CoD_CardCarousel_Card_EnableGrowShrink)
	registerVal1:registerEventHandler("disableGrowShrink", CoD_CardCarousel_Card_DisableGrowShrink)
	registerVal1.setupCenterImage = CoD.CardCarousel.Card_SetupCenterImage
	if CoD.useMouse then
		registerVal1:setHandleMouseMove(false)
		registerVal1:registerEventHandler("leftmousedown", CoD.NullFunction)
		registerVal1:registerEventHandler("leftmouseup", CoD.CardCarousel.CardLeftMouseUp)
	end
	local registerVal3 = CoD.BorderT6.new(2.000000, CoD.offGray.r, CoD.offGray.g, CoD.offGray.b, 1.000000)
	registerVal1.border = registerVal3
	registerVal1:addElement(registerVal1.border)
	if arg0.cardGainFocusSFX ~= nil then
		registerVal1:setGainFocusSFX(arg0.cardGainFocusSFX)
	end
	if arg0.cardActionSFX ~= nil then
		registerVal1:setActionSFX(arg0.cardActionSFX)
	end
	arg0.horizontalList:addElement(registerVal1)
	table.insert(arg0.horizontalList.cards, registerVal1)
	registerVal1.cardIndex = #arg0.horizontalList.cards
	if registerVal1.cardIndex == 2.000000 then
		arg0.miniCarouselContainer:close()
		arg0:addElement(arg0.miniCarouselContainer)
	end
	return registerVal1
end

CoD.CardCarousel.AddNewCard = __FUNC_32C8_
function CoD.CardCarousel.GetNumCards(arg0)
	return #arg0.horizontalList.cards
end

function CoD.CardCarousel.SetCardGainFocusSFX(arg0, arg1)
	arg0.cardGainFocusSFX = arg1
end

function CoD.CardCarousel.SetCardActionSFX(arg0, arg1)
	arg0.cardActionSFX = arg1
end

function CoD.CardCarousel.ClearAllItems(arg0)
	arg0.horizontalList:removeAllChildren()
	arg0.miniCarousel:removeAllChildren()
	for index1=1.000000, #arg0.horizontalList.cards, 1.000000 do
		arg0.horizontalList.cards[index1]:close()
		arg0.horizontalList.cards[index1] = nil
	end
	arg0.horizontalList.cards = {}
end

function CoD.CardCarousel.SetupHintTextContainer(arg0, arg1)
	if arg0.m_hintTextParams and arg0.m_hintTextParams.hintTextLeft then
	end
	if arg0.m_hintTextParams and arg0.m_hintTextParams.hintTextWidth then
	end
	if arg0.m_hintTextParams and arg0.m_hintTextParams.hintTextTop then
	end
	if arg0.m_hintTextParams and arg0.m_hintTextParams.hintTextHeight then
	end
	local registerVal6 = LUI.UIElement.new()
	arg0.hintTextContainer = registerVal6
	arg0.hintTextContainer:setLeftRight(true, false, arg0.m_hintTextParams.hintTextLeft, (arg0.m_hintTextParams.hintTextLeft + arg0.m_hintTextParams.hintTextWidth))
	arg0.hintTextContainer:setTopBottom(true, false, (arg1 + arg0.m_hintTextParams.hintTextTop), ((arg1 + arg0.m_hintTextParams.hintTextTop) + arg0.m_hintTextParams.hintTextHeight))
	local registerVal7 = CoD.HintText.new()
	arg0.hintTextContainer.hintText = registerVal7
	arg0.hintTextContainer.hintText:setLeftRight(true, true, 0.000000, 0.000000)
	arg0.hintTextContainer.hintText:setTopBottom(true, false, 0.000000, CoD.textSize.Default)
	arg0.hintTextContainer.hintText:setAlignment(LUI.Alignment.Left)
	arg0.hintTextContainer.hintText:setAlpha(0.600000)
	arg0.hintTextContainer:addElement(arg0.hintTextContainer.hintText)
	arg0:addElement(arg0.hintTextContainer)
end

function CoD.CardCarousel.SetupDefaultParams(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	arg0.id = "CardCarousel"
	arg0.m_spacing = CoD.CardCarousel.Spacing
	arg0.m_itemWidth = CoD.CardCarousel.ItemWidth
	arg0.m_itemHeight = CoD.CardCarousel.ItemHeight
	arg0.m_highlightedItemWidth = CoD.CardCarousel.HighlighedItemWidth
	arg0.m_highlightedItemHeight = CoD.CardCarousel.HighlighedItemHeight
	arg0.m_hintTextParams = arg5
	arg0.m_scrollTime = 0.000000
	arg0.m_cardGrowShrinkTime = CoD.CardCarousel.CardGrowShrinkTime
	arg0.m_fadeTime = CoD.CardCarousel.FadeTime
	arg0.m_alignToCenter = arg6
	if arg1 ~= nil then
		arg0.m_itemWidth = arg1
	end
	if arg2 ~= nil then
		arg0.m_itemHeight = arg2
	end
	if arg3 ~= nil then
		arg0.m_highlightedItemWidth = arg3
	end
	if arg4 ~= nil then
		arg0.m_highlightedItemHeight = arg4
	end
	arg0.m_mouseDragDistance = CoD.CardCarousel.MouseDragDistance
end

function CoD.CardCarousel.SetupMiniCarousel(arg0, arg1)
	if arg0.m_alignToCenter then
	end
	local registerVal5 = {}
	registerVal5.leftAnchor = false
	registerVal5.rightAnchor = false
	registerVal5.left = ((-arg0.m_highlightedItemWidth / 2.000000) - arg0.m_spacing)
	registerVal5.right = 0.000000
	registerVal5.topAnchor = true
	registerVal5.bottomAnchor = false
	registerVal5.top = arg1
	registerVal5.bottom = (arg1 + CoD.CardCarousel.MiniCarouselItemHeight)
	local registerVal4 = LUI.UIElement.new(registerVal5)
	arg0.miniCarouselContainer = registerVal4
	registerVal5 = {}
	registerVal5.leftAnchor = true
	registerVal5.rightAnchor = false
	registerVal5.left = 0.000000
	registerVal5.right = 0.000000
	registerVal5.topAnchor = true
	registerVal5.bottomAnchor = true
	registerVal5.top = 0.000000
	registerVal5.bottom = 0.000000
	registerVal5.spacing = 2.000000
	registerVal4 = LUI.UIHorizontalList.new(registerVal5)
	arg0.miniCarousel = registerVal4
	arg0.miniCarouselContainer:addElement(arg0.miniCarousel)
end

function CoD.CardCarousel.SetupTitleAndHorizontalList(arg0, arg1, arg2)
	local registerVal4 = {}
	registerVal4.leftAnchor = true
	registerVal4.rightAnchor = true
	registerVal4.left = 0.000000
	registerVal4.right = 0.000000
	registerVal4.topAnchor = true
	registerVal4.bottomAnchor = false
	registerVal4.top = 0.000000
	registerVal4.bottom = arg0.m_highlightedItemHeight
	local registerVal3 = LUI.UIElement.new(registerVal4)
	arg0.horizontalListContainer = registerVal3
	registerVal4 = {}
	registerVal4.leftAnchor = true
	registerVal4.rightAnchor = false
	registerVal4.left = 0.000000
	registerVal4.right = 0.000000
	registerVal4.topAnchor = true
	registerVal4.bottomAnchor = false
	registerVal4.top = arg1
	registerVal4.bottom = (arg1 + arg0.m_itemHeight)
	registerVal4.spacing = arg0.m_spacing
	registerVal3 = LUI.UIHorizontalList.new(registerVal4)
	arg0.horizontalList = registerVal3
	arg0.horizontalListContainer:addElement(arg0.horizontalList)
	arg0.horizontalList.cardCarousel = arg0
	arg0.horizontalList.cards = {}
	arg0.horizontalList:registerEventHandler("gain_focus", CoD.CardCarousel.HorizontalListGainFocus)
	arg0.horizontalList:registerEventHandler("lose_focus", CoD.CardCarousel.HorizontalListLoseFocus)
	registerVal4 = {}
	registerVal4.leftAnchor = true
	registerVal4.rightAnchor = false
	registerVal4.left = 0.000000
	registerVal4.right = 0.000000
	registerVal4.topAnchor = true
	registerVal4.bottomAnchor = false
	registerVal4.top = arg2
	registerVal4.bottom = (arg2 + CoD.CardCarousel.TitleSize)
	registerVal4.red = CoD.BOIIOrange.r
	registerVal4.green = CoD.BOIIOrange.g
	registerVal4.blue = CoD.BOIIOrange.b
	registerVal4.font = CoD.fonts.Big
	registerVal3 = LUI.UIText.new(registerVal4)
	arg0.title = registerVal3
	arg0:addElement(arg0.title)
	arg0:addElement(arg0.horizontalListContainer)
end

function CoD.CardCarousel.SetupDefaultFunctions(arg0)
	arg0.addNewCard = CoD.CardCarousel.AddNewCard
	arg0.getNumCards = CoD.CardCarousel.GetNumCards
	arg0.setCardGainFocusSFX = CoD.CardCarousel.SetCardGainFocusSFX
	arg0.setCardActionSFX = CoD.CardCarousel.SetCardActionSFX
	arg0.clearAllItems = CoD.CardCarousel.ClearAllItems
end

local function __FUNC_5135_(arg0, arg1)
	if not arg1 then
		arg0:registerEventHandler("hint_text_fade_out", __FUNC_133B_)
		arg0:registerEventHandler("hint_text_fade_in", __FUNC_1447_)
	end
	arg0:registerEventHandler("card_gain_focus", CoD.CardCarousel.CardGainFocus)
	arg0:registerEventHandler("card_lose_focus", CoD.CardCarousel.CardLoseFocus)
	arg0:registerEventHandler("transition_complete_fade_out", __FUNC_15C1_)
	if CoD.useMouse then
		arg0:setHandleMouse(true)
		arg0:registerEventHandler("leftmouseup", CoD.CardCarousel.LeftMouseUp)
		arg0:registerEventHandler("leftmousedown", CoD.CardCarousel.LeftMouseDown)
		arg0:registerEventHandler("mousedrag", CoD.CardCarousel.MouseDrag)
		arg0:registerEventHandler("card_mouse_click", CoD.CardCarousel.CardMouseClick)
	end
end

CoD.CardCarousel.RegisterEventHandlers = __FUNC_5135_
function CoD.CardCarousel.new(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal8 = LUI.UIElement.new(arg0)
	CoD.CardCarousel.SetupDefaultParams(registerVal8, arg1, arg2, arg3, arg4, arg5, arg6)
	CoD.CardCarousel.SetupMiniCarousel(registerVal8, (CoD.CardCarousel.SpaceBetweenTitleAndCarousel + registerVal8.m_highlightedItemHeight))
	CoD.CardCarousel.SetupTitleAndHorizontalList(registerVal8, CoD.CardCarousel.TopOffset, (((CoD.CardCarousel.SpaceBetweenTitleAndCarousel + registerVal8.m_highlightedItemHeight) + CoD.CardCarousel.MiniCarouselItemHeight) + CoD.CardCarousel.SpaceBetweenTitleAndCarousel))
	if not arg7 then
		CoD.CardCarousel.SetupHintTextContainer(registerVal8, (((CoD.CardCarousel.SpaceBetweenTitleAndCarousel + registerVal8.m_highlightedItemHeight) + CoD.CardCarousel.MiniCarouselItemHeight) + CoD.CardCarousel.SpaceBetweenTitleAndCarousel))
	end
	CoD.CardCarousel.SetupDefaultFunctions(registerVal8)
	CoD.CardCarousel.RegisterEventHandlers(registerVal8, arg7)
	local registerVal16 = {}
	registerVal16.alphaMultiplier = 1.000000
	registerVal8:registerAnimationState("fade_in", registerVal16)
	return registerVal8
end

function CoD.CardCarousel.CardGainFocus(arg0, arg1)
	local registerVal5 = {}
	registerVal5.name = "hint_text_fade_in"
	registerVal5.hintText = arg1.card.hintText
	arg0:processEvent(registerVal5)
	arg0:dispatchEventToParent(arg1)
end

function CoD.CardCarousel.CardLoseFocus(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "hint_text_fade_out"
	arg0:processEvent(registerVal4)
	arg0:dispatchEventToParent(arg1)
end

function CoD.CardCarousel.GetCardByIndex(arg0, arg1)
	if arg0 then
		return arg0.horizontalList.cards[arg1]
	end
	return nil
end

function CoD.CardCarousel.GetSelectedCardIndex(arg0)
	return arg0.horizontalList.m_currentCardIndex
end

function CoD.CardCarousel.LeftMouseUp(arg0, arg1)
	arg0.m_curX = nil
	arg0.m_curY = nil
	if arg0.m_mouseDrag then
		arg0.m_mouseDrag = nil
		return true
	end
end

function CoD.CardCarousel.LeftMouseDown(arg0, arg1)
	arg0.m_curX = arg1.x
	arg0.m_curY = arg1.y
end

function CoD.CardCarousel.MouseDrag(arg0, arg1)
	if arg0.m_curX == nil or not arg0.m_isActive then
		return 
	end
	local registerVal2 = math.abs((arg0.m_curX - arg1.x))
	if arg0.m_mouseDragDistance < registerVal2 then
		if arg0.m_curX < arg1.x then
		else
		end
		arg0.m_curX = arg1.x
		arg0.m_mouseDrag = true
		if arg0.horizontalList.m_currentCardIndex ~= nil then
			if arg0.horizontalList.m_currentCardIndex > 1.000000 or 1.000000 ~= -1.000000 then
				local registerVal5 = arg0:getNumCards()
				if registerVal5 <= arg0.horizontalList.m_currentCardIndex and 1.000000 == 1.000000 then
					return 
				end
			end
		end
		if arg0.horizontalList.cards[arg0.horizontalList.m_currentCardIndex] ~= nil then
			local registerVal9 = {}
			registerVal9.name = "lose_focus"
			registerVal9.controller = arg1.controller
			arg0.horizontalList.cards[arg0.horizontalList.m_currentCardIndex]:processEvent(registerVal9)
		end
		if arg0.horizontalList.cards[(arg0.horizontalList.m_currentCardIndex + 1.000000)] ~= nil then
			registerVal9 = {}
			registerVal9.name = "gain_focus"
			registerVal9.controller = arg1.controller
			arg0.horizontalList.cards[(arg0.horizontalList.m_currentCardIndex + 1.000000)]:processEvent(registerVal9)
		end
	end
end

function CoD.CardCarousel.CardLeftMouseUp(arg0, arg1)
	if arg1.inside then
		local registerVal4 = {}
		registerVal4.name = "card_mouse_click"
		registerVal4.controller = arg1.controller
		registerVal4.cardIndex = arg0.cardIndex
		arg0:dispatchEventToParent(registerVal4)
	end
end

function CoD.CardCarousel.CardMouseClick(arg0, arg1)
	if not arg0.m_isActive then
		return 
	end
	if arg1.cardIndex ~= arg0.horizontalList.m_currentCardIndex then
		if arg0.horizontalList.cards[arg0.horizontalList.m_currentCardIndex] ~= nil then
			local registerVal9 = {}
			registerVal9.name = "lose_focus"
			registerVal9.controller = arg1.controller
			arg0.horizontalList.cards[arg0.horizontalList.m_currentCardIndex]:processEvent(registerVal9)
		end
		registerVal9 = {}
		registerVal9.name = "gain_focus"
		registerVal9.controller = arg1.controller
		arg0.horizontalList.cards[arg1.cardIndex]:processEvent(registerVal9)
		local registerVal7 = arg0.horizontalList.cards[arg0.horizontalList.m_currentCardIndex]:isInFocus()
		if arg0.horizontalList.cards[arg1.cardIndex] ~= nil and arg0.horizontalList.cards[arg0.horizontalList.m_currentCardIndex] ~= nil and registerVal7 then
			if arg0.horizontalList.cards[arg0.horizontalList.m_currentCardIndex].m_eventHandlers.button_action then
				registerVal9 = {}
				registerVal9.name = "button_action"
				registerVal9.controller = arg1.controller
				arg0.horizontalList.cards[arg0.horizontalList.m_currentCardIndex]:processEvent(registerVal9)
			else
				if arg0.horizontalList.cards[arg0.horizontalList.m_currentCardIndex].actionEventName then
					registerVal9 = {}
					registerVal9.name = arg0.horizontalList.cards[arg0.horizontalList.m_currentCardIndex].actionEventName
					registerVal9.controller = arg1.controller
					registerVal9.button = arg0.horizontalList.cards[arg0.horizontalList.m_currentCardIndex]
					arg0.horizontalList.cards[arg0.horizontalList.m_currentCardIndex]:dispatchEventToParent(registerVal9)
				end
			end
		end
	end
end

