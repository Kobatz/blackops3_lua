-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.CardCarousel")
CoD.CardCarouselList = {}
CoD.CardCarouselList.TitleListTextSize = CoD.textSize.Default
CoD.CardCarouselList.TitleListSpacing = 5.000000
CoD.CardCarouselList.LeftMargin = 50.000000
CoD.CardCarouselList.MouseDragDistance = 100.000000
if CoD.isPC then
	CoD.CardCarouselList.ScrollTime = 50.000000
else
	CoD.CardCarouselList.ScrollTime = 200.000000
end
local function __FUNC_70A_(arg0, arg1)
	arg0:close()
end

local function __FUNC_74B_(arg0, arg1)
	arg0:close()
end

local function __FUNC_78B_(arg0, arg1)
	arg0:setPriority(0.000000)
end

local function __FUNC_7DA_(arg0, arg1)
	arg0.title:setRGB(1.000000, 1.000000, 1.000000)
end

local function __FUNC_848_(arg0, arg1)
	arg0.title:setRGB(CoD.DefaultTextColor.r, CoD.DefaultTextColor.g, CoD.DefaultTextColor.b)
end

local function __FUNC_943_(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "scroll_to_cardcarousel_title"
	registerVal4.controller = arg1.controller
	registerVal4.titleText = arg0.titleText
	arg0:dispatchEventToParent(registerVal4)
end

local function __FUNC_A16_(arg0, arg1)
	if arg1 then
		local registerVal2 = LUI.UIImage.new()
		registerVal2:setLeftRight(true, false, arg0.width, (arg0.width + CoD.CACUtility.ButtonGridNewImageWidth))
		registerVal2:setTopBottom(false, true, (-12.000000 - (CoD.CACUtility.ButtonGridNewImageHeight / 2.000000)), (-12.000000 + (CoD.CACUtility.ButtonGridNewImageHeight / 2.000000)))
		registerVal2:setImage(RegisterMaterial(CoD.CACUtility.NewImageMaterial))
		arg0:addElement(registerVal2)
		arg0.newIcon = registerVal2
		if not arg0.newIcon and arg0.newIcon then
			arg0.newIcon:close()
			arg0.newIcon = nil
		end
	end
end

local function __FUNC_CD7_(arg0)
	if (arg0.m_currentCardCarouselIndex - 1.000000) < 1.000000 then
	end
	return #(arg0.m_currentCardCarouselIndex - 1.000000)
end

local function __FUNC_D6C_(arg0)
	if #arg0.cardCarousels < (arg0.m_currentCardCarouselIndex + 1.000000) then
	end
	return 1.000000
end

local function __FUNC_E08_(arg0, arg1)
	local registerVal2 = __FUNC_CD7_(arg0.cardCarouselList)
	local registerVal4 = CoD_CardCarouselList_TitleListContainer_GetNewTitleContainer(arg0, arg0.numTitles, arg0.cardCarouselList.cardCarousels[registerVal2], 0.000000)
	arg0:addElement(registerVal4)
	registerVal4:animateToState("fade_in", CoD.CardCarouselList.ScrollTime)
	arg0.cardCarouselList.scrolling = false
	local registerVal7 = {}
	registerVal7.name = "auto_scroll"
	arg0:dispatchEventToParent(registerVal7)
end

local function __FUNC_103E_(arg0, arg1)
	local registerVal2 = __FUNC_D6C_(arg0.cardCarouselList)
	local registerVal4 = CoD_CardCarouselList_TitleListContainer_GetNewTitleContainer(arg0, 1.000000, arg0.cardCarouselList.cardCarousels[registerVal2], 0.000000)
	registerVal4:setPriority(-100.000000)
	arg0:addElement(registerVal4)
	registerVal4:animateToState("fade_in", CoD.CardCarouselList.ScrollTime)
	arg0.cardCarouselList.scrolling = false
end

function CoD.CardCarouselList.SetInitialCarousel(arg0, arg1, arg2)
	if arg1 ~= nil and arg1 ~= arg0.m_currentCardCarouselIndex then
		if #arg0.cardCarousels < arg1 then
			return 
		end
		arg0.m_currentCardCarouselIndex = arg1
		arg0.titleListContainer:removeAllChildren()
		for index6=(arg1 + 1.000000), #arg0.cardCarousels, 1.000000 do
			local registerVal10 = CoD_CardCarouselList_TitleListContainer_GetNewTitleContainer(arg0.titleListContainer, 1.000000, arg0.cardCarousels[index6], 1.000000)
			arg0.titleListContainer:addElement(registerVal10)
		end
		for index6=1.000000, (arg1 - 1.000000), 1.000000 do
			registerVal10 = CoD_CardCarouselList_TitleListContainer_GetNewTitleContainer(arg0.titleListContainer, (1.000000 + 1.000000), arg0.cardCarousels[index6], 1.000000)
			arg0.titleListContainer:addElement(registerVal10)
		end
	end
	if arg2 ~= nil then
		local registerVal3 = table.getn(arg0.cardCarousels)
		if registerVal3 < arg0.m_currentCardCarouselIndex then
			arg0.m_currentCardCarouselIndex = 1.000000
		end
		arg0.cardCarousels[arg0.m_currentCardCarouselIndex].horizontalList.m_currentCardIndex = arg2
	end
end

function CoD.CardCarouselList.SetLRSFX(arg0, arg1)
	arg0.lrSFX = arg1
end

function CoD.CardCarouselList.SetUpSFX(arg0, arg1)
	arg0.upSFX = arg1
end

function CoD.CardCarouselList.SetDownSFX(arg0, arg1)
	arg0.downSFX = arg1
end

function CoD.CardCarouselList.SetEquipSFX(arg0, arg1)
	arg0.equipSFX = arg1
end

local function __FUNC_15F6_(arg0)
	local registerVal2 = arg0.titleListContainer:getLastChild()
	if registerVal2 then
		if arg0.downSFX ~= nil then
			Engine.PlaySound(arg0.downSFX)
		end
		local registerVal8 = {}
		registerVal8.leftAnchor = true
		registerVal8.rightAnchor = false
		registerVal8.left = 0.000000
		registerVal8.right = registerVal2.width
		registerVal8.topAnchor = true
		registerVal8.bottomAnchor = false
		registerVal8.top = ((arg0.titleListContainer.elementSize + arg0.titleListContainer.spacing) * (arg0.titleListContainer.numTitles + 1.000000))
		registerVal8.bottom = (((arg0.titleListContainer.elementSize + arg0.titleListContainer.spacing) * (arg0.titleListContainer.numTitles + 1.000000)) + arg0.titleListContainer.elementSize)
		registerVal8.alphaMultiplier = 0.000000
		registerVal2:registerAnimationState("move_down_fade_out", registerVal8)
		registerVal2:animateToState("move_down_fade_out", CoD.CardCarouselList.ScrollTime)
		local registerVal5 = arg0.titleListContainer:getFirstChild()
		local registerVal6 = arg0.titleListContainer:getNumChildren()
		local registerVal9 = {}
		registerVal9.leftAnchor = true
		registerVal9.rightAnchor = false
		registerVal9.left = 0.000000
		registerVal9.right = registerVal5.width
		registerVal9.topAnchor = true
		registerVal9.bottomAnchor = false
		registerVal9.top = ((arg0.titleListContainer.elementSize + arg0.titleListContainer.spacing) * (1.000000 + 1.000000))
		registerVal9.bottom = (((arg0.titleListContainer.elementSize + arg0.titleListContainer.spacing) * (1.000000 + 1.000000)) + arg0.titleListContainer.elementSize)
		registerVal5:registerAnimationState("move_down", registerVal9)
		registerVal5:animateToState("move_down", CoD.CardCarouselList.ScrollTime)
		registerVal6 = registerVal5:getNextSibling()
		arg0.titleListContainer:addElement(LUI.UITimer.new(CoD.CardCarouselList.ScrollTime, "add_container_on_top", true))
	end
end

local function __FUNC_1ADC_(arg0)
	local registerVal2 = arg0.titleListContainer:getFirstChild()
	if registerVal2 then
		if arg0.upSFX ~= nil then
			Engine.PlaySound(arg0.upSFX)
		end
		local registerVal6 = {}
		registerVal6.leftAnchor = true
		registerVal6.rightAnchor = false
		registerVal6.left = 0.000000
		registerVal6.right = registerVal2.width
		registerVal6.topAnchor = true
		registerVal6.bottomAnchor = false
		registerVal6.top = 0.000000
		registerVal6.bottom = arg0.titleListContainer.elementSize
		registerVal6.alphaMultiplier = 0.000000
		registerVal2:registerAnimationState("move_up_fade_out", registerVal6)
		registerVal2:animateToState("move_up_fade_out", CoD.CardCarouselList.ScrollTime)
		local registerVal3 = registerVal2:getNextSibling()
		local registerVal9 = {}
		registerVal9.leftAnchor = true
		registerVal9.rightAnchor = false
		registerVal9.left = 0.000000
		registerVal9.right = registerVal3.width
		registerVal9.topAnchor = true
		registerVal9.bottomAnchor = false
		registerVal9.top = ((arg0.titleListContainer.elementSize + arg0.titleListContainer.spacing) * 1.000000)
		registerVal9.bottom = (((arg0.titleListContainer.elementSize + arg0.titleListContainer.spacing) * 1.000000) + arg0.titleListContainer.elementSize)
		registerVal3:registerAnimationState("move_up", registerVal9)
		registerVal3:animateToState("move_up", CoD.CardCarouselList.ScrollTime)
		registerVal6 = registerVal3:getNextSibling()
		arg0.titleListContainer:addElement(LUI.UITimer.new(CoD.CardCarouselList.ScrollTime, "add_container_at_bottom", true))
	end
end

local function __FUNC_1F85_(arg0, arg1, arg2, arg3)
	if not arg2 then
		return 
	end
	if arg2.titleText == nil then
		return 
	end
	GetTextDimensions(arg2.titleText, CoD.fonts.Default, arg0.elementSize)
	{} = {}
	local registerVal9 = {}
	registerVal9.leftAnchor = true
	registerVal9.rightAnchor = false
	registerVal9.left = 0.000000
	registerVal9.right = (({}[3.000000] - {}[1.000000]) + 25.000000)
	registerVal9.topAnchor = true
	registerVal9.bottomAnchor = false
	registerVal9.top = ((arg0.elementSize + arg0.spacing) * arg1)
	registerVal9.bottom = (((arg0.elementSize + arg0.spacing) * arg1) + arg0.elementSize)
	registerVal9.alpha = arg3
	local registerVal8 = LUI.UIElement.new(registerVal9)
	registerVal8.id = "CardCarouselList.TitleContainer"
	local registerVal10 = {}
	registerVal10.leftAnchor = true
	registerVal10.rightAnchor = true
	registerVal10.left = 0.000000
	registerVal10.right = 0.000000
	registerVal10.topAnchor = true
	registerVal10.bottomAnchor = true
	registerVal10.top = 0.000000
	registerVal10.bottom = 0.000000
	registerVal10.alignment = LUI.Alignment.Left
	registerVal9 = LUI.UIText.new(registerVal10)
	registerVal8.title = registerVal9
	registerVal8.titleText = arg2.titleText
	registerVal8.width = (({}[3.000000] - {}[1.000000]) + 25.000000)
	registerVal8:addElement(registerVal8.title)
	registerVal8.title:setText(arg2.titleText)
	local registerVal13 = {}
	registerVal13.alphaMultiplier = 1.000000
	registerVal8:registerAnimationState("fade_in", registerVal13)
	if arg2.shouldShowNewFunction then
		__FUNC_A16_(registerVal8, arg2:shouldShowNewFunction())
	end
	registerVal8:registerEventHandler("transition_complete_move_up_fade_out", __FUNC_70A_)
	registerVal8:registerEventHandler("transition_complete_fade_in", __FUNC_78B_)
	registerVal8:registerEventHandler("transition_complete_move_down_fade_out", __FUNC_74B_)
	arg0:registerEventHandler("add_container_at_bottom", __FUNC_E08_)
	arg0:registerEventHandler("add_container_on_top", __FUNC_103E_)
	if CoD.useMouse then
		registerVal8:setHandleMouse(true)
		registerVal8:registerEventHandler("mouseenter", __FUNC_7DA_)
		registerVal8:registerEventHandler("mouseleave", __FUNC_848_)
		registerVal8:registerEventHandler("leftmousedown", CoD.NullFunction)
		registerVal8:registerEventHandler("leftmouseup", __FUNC_943_)
	end
	registerVal8.titleListContainer = arg0
	return registerVal8
end

CoD_CardCarouselList_TitleListContainer_GetNewTitleContainer = __FUNC_1F85_
function CoD.CardCarouselList.SetupCardCarouselTitleList(arg0)
	local registerVal2 = {}
	registerVal2.leftAnchor = true
	registerVal2.rightAnchor = true
	registerVal2.left = 0.000000
	registerVal2.right = -CoD.CoD9Button.Height
	registerVal2.topAnchor = true
	registerVal2.bottomAnchor = false
	registerVal2.top = (arg0.cardCarouselSize - 15.000000)
	registerVal2.bottom = 0.000000
	local registerVal1 = LUI.UIElement.new(registerVal2)
	registerVal1.numTitles = 0.000000
	registerVal1.cardCarouselList = arg0
	registerVal1.elementSize = CoD.CardCarouselList.TitleListTextSize
	registerVal1.spacing = CoD.CardCarouselList.TitleListSpacing
	arg0.titleListContainer = registerVal1
	arg0:addElement(registerVal1)
end

function CoD.CardCarouselList.UpdateCurrentCarousel(arg0)
	if arg0.m_currentCardCarouselIndex ~= nil and arg0.m_nextCardCarouselIndex ~= nil then
		arg0:removeElement(arg0.cardCarousels[arg0.m_currentCardCarouselIndex])
		arg0.m_currentCardCarouselIndex = arg0.m_nextCardCarouselIndex
		arg0:addElement(arg0.cardCarousels[arg0.m_currentCardCarouselIndex])
		local registerVal5 = {}
		registerVal5.name = "card_carousel_list_changed"
		registerVal5.previous = arg0.cardCarousels[arg0.m_currentCardCarouselIndex]
		registerVal5.next = arg0.cardCarousels[arg0.m_currentCardCarouselIndex]
		arg0:dispatchEventToParent(registerVal5)
		registerVal5 = {}
		registerVal5.name = "gain_focus"
		registerVal5.controller = arg0.m_ownerController
		arg0.cardCarousels[arg0.m_currentCardCarouselIndex].horizontalList:processEvent(registerVal5)
		arg0.cardCarousels[arg0.m_currentCardCarouselIndex].m_leftMouseDown = nil
	end
end

local function __FUNC_2C73_(arg0, arg1, arg2)
	if arg1 == "up" then
	else
		if arg1 == "down" then
		end
	end
	if #arg0.cardCarousels < (arg0.m_currentCardCarouselIndex + 1.000000) then
	end
	if 1.000000 < 1.000000 then
	end
	if #1.000000 ~= arg0.m_currentCardCarouselIndex then
		arg0.m_lastScrollDirection = 1.000000
		arg0.m_nextCardCarouselIndex = #1.000000
		local registerVal8 = {}
		registerVal8.name = "lose_focus"
		registerVal8.controller = arg2
		arg0.cardCarousels[arg0.m_currentCardCarouselIndex].horizontalList:processEvent(registerVal8)
		local registerVal6 = arg0.titleListContainer:getFirstChild()
		if 1.000000 == 1.000000 then
			__FUNC_1ADC_(arg0)
		else
			__FUNC_15F6_(arg0)
		end
	end
end

CoD.CardCarouselList.ScrollList = __FUNC_2C73_
function CoD.CardCarouselList.Gamepad_Button(arg0, arg1)
	if arg0.m_inputDisabled then
		return 
	end
	if arg1.button ~= "up" and arg1.button ~= "down" and arg1.button ~= "left" and arg1.button ~= "right" then
		arg0:dispatchEventToChildren(arg1)
		return nil
	end
	if arg1.down == true then
		if arg1.button == "left" or arg1.button == "right" then
			local registerVal2 = CoD_CardCarousel_PerformEdgeBounce(arg0.cardCarousels[arg0.m_currentCardCarouselIndex], arg1.button, arg1.buttonRepeat)
			if registerVal2 == true then
				return true
			else
				arg0:dispatchEventToChildren(arg1)
				return nil
			end
		end
	end
	if arg1.down == true then
		if arg1.button == "up" or arg1.button == "down" then
			if arg0.scrolling == nil or arg0.scrolling == false then
				arg0.scrolling = true
				CoD.CardCarouselList.ScrollList(arg0, arg1.button, arg1.controller)
				return true
			end
		end
	end
	arg0:dispatchEventToChildren(arg1)
end

function CoD.CardCarouselList.FocusCurrentCardCarousel(arg0, arg1)
	if arg0.cardCarousels[arg0.m_currentCardCarouselIndex] then
		local registerVal4 = {}
		registerVal4.name = "gain_focus"
		registerVal4.controller = arg1
		arg0.cardCarousels[arg0.m_currentCardCarouselIndex].horizontalList:processEvent(registerVal4)
	end
end

function CoD.CardCarouselList.new(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal7 = LUI.UIElement.new(arg0)
	registerVal7.cardCarousels = {}
	registerVal7.id = "CardCarouselList"
	registerVal7.m_ownerController = arg1
	registerVal7.m_currentCardCarouselIndex = 1.000000
	registerVal7.m_lastScrollDirection = 0.000000
	registerVal7.m_itemWidth = arg2
	registerVal7.m_itemHeight = arg3
	registerVal7.m_highlightedItemWidth = arg4
	registerVal7.m_highlightedItemHeight = arg5
	registerVal7.m_hintTextParams = arg6
	registerVal7.m_mouseDragDistance = CoD.CardCarouselList.MouseDragDistance
	registerVal7.cardCarouselSize = ((CoD.CardCarousel.TitleSize + CoD.CardCarousel.SpaceBetweenTitleAndCarousel) + CoD.CardCarousel.SpaceBetweenCarouselAndTitleList)
	registerVal7.addCardCarousel = CoD.CardCarouselList.AddCardCarousel
	registerVal7.focusCurrentCardCarousel = CoD.CardCarouselList.FocusCurrentCardCarousel
	registerVal7.setInitialCarousel = CoD.CardCarouselList.SetInitialCarousel
	registerVal7.setLRSFX = CoD.CardCarouselList.SetLRSFX
	registerVal7.setUpSFX = CoD.CardCarouselList.SetUpSFX
	registerVal7.setDownSFX = CoD.CardCarouselList.SetDownSFX
	registerVal7.setEquipSFX = CoD.CardCarouselList.SetEquipSFX
	registerVal7:setLRSFX(CoD.CACUtility.carouselLRSFX)
	registerVal7:setUpSFX(CoD.CACUtility.carouselUpSFX)
	registerVal7:setDownSFX(CoD.CACUtility.carouselDownSFX)
	registerVal7:setEquipSFX(CoD.CACUtility.carouselEquipSFX)
	if registerVal7.m_highlightedItemHeight ~= nil then
		registerVal7.cardCarouselSize = (registerVal7.cardCarouselSize + registerVal7.m_highlightedItemHeight)
	else
		registerVal7.cardCarouselSize = (registerVal7.cardCarouselSize + CoD.CardCarousel.HighlighedItemHeight)
	end
	CoD.CardCarouselList.SetupCardCarouselTitleList(registerVal7)
	local registerVal10 = {}
	registerVal10.name = "gamepad_button"
	registerVal10.button = "left"
	registerVal10.down = true
	local registerVal8 = LUI.UIButtonRepeater.new("left", registerVal10)
	registerVal7.leftButtonRepeater = registerVal8
	registerVal10 = {}
	registerVal10.name = "gamepad_button"
	registerVal10.button = "right"
	registerVal10.down = true
	registerVal8 = LUI.UIButtonRepeater.new("right", registerVal10)
	registerVal7.rightButtonRepeater = registerVal8
	registerVal7.leftButtonRepeater.accelInterval = 300.000000
	registerVal7.rightButtonRepeater.accelInterval = 300.000000
	registerVal7:addElement(registerVal7.leftButtonRepeater)
	registerVal7:addElement(registerVal7.rightButtonRepeater)
	registerVal7:registerEventHandler("gamepad_button", CoD.CardCarouselList.Gamepad_Button)
	if CoD.useMouse then
		registerVal7:setHandleMouse(true)
		registerVal7:registerEventHandler("leftmouseup", CoD.CardCarouselList.LeftMouseUp)
		registerVal7:registerEventHandler("leftmousedown", CoD.CardCarouselList.LeftMouseDown)
		registerVal7:registerEventHandler("mousedrag", CoD.CardCarouselList.MouseDrag)
		registerVal7:registerEventHandler("scroll_to_cardcarousel_title", CoD.CardCarouselList.ScrollToCardCarouselTitle)
		registerVal7:registerEventHandler("auto_scroll", CoD.CardCarouselList.AutoScroll)
	end
	return registerVal7
end

function CoD.CardCarouselList.AddCardCarousel(arg0, arg1, arg2, arg3)
	local registerVal4 = {}
	registerVal4.leftAnchor = true
	registerVal4.rightAnchor = true
	registerVal4.left = 0.000000
	registerVal4.right = 0.000000
	registerVal4.topAnchor = true
	registerVal4.bottomAnchor = false
	registerVal4.top = 0.000000
	registerVal4.bottom = arg0.cardCarouselSize
	registerVal4.alpha = 0.000000
	local registerVal5 = CoD.CardCarousel.new(registerVal4, arg0.m_itemWidth, arg0.m_itemHeight, arg0.m_highlightedItemWidth, arg0.m_highlightedItemHeight, arg0.m_hintTextParams)
	registerVal5.id = (registerVal5.id .. "." .. arg1)
	registerVal5.cardCarouselList = arg0
	registerVal5.disablePip = arg2
	registerVal5.title:setText(arg1)
	registerVal5.titleText = arg1
	registerVal5.shouldShowNewFunction = arg3
	table.insert(arg0.cardCarousels, registerVal5)
	arg0:addElement(registerVal5)
	if arg0.lrSFX ~= nil then
		registerVal5:setCardGainFocusSFX(arg0.lrSFX)
	end
	if arg0.equipSFX ~= nil then
		registerVal5:setCardActionSFX(arg0.equipSFX)
	end
	if 1.000000 < #arg0.cardCarousels then
		arg0.titleListContainer.numTitles = (arg0.titleListContainer.numTitles + 1.000000)
		local registerVal6 = CoD_CardCarouselList_TitleListContainer_GetNewTitleContainer(arg0.titleListContainer, (#arg0.cardCarousels - 1.000000), registerVal5, 1.000000)
		arg0.titleListContainer:addElement(registerVal6)
	end
	return registerVal5
end

function CoD.CardCarouselList.GetSelectedCarousel(arg0)
	return arg0.m_currentCardCarouselIndex
end

function CoD.CardCarouselList.AutoScroll(arg0, arg1)
	if arg0.m_autoScroll then
		if arg0.m_autoScroll ~= arg0.m_currentCardCarouselIndex and not arg0.scrolling then
			CoD.CardCarouselList.ScrollList(arg0, "down")
		else
			arg0.m_autoScroll = nil
			arg0.m_inputDisabled = nil
		end
	end
end

function CoD.CardCarouselList.ScrollToCardCarouselTitle(arg0, arg1)
	if arg0.m_autoScroll then
		return 
	end
	arg0.m_autoScroll = 1.000000
	arg0.m_inputDisabled = true
	for index2=1.000000, #arg0.cardCarousels, 1.000000 do
		if arg1.titleText == arg0.cardCarousels[index2].titleText then
			arg0.m_autoScroll = index2
		end
	end
	CoD.CardCarouselList.AutoScroll(arg0)
end

function CoD.CardCarouselList.LeftMouseUp(arg0, arg1)
	if arg0.m_mouseDrag then
		arg1.mouseDrag = true
	end
	arg0.m_mouseDrag = nil
	arg0.m_curX = nil
	arg0.m_curY = nil
end

function CoD.CardCarouselList.LeftMouseDown(arg0, arg1)
	arg0.m_curX = arg1.x
	arg0.m_curY = arg1.y
end

function CoD.CardCarouselList.MouseDrag(arg0, arg1)
	if arg0.m_curY == nil then
		return 
	end
	local registerVal2 = math.abs((arg0.m_curY - arg1.y))
	if arg0.m_mouseDragDistance < registerVal2 then
		if arg0.m_curY < arg1.y then
		else
		end
		arg0.m_curY = arg1.y
		arg0.m_mouseDrag = true
		if arg0.scrolling == nil or arg0.scrolling == false then
			arg0.scrolling = true
			CoD.CardCarouselList.ScrollList(arg0, "down")
		end
	end
end

