-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.CoD9Button")
CoD.ButtonPrompt = {}
CoD.ButtonPrompt.FontName = "ExtraSmall"
CoD.ButtonPrompt.Height = 25.000000
CoD.ButtonPrompt.TextHeight = CoD.textSize[CoD.ButtonPrompt.FontName]
CoD.ButtonPrompt.ButtonToTextSpacing = 3.000000
local registerVal1 = {}
registerVal1.r = 0.427451
registerVal1.g = 0.486275
registerVal1.b = 0.525490
CoD.ButtonPrompt.TextColor = registerVal1
local function __FUNC_496_(arg0, arg1)
	arg0.disabled = nil
	arg0:animateToState("enabled")
	arg0:dispatchEventToChildren(arg1)
end

local function __FUNC_539_(arg0, arg1)
	arg0.disabled = true
	arg0:animateToState("disabled")
	arg0:dispatchEventToChildren(arg1)
end

function CoD.ButtonPrompt.Enable(arg0)
	if arg0.disabled == true then
		local registerVal3 = {}
		registerVal3.name = "enable"
		arg0:processEvent(registerVal3)
		arg0.disabled = nil
	end
end

function CoD.ButtonPrompt.Disable(arg0)
	if arg0.disabled == nil then
		local registerVal3 = {}
		registerVal3.name = "disable"
		arg0:processEvent(registerVal3)
		arg0.disabled = true
	end
end

local function __FUNC_706_(arg0)
	arg0:registerEventHandler("enable", __FUNC_496_)
	arg0:registerEventHandler("disable", __FUNC_539_)
end

