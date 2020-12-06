-- Decompiled with CoDLUIDecompiler by JariK

CoD.MFTabManager = {}
CoD.MFTabManager.LeftShoulderActionSFX = "cac_safearea"
CoD.MFTabManager.RightShoulderActionSFX = "cac_safearea"
CoD.MFTabManager.TabTitleFontName = "Default"
CoD.MFTabManager.TabHeight = CoD.textSize[CoD.MFTabManager.TabTitleFontName]
local function __FUNC_582_(arg0, arg1, arg2)
	local registerVal8 = Engine.Localize(arg1)
	GetTextDimensions(registerVal8, CoD.fonts[CoD.MFTabManager.TabTitleFontName], CoD.MFTabManager.TabHeight)
	{} = {}
	local registerVal9 = {}
	registerVal9.leftAnchor = true
	registerVal9.rightAnchor = false
	registerVal9.left = 0.000000
	registerVal9.right = ({}[3.000000] + 30.000000)
	registerVal9.topAnchor = true
	registerVal9.bottomAnchor = false
	registerVal9.top = 0.000000
	registerVal9.bottom = CoD.MFTabManager.TabHeight
	registerVal8 = LUI.UIElement.new(registerVal9)
	arg0.tabHeaderPane:addElement(registerVal8)
	local registerVal11 = LUI.UIImage.new()
	registerVal8.tabBg = registerVal11
	registerVal8.tabBg:setLeftRight(false, false, (-((5.000000 * 2.000000) + {}[3.000000]) / 2.000000), (((5.000000 * 2.000000) + {}[3.000000]) / 2.000000))
	registerVal8.tabBg:setTopBottom(true, true, 0.000000, 2.000000)
	registerVal8.tabBg:setImage(RegisterMaterial("white"))
	registerVal8.tabBg:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8.tabBg:setAlpha(0.000000)
	if CoD.isMultiplayer and not arg2 then
		registerVal8:addElement(registerVal8.tabBg)
	end
	local registerVal12 = {}
	registerVal12.leftAnchor = false
	registerVal12.rightAnchor = false
	registerVal12.left = -1.000000
	registerVal12.right = 1.000000
	registerVal12.topAnchor = false
	registerVal12.bottomAnchor = false
	registerVal12.top = (-CoD.MFTabManager.TabHeight / 2.000000)
	registerVal12.bottom = (CoD.MFTabManager.TabHeight / 2.000000)
	registerVal12.font = CoD.fonts[CoD.MFTabManager.TabTitleFontName]
	registerVal12.alpha = 0.250000
	registerVal12.red = 1.000000
	registerVal12.green = 1.000000
	registerVal12.blue = 1.000000
	registerVal11 = LUI.UIText.new(registerVal12)
	if arg0.selectionColor ~= nil then
		local registerVal15 = {}
		registerVal15.alpha = 1.000000
		registerVal15.red = arg0.selectionColor.r
		registerVal15.green = arg0.selectionColor.g
		registerVal15.blue = arg0.selectionColor.b
		registerVal11:registerAnimationState("selected", registerVal15)
	else
		registerVal15 = {}
		registerVal15.alpha = 1.000000
		registerVal11:registerAnimationState("selected", registerVal15)
	end
	registerVal11:setText(Engine.Localize(arg1))
	registerVal11.titleWidth = ({}[3.000000] + 30.000000)
	registerVal8:addElement(registerVal11)
	registerVal8.titleBox = registerVal11
	return registerVal8
end

function CoD.MFTabManager.buttonLeftShoulder(arg0, arg1)
	if arg0.m_enabled == false then
		return 
	end
	if arg0 ~= nil then
		if arg0.tabSelected == 1.000000 then
			arg0.tabSelected = #arg0.tabsList
		else
			arg0.tabSelected = (arg0.tabSelected - 1.000000)
		end
		Engine.PlaySound(CoD.MFTabManager.LeftShoulderActionSFX)
		CoD.MFTabManager.LoadTab(arg0, arg1.controller, arg0.tabSelected)
	end
end

function CoD.MFTabManager.buttonRightShoulder(arg0, arg1)
	if arg0.m_enabled == false then
		return 
	end
	if arg0 ~= nil then
		arg0.tabSelected = ((arg0.tabSelected % #arg0.tabsList) + 1.000000)
		Engine.PlaySound(CoD.MFTabManager.RightShoulderActionSFX)
		CoD.MFTabManager.LoadTab(arg0, arg1.controller, arg0.tabSelected)
	end
end

function CoD.MFTabManager.TabClicked(arg0, arg1)
	if arg0.m_enabled == false then
		return 
	end
	arg0.tabSelected = arg1.tabIndex
	CoD.MFTabManager.LoadTab(arg0, arg1.controller, arg0.tabSelected)
end

function CoD.MFTabManager.Enable(arg0)
	arg0.m_enabled = true
end

function CoD.MFTabManager.Disable(arg0)
	arg0.m_enabled = false
end

function CoD.MFTabManager.new(arg0, arg1, arg2, arg3)
	local registerVal4 = LUI.UIElement.new(arg1)
	registerVal4.tabContentPane = arg0
	registerVal4.m_isHidden = arg2
	registerVal4.m_enabled = true
	local registerVal5 = LUI.UIElement.new()
	registerVal5:setLeftRight(true, false, 0.000000, CoD.ButtonPrompt.Height)
	registerVal5:setTopBottom(true, false, 0.000000, CoD.ButtonPrompt.Height)
	registerVal4:addElement(registerVal5)
	registerVal4.leftTopButtonBar = registerVal5
	local registerVal6 = CoD.ButtonPrompt.new("shoulderl", "", registerVal4, "aar_button_prompt_shoulderl")
	registerVal5:addElement(registerVal6)
	registerVal4:registerEventHandler("aar_button_prompt_shoulderl", CoD.MFTabManager.buttonLeftShoulder)
	local registerVal7 = LUI.UIElement.new()
	registerVal7:setLeftRight(false, true, -CoD.ButtonPrompt.Height, 0.000000)
	registerVal7:setTopBottom(true, false, 0.000000, CoD.ButtonPrompt.Height)
	registerVal4:addElement(registerVal7)
	registerVal4.rightTopButtonBar = registerVal7
	local registerVal8 = CoD.ButtonPrompt.new("shoulderr", "", registerVal4, "aar_button_prompt_shoulderr")
	registerVal7:addElement(registerVal8)
	registerVal4:registerEventHandler("aar_button_prompt_shoulderr", CoD.MFTabManager.buttonRightShoulder)
	if CoD.isPC then
		registerVal4:registerEventHandler("tab_clicked", CoD.MFTabManager.TabClicked)
	end
	if registerVal4.m_isHidden == true then
		registerVal8:setAlpha(0.000000)
		registerVal6:setAlpha(0.000000)
	end
	local registerVal9 = LUI.UIHorizontalList.new()
	registerVal9:setLeftRight(true, true, (CoD.ButtonPrompt.Height + 5.000000), -(CoD.ButtonPrompt.Height + 5.000000))
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9:setAlignment(LUI.Alignment.Left)
	registerVal4:addElement(registerVal9)
	registerVal4.tabHeaderPane = registerVal9
	registerVal4.addTab = CoD.MFTabManager.AddTab
	registerVal4.refreshTab = CoD.MFTabManager.Refresh
	registerVal4.loadTab = CoD.MFTabManager.LoadTab
	registerVal4.setTabSpacing = CoD.MFTabManager.SetTabSpacing
	registerVal4.setTabAlignment = CoD.MFTabManager.SetTabAlignment
	registerVal4.keepRightBumperAlignedToHeader = CoD.MFTabManager.KeepRightBumperAlignedToHeader
	registerVal4.enable = CoD.MFTabManager.Enable
	registerVal4.disable = CoD.MFTabManager.Disable
	registerVal4.selectionColor = arg3
	registerVal4.tabSelected = 1.000000
	return registerVal4
end

function CoD.MFTabManager.SetTabSpacing(arg0, arg1)
	local registerVal5 = {}
	registerVal5.spacing = arg1
	arg0.tabHeaderPane:registerAnimationState("default", registerVal5)
	arg0.tabHeaderPane:animateToState("default")
end

function CoD.MFTabManager.SetTabAlignment(arg0, arg1)
	local registerVal5 = {}
	registerVal5.alignment = arg1
	arg0.tabHeaderPane:registerAnimationState("default", registerVal5)
	arg0.tabHeaderPane:animateToState("default")
end

function CoD.MFTabManager.KeepRightBumperAlignedToHeader(arg0, arg1)
	arg0.tabHeaderPane.rightBumperAlignedToHeader = arg1
end

function CoD.MFTabManager.RefeshRightBumperAlignment(arg0)
	if arg0.tabHeaderPane.rightBumperAlignedToHeader ~= nil and arg0.tabHeaderPane.rightBumperAlignedToHeader == true then
		for index2=1.000000, #arg0.tabsList, 1.000000 do
		end
		arg0.rightTopButtonBar:setLeftRight(true, false, (((CoD.ButtonPrompt.Height + 5.000000) + (0.000000 + arg0.tabsList[index2].tabHeader.titleBox.titleWidth)) + 5.000000), ((((CoD.ButtonPrompt.Height + 5.000000) + (0.000000 + arg0.tabsList[index2].tabHeader.titleBox.titleWidth)) + 5.000000) + CoD.ButtonPrompt.Height))
	end
end

local function __FUNC_1E60_(arg0, arg1, arg2, arg3, arg4)
	if arg0.tabsList == nil then
		arg0.tabsList = {}
	end
	if arg4 == nil then
	end
	{}.tabCreatorFn = arg3
	local registerVal6 = __FUNC_582_(arg0, arg2, false)
	{}.tabHeader = registerVal6
	table.insert(arg0.tabsList, {})
	registerVal6 = table.getn(arg0.tabsList)
	{}.tabIndex = registerVal6
	if CoD.isPC then
		{}.tabHeader:setHandleMouse(true)
		{}.tabHeader:registerEventHandler("mouseenter", CoD.MFTabManager.TabHeader_MouseEnter)
		{}.tabHeader:registerEventHandler("mouseleave", CoD.MFTabManager.TabHeader_MouseLeave)
		{}.tabHeader:registerEventHandler("leftmousedown", CoD.MFTabManager.TabHeader_LeftMouseDown)
		{}.tabHeader.id = "MFTabHeader"
		{}.tabHeader.index = #arg0.tabsList
	end
	CoD.MFTabManager.RefeshRightBumperAlignment(arg0)
	return {}.tabIndex
end

CoD.MFTabManager.AddTab = __FUNC_1E60_
function CoD.MFTabManager.Refresh(arg0, arg1)
	CoD.MFTabManager.LoadTab(arg0, arg1, arg0.tabSelected)
end

function CoD.MFTabManager.LoadTab(arg0, arg1, arg2)
	arg0.tabSelected = arg2
	if arg0.tabCreated ~= nil then
		local registerVal5 = {}
		registerVal5.name = "close_tab"
		arg0.tabCreated:processEvent(registerVal5)
		arg0.tabCreated:close()
	end
	collectgarbage("collect")
	collectgarbage("collect")
	local registerVal3 = arg0.tabsList[arg2].tabCreatorFn(arg0, arg1)
	arg0.tabCreated = registerVal3
	if arg0.m_isHidden == nil or arg0.m_isHidden == false then
		arg0.tabContentPane:addElement(arg0.tabCreated)
	end
	if arg0.currentTabHeader ~= nil then
		arg0.currentTabHeader.isCurrentlySelected = false
		arg0.currentTabHeader.titleBox:animateToState("default", 250.000000)
		arg0.currentTabHeader.tabBg:beginAnimation("default", 250.000000)
		arg0.currentTabHeader.tabBg:setAlpha(0.000000)
	end
	arg0.currentTabHeader = arg0.tabsList[arg2].tabHeader
	arg0.currentTabHeader.isCurrentlySelected = true
	arg0.currentTabHeader.titleBox:animateToState("selected", 250.000000)
	arg0.currentTabHeader.tabBg:beginAnimation("selected", 250.000000)
	arg0.currentTabHeader.tabBg:setAlpha(1.000000)
	registerVal5 = {}
	registerVal5.name = "tab_changed"
	registerVal5.tabIndex = arg0.tabSelected
	arg0:dispatchEventToParent(registerVal5)
end

function CoD.MFTabManager.TabHeader_MouseEnter(arg0, arg1)
	arg0.titleBox:beginAnimation("mouse_enter", 100.000000)
	arg0.titleBox:setAlpha(1.000000)
	arg0.tabBg:beginAnimation("mouse_enter", 250.000000)
	arg0.tabBg:setAlpha(1.000000)
end

function CoD.MFTabManager.TabHeader_MouseLeave(arg0, arg1)
	if not arg0.isCurrentlySelected then
		arg0.titleBox:animateToState("default", 100.000000)
		arg0.tabBg:beginAnimation("default", 250.000000)
		arg0.tabBg:setAlpha(0.000000)
	end
end

function CoD.MFTabManager.TabHeader_LeftMouseDown(arg0, arg1)
	if not arg0.isCurrentlySelected then
		local registerVal4 = {}
		registerVal4.name = "tab_clicked"
		registerVal4.controller = arg1.controller
		registerVal4.tabIndex = arg0.index
		arg0:dispatchEventToParent(registerVal4)
	end
end