CoD.ButtonPrompt.SetupElement = __FUNC_706_
function CoD.ButtonPrompt.new(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
	if LUI.DEVHideButtonPrompts then
	end
	local registerVal12 = LUI.UIElement.new()
	registerVal12:setTopBottom(false, false, (-CoD.ButtonPrompt.Height / 2.000000), (CoD.ButtonPrompt.Height / 2.000000))
	registerVal12.button = arg0
	registerVal12.enable = CoD.ButtonPrompt.Enable
	registerVal12.disable = CoD.ButtonPrompt.Disable
	registerVal12.setNew = CoD.ButtonPrompt.SetNew
	registerVal12.setText = CoD.ButtonPrompt.SetText
	CoD.ButtonPrompt.SetupElement(registerVal12)
	local registerVal16 = {}
	registerVal16.alpha = 1.000000
	registerVal12:registerAnimationState("enabled", registerVal16)
	registerVal16 = {}
	registerVal16.alpha = 1.000000
	registerVal12:registerAnimationState("disabled", registerVal16)
	if arg2 ~= nil and arg3 ~= nil then
		local function __FUNC_14F5_(arg1, arg4)
			if not arg1.disabled and arg4.down == true then
				if arg4.button == arg0 then
					if arg5 == nil or arg4.qualifier == arg5 then
						local registerVal4 = {}
						registerVal4.name = arg3
						registerVal4.controller = arg4.controller
						arg2:processEvent(registerVal4)
						return true
					else
					else
						if CoD.isPC and arg4.button == "key_shortcut" and arg4.key == arg8 then
							registerVal4 = {}
							registerVal4.name = arg3
							registerVal4.controller = arg4.controller
							arg2:processEvent(registerVal4)
							return true
						end
					end
				end
			end
		end

		registerVal12:registerEventHandler("gamepad_button", __FUNC_14F5_)
	end
	local registerVal13 = LUI.UIText.new()
	registerVal13:setTopBottom(false, false, (-CoD.ButtonPrompt.TextHeight / 2.000000), (CoD.ButtonPrompt.TextHeight / 2.000000))
	registerVal13:setFont(CoD.fonts[CoD.ButtonPrompt.FontName])
	registerVal13:setAlpha(1.000000)
	local registerVal17 = {}
	registerVal17.alpha = 1.000000
	registerVal13:registerAnimationState("enabled", registerVal17)
	registerVal17 = {}
	registerVal17.alpha = 0.500000
	registerVal13:registerAnimationState("disabled", registerVal17)
	registerVal13:setRGB(CoD.ButtonPrompt.TextColor.r, CoD.ButtonPrompt.TextColor.g, CoD.ButtonPrompt.TextColor.b)
	CoD.ButtonPrompt.SetupElement(registerVal13)
	registerVal12:addElement(registerVal13)
	registerVal13:setText("")
	registerVal12.label = registerVal13
	registerVal12.labelText = ""
	local registerVal15 = LUI.UIText.new()
	registerVal15:setTopBottom(false, false, (-CoD.ButtonPrompt.Height / 2.000000), (CoD.ButtonPrompt.Height / 2.000000))
	registerVal15:setRGB(CoD.yellowGlow.r, CoD.yellowGlow.g, CoD.yellowGlow.b)
	registerVal15:setFont(CoD.fonts[CoD.ButtonPrompt.FontName])
	registerVal15:setAlpha(1.000000)
	if not arg4 and registerVal15 ~= nil then
		if CoD.isPC then
			if arg8 ~= nil and arg8 ~= "" then
				registerVal15.shortcutKey = arg8
			end
			if arg7 ~= nil then
				registerVal15.buttonStringShortCut = arg7
			else
				registerVal15.buttonStringShortCut = arg0
			end
			registerVal16 = Engine.LastInput_Gamepad()
			if not registerVal16 then
				if registerVal15.shortcutKey then
				else
					registerVal16 = string.sub(CoD.buttonStringsShortCut[registerVal15.buttonStringShortCut], 1.000000, 1.000000)
					if registerVal16 == "+" then
						registerVal16 = Engine.GetKeyBindingLocalizedString(0.000000, CoD.buttonStringsShortCut[registerVal15.buttonStringShortCut], 0.000000)
					else
						registerVal16 = string.sub(CoD.buttonStringsShortCut[registerVal15.buttonStringShortCut], 1.000000, 1.000000)
						if registerVal16 == "@" then
							registerVal16 = string.sub(CoD.buttonStringsShortCut[registerVal15.buttonStringShortCut], 2.000000)
							registerVal17 = Engine.Localize(registerVal16)
						else
						end
					end
				end
			end
		end
		registerVal15:setText(CoD.buttonStringsShortCut[registerVal15.buttonStringShortCut])
		registerVal12.prompt = CoD.buttonStringsShortCut[registerVal15.buttonStringShortCut]
		local registerVal19 = {}
		registerVal19.alpha = 1.000000
		registerVal15:registerAnimationState("enabled", registerVal19)
		registerVal19 = {}
		registerVal19.alpha = 0.250000
		registerVal15:registerAnimationState("disabled", registerVal19)
		CoD.ButtonPrompt.SetupElement(registerVal15)
		registerVal12.buttonImage = registerVal15
		registerVal12:addElement(registerVal15)
	end
	if CoD.useMouse then
		if registerVal15 ~= nil or "" ~= "" then
			registerVal16 = {}
			registerVal16.left = 0.000000
			registerVal16.top = 0.000000
			registerVal16.right = 0.000000
			registerVal16.bottom = 0.000000
			registerVal16.leftAnchor = true
			registerVal16.topAnchor = true
			registerVal16.rightAnchor = true
			registerVal16.bottomAnchor = true
			registerVal15 = LUI.UIButton.new(registerVal16)
			registerVal12:addElement(registerVal15)
			if arg2 ~= nil and arg3 ~= nil then
				local function __FUNC_16E8_(arg0, arg1)
					local registerVal4 = {}
					registerVal4.name = arg3
					registerVal4.controller = arg1.controller
					arg2:processEvent(registerVal4)
					return true
				end

				registerVal15:registerEventHandler("button_action", __FUNC_16E8_)
			end
			registerVal15:setHandleMouseMove(false)
			registerVal12:setHandleMouseMove(true)
			registerVal12:registerEventHandler("mouseenter", CoD.ButtonPrompt.MouseEnter)
			registerVal12:registerEventHandler("mouseleave", CoD.ButtonPrompt.MouseLeave)
			registerVal12:registerEventHandler("input_source_changed", CoD.ButtonPrompt.InputSourceChanged)
		end
	end
	CoD.ButtonPrompt.ResizeButtonPrompt(registerVal12)
	return registerVal12
end

function CoD.ButtonPrompt.addUIEditorButtonPrompt(arg0, arg1, arg2, arg3)
	if LUI.DEVHideButtonPrompts then
	end
	if CoD.isPC then
	end
	local registerVal7 = LUI.UIElement.new()
	registerVal7:setTopBottom(false, false, (-CoD.ButtonPrompt.Height / 2.000000), (CoD.ButtonPrompt.Height / 2.000000))
	registerVal7.button = arg1
	registerVal7.enable = CoD.ButtonPrompt.Enable
	registerVal7.disable = CoD.ButtonPrompt.Disable
	registerVal7.setNew = CoD.ButtonPrompt.SetNew
	registerVal7.setText = CoD.ButtonPrompt.SetText
	CoD.ButtonPrompt.SetupElement(registerVal7)
	local registerVal11 = {}
	registerVal11.alpha = 1.000000
	registerVal7:registerAnimationState("enabled", registerVal11)
	registerVal11 = {}
	registerVal11.alpha = 1.000000
	registerVal7:registerAnimationState("disabled", registerVal11)
	local registerVal8 = LUI.UIText.new()
	registerVal8:setTopBottom(false, false, (-18.000000 / 2.000000), (18.000000 / 2.000000))
	registerVal8:setFont(CoD.fonts[CoD.ButtonPrompt.FontName])
	registerVal8:setAlpha(1.000000)
	local registerVal12 = {}
	registerVal12.alpha = 1.000000
	registerVal8:registerAnimationState("enabled", registerVal12)
	registerVal12 = {}
	registerVal12.alpha = 0.500000
	registerVal8:registerAnimationState("disabled", registerVal12)
	registerVal8:setAlignment(LUI.Alignment.Left)
	CoD.ButtonPrompt.SetupElement(registerVal8)
	registerVal7:addElement(registerVal8)
	registerVal8:setText("")
	registerVal7.label = registerVal8
	registerVal7.labelText = ""
	local registerVal10 = LUI.UIText.new()
	registerVal10:setTopBottom(false, false, (-CoD.ButtonPrompt.Height / 2.000000), (CoD.ButtonPrompt.Height / 2.000000))
	registerVal10:setFont(CoD.fonts[CoD.ButtonPrompt.FontName])
	registerVal10:setAlpha(1.000000)
	if CoD.isPC then
		if arg3 ~= nil and arg3 ~= "" then
			registerVal10.shortcutKey = arg3
		end
		registerVal10.buttonStringShortCut = arg1
		registerVal11 = Engine.LastInput_Gamepad()
		if not registerVal11 then
			if registerVal10.shortcutKey then
			else
				registerVal11 = string.sub(CoD.buttonStringsShortCut[registerVal10.buttonStringShortCut], 1.000000, 1.000000)
				if registerVal11 == "+" then
					registerVal11 = Engine.GetKeyBindingLocalizedString(0.000000, CoD.buttonStringsShortCut[registerVal10.buttonStringShortCut], 0.000000)
				else
					registerVal11 = string.sub(CoD.buttonStringsShortCut[registerVal10.buttonStringShortCut], 1.000000, 1.000000)
					if registerVal11 == "@" then
						registerVal11 = string.sub(CoD.buttonStringsShortCut[registerVal10.buttonStringShortCut], 2.000000)
						registerVal12 = Engine.Localize(registerVal11)
					else
					end
				end
			end
		end
	end
	registerVal10:setText(CoD.buttonStringsShortCut[registerVal10.buttonStringShortCut])
	registerVal7.prompt = CoD.buttonStringsShortCut[registerVal10.buttonStringShortCut]
	local registerVal14 = {}
	registerVal14.alpha = 1.000000
	registerVal10:registerAnimationState("enabled", registerVal14)
	registerVal14 = {}
	registerVal14.alpha = 0.250000
	registerVal10:registerAnimationState("disabled", registerVal14)
	CoD.ButtonPrompt.SetupElement(registerVal10)
	registerVal7.buttonImage = registerVal10
	registerVal7:addElement(registerVal10)
	if CoD.useMouse then
		if registerVal10 ~= nil or "" ~= "" then
			registerVal12 = {}
			registerVal12.left = 0.000000
			registerVal12.top = 0.000000
			registerVal12.right = 0.000000
			registerVal12.bottom = 0.000000
			registerVal12.leftAnchor = true
			registerVal12.topAnchor = true
			registerVal12.rightAnchor = true
			registerVal12.bottomAnchor = true
			registerVal11 = LUI.UIButton.new(registerVal12)
			registerVal7:addElement(registerVal11)
			if arg0 ~= nil then
				local function __FUNC_23D3_(arg2, arg3)
					local registerVal4 = {}
					registerVal4.name = "gamepad_button"
					registerVal4.controller = arg3.controller
					registerVal4.button = arg1
					registerVal4.down = true
					arg0:processEvent(registerVal4)
					return true
				end

				registerVal11:registerEventHandler("button_action", __FUNC_23D3_)
			end
			registerVal11:setHandleMouseMove(false)
			registerVal7:setHandleMouseMove(true)
			registerVal7:registerEventHandler("input_source_changed", CoD.ButtonPrompt.InputSourceChanged)
			registerVal12 = {}
			local registerVal13 = {}
			local function __FUNC_24A4_()
				registerVal7:setupElementClipCounter(1.000000)
				registerVal8:completeAnimation()
				registerVal8:setRGB(1.000000, 1.000000, 1.000000)
				registerVal7.clipFinished(registerVal8, {})
			end

			registerVal13.DefaultClip = __FUNC_24A4_
			local function __FUNC_2587_()
				registerVal7:setupElementClipCounter(1.000000)
				registerVal8:completeAnimation()
				registerVal8:setRGB(0.870000, 0.370000, 0.000000)
				registerVal7.clipFinished(registerVal8, {})
			end

			registerVal13.Over = __FUNC_2587_
			registerVal12.DefaultState = registerVal13
			registerVal7.clipsPerState = registerVal12
			registerVal7:setState("DefaultState")
		end
	end
	CoD.ButtonPrompt.ResizeButtonPrompt(registerVal7)
	registerVal7.SetText = CoD.ButtonPrompt.SetText
	return registerVal7
end

function CoD.ButtonPrompt.ResizeButtonPrompt(arg0)
	if arg0.prompt ~= nil then
		local registerVal6 = string.sub(arg0.prompt, 1.000000, 2.000000)
		if registerVal6 == "^B" and not arg0.forceMeasureButtonWidth then
		else
			GetTextDimensions(arg0.prompt, CoD.fonts[CoD.ButtonPrompt.FontName], CoD.ButtonPrompt.Height)
			{} = {}
		end
		arg0.buttonImage:setLeftRight(true, false, 0.000000, ({}[3.000000] - {}[1.000000]))
	end
	local registerVal5 = Engine.LastInput_Gamepad()
	if CoD.isPC and not registerVal5 then
		GetTextDimensions(arg0.labelText, CoD.fonts[CoD.ButtonPrompt.FontName], CoD.ButtonPrompt.TextHeight)
		{} = {}
		arg0.label:setLeftRight(true, false, ((CoD.ButtonPrompt.ButtonToTextSpacing + ({}[3.000000] - {}[1.000000])) + 4.000000), (((CoD.ButtonPrompt.ButtonToTextSpacing + ({}[3.000000] - {}[1.000000])) + 4.000000) + ({}[3.000000] - {}[1.000000])))
	else
		GetTextDimensions(arg0.labelText, CoD.fonts[CoD.ButtonPrompt.FontName], CoD.ButtonPrompt.TextHeight)
		{} = {}
		arg0.label:setLeftRight(false, true, -({}[3.000000] - {}[1.000000]), 0.000000)
	end
	if arg0.newIcon then
		arg0.newIcon:setLeftRight(true, false, (((((CoD.ButtonPrompt.ButtonToTextSpacing + ({}[3.000000] - {}[1.000000])) + 4.000000) + ({}[3.000000] - {}[1.000000])) + ({}[3.000000] - {}[1.000000])) + 5.000000), ((((((CoD.ButtonPrompt.ButtonToTextSpacing + ({}[3.000000] - {}[1.000000])) + 4.000000) + ({}[3.000000] - {}[1.000000])) + ({}[3.000000] - {}[1.000000])) + 5.000000) + CoD.CACUtility.ButtonGridNewImageWidth))
		arg0.label:setLeftRight(false, true, ((-labelTextWidth - CoD.CACUtility.ButtonGridNewImageRightAlignWidth) - 5.000000), (-CoD.CACUtility.ButtonGridNewImageRightAlignWidth - 5.000000))
	end
	registerVal5 = Engine.LastInput_Gamepad()
	if CoD.isPC and not registerVal5 then
	end
	arg0:setLeftRight(true, false, 0.000000, (((((((CoD.ButtonPrompt.ButtonToTextSpacing + ({}[3.000000] - {}[1.000000])) + 4.000000) + ({}[3.000000] - {}[1.000000])) + ({}[3.000000] - {}[1.000000])) + 5.000000) + CoD.CACUtility.ButtonGridNewImageRightAlignWidth) + 8.000000))
end

function CoD.ButtonPrompt.InputSourceChanged(arg0, arg1)
	if arg0.buttonImage == nil then
		return 
	end
	if CoD.useMouse then
		if CoD.useController and arg1.source == 0.000000 then
			arg0.prompt = CoD.buttonStrings[arg0.button]
			arg0.buttonImage:setText(arg0.prompt)
		else
			if arg0.buttonImage.shortcutKey then
				arg0.prompt = arg0.buttonImage.shortcutKey
			else
				local registerVal2 = string.sub(CoD.buttonStringsShortCut[arg0.buttonImage.buttonStringShortCut], 1.000000, 1.000000)
				if registerVal2 == "+" then
					registerVal2 = Engine.GetKeyBindingLocalizedString(0.000000, CoD.buttonStringsShortCut[arg0.buttonImage.buttonStringShortCut], 0.000000)
					arg0.prompt = registerVal2
				else
					registerVal2 = string.sub(CoD.buttonStringsShortCut[arg0.buttonImage.buttonStringShortCut], 1.000000, 1.000000)
					if registerVal2 == "@" then
						registerVal2 = string.sub(CoD.buttonStringsShortCut[arg0.buttonImage.buttonStringShortCut], 2.000000)
						local registerVal3 = Engine.Localize(registerVal2)
						arg0.prompt = registerVal3
					else
						arg0.prompt = CoD.buttonStringsShortCut[arg0.buttonImage.buttonStringShortCut]
					end
				end
			end
			arg0.buttonImage:setText(arg0.prompt)
		end
		CoD.ButtonPrompt.ResizeButtonPrompt(arg0)
		if arg0.button == "primary" then
			if arg1.source == 0.000000 then
				arg0:setAlpha(1.000000)
				arg0:setPriority(-100.000000)
			else
				arg0:setAlpha(0.000000)
				arg0:setPriority(1000.000000)
			end
		end
	end
end

function CoD.ButtonPrompt.SetNew(arg0, arg1)
	if arg1 then
		local registerVal2 = LUI.UIImage.new()
		registerVal2:setLeftRight(true, false, 0.000000, CoD.CACUtility.ButtonGridNewImageWidth)
		registerVal2:setTopBottom(false, false, (-CoD.CACUtility.ButtonGridNewImageHeight / 2.000000), (CoD.CACUtility.ButtonGridNewImageHeight / 2.000000))
		registerVal2:setImage(RegisterMaterial(CoD.CACUtility.NewImageMaterial))
		arg0:addElement(registerVal2)
		arg0.newIcon = registerVal2
		if not arg0.newIcon and arg0.newIcon then
			arg0.newIcon:close()
			arg0.newIcon = nil
		end
	end
	CoD.ButtonPrompt.ResizeButtonPrompt(arg0)
end

function CoD.ButtonPrompt.SetText(arg0, arg1)
	if LUI.DEVHideButtonPrompts then
		return 
	end
	arg0.label:setText(arg1)
	arg0.labelText = arg1
	CoD.ButtonPrompt.ResizeButtonPrompt(arg0)
end

