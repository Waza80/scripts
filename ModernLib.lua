-- Services --

local Players = game:GetService("Players")
local status, response = pcall(function() return game:GetService("CoreGui") end)
local CoreGui = nil; if status == true then CoreGui = response end
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

-- Useful Variables --

local LocalPlayer = Players.LocalPlayer
local PlayerMouse = LocalPlayer:GetMouse()
local Camera = workspace.CurrentCamera
local Lib = {}

-- Tree --

local ModernLib = nil
local status, response = pcall(function()
	if getgenv().gethui then
		if gethui():FindFirstChild("ModernLibTemplate_12052193") then
			return gethui():FindFirstChild("ModernLibTemplate_12052193")
		end
	elseif CoreGui then
		if CoreGui:FindFIrstChild("RobloxGui"):FindFirstChild("ModernLibTemplate_12052193") then
			return CoreGui.RobloxGui:FindFirstChild("ModernLibTemplate_12052193")
		elseif CoreGui:FindFirstChild("ModernLibTemplate_12052193") then
			return CoreGui:FindFirstChild("ModernLibTemplate_12052193")
		end
	end
end)

if status == true then 
	ModernLib = response
end

if not ModernLib and LocalPlayer.PlayerGui:FindFirstChild("ModernLibTemplate_12052193") then
	ModernLib = LocalPlayer.PlayerGui:FindFirstChild("ModernLibTemplate_12052193")
else
	ModernLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Waza80/scripts/main/ModernUI_Source.lua"))()
end

ModernLib.Enabled = false
ModernLib.Name = "ModernLibTemplate_12052193"	

-- Function Setup --

function Lib:CreateWindow(T)
	T["SelectorTopDistance"] = T["SelectorTopDistance"] or 5
	T["Rainbow"] = T["Rainbow"] or false
	if T["ShowCloseButton"] == nil then T["ShowCloseButton"] = true end
	T["MultipleTabs"] = T["MultipleTabs"] or false
	if T["ResetTabPosition"] == nil then T["ResetTabPosition"] = true end
	T["ClosePosition"] = T["ClosePosition"] or "center"

	local WindowItem = {}
	local SelectedTab = nil	
	local TabLayout = 0
	
	local Main = ModernLib:Clone(); Main.Enabled = true; if Main:FindFirstChild("MainHandler") then Main:FindFirstChild("MainHandler"):Destroy() end; Main.Parent = ModernLib.Parent; Main.Name = "ModernLib"
	local Tabs = Main.Tabs
	local TabSelector = Main.TabSelector
	local TabContainer = TabSelector.Container.Tabs
	local SelectedTabButton = nil
	local Templates = Main.Templates
	
	TabContainer:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(function()
		-- if script.Parent.AbsoluteCanvasSize.X == 0 then script.Parent.Visible = false; return else script.Parent.Visible = true end
		if workspace.CurrentCamera.ViewportSize.X - 50 > TabContainer.AbsoluteCanvasSize.X then
			TabContainer.Size = UDim2.new(0, TabContainer.AbsoluteCanvasSize.X, 0, 30)
		else
			TabContainer.Size = UDim2.new(0, Camera.ViewportSize.X - 50, 0, 30)
		end
	end)
	
	TabContainer.ChildAdded:Connect(function(TabButton)
		TabButton.ClickPart.MouseButton1Click:Connect(function()
			local Tab = Tabs:FindFirstChild(TabButton.Name)
			if T["MultipleTabs"] == false then
				if SelectedTabButton then
					TweenService:Create(SelectedTabButton, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
					TweenService:Create(SelectedTabButton.Label, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
					Tabs:FindFirstChild(SelectedTabButton.Name).Visible = false
					TabButton.IsOpened.Value = false
					if SelectedTabButton == TabButton then SelectedTabButton = nil; return end
				end
				TweenService:Create(TabButton, TweenInfo.new(0.5), {BackgroundTransparency = 0.2}):Play()
				TweenService:Create(TabButton.Label, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(24, 24, 28)}):Play()
				SelectedTabButton = TabButton
				if Tab.Position == UDim2.new(0.5, 0, 0.5, 0) or T["ResetTabPosition"] == true then
					Tab.Position = UDim2.new(0.5, math.random(-20, 20), 0.5, math.random(-20, 20))
				end
				Tab.Visible = true
				TabButton.IsOpened.Value = true
			else
				if TabButton.IsOpened.Value == true then
					TabButton.IsOpened.Value = false
					Tab.Visible = false
					TweenService:Create(TabButton, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
					TweenService:Create(TabButton.Label, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				else
					TabButton.IsOpened.Value = true
					Tab.Visible = true
					if Tab.Position == UDim2.new(0.5, 0, 0.5, 0) or T["ResetTabPosition"] == true then
						Tab.Position = UDim2.new(0.5, math.random(-20, 20), 0.5, math.random(-20, 20))
					end
					TweenService:Create(TabButton, TweenInfo.new(0.5), {BackgroundTransparency = 0.2}):Play()
					TweenService:Create(TabButton.Label, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(24, 24, 28)}):Play()
				end
			end
		end)
	end)
	
	TabSelector.Position = UDim2.new(0.5, 0, 0, T["SelectorTopDistance"])
	
	if T["Rainbow"] == true then
		task.spawn(function()
			pcall(function() 
				while true do
					for i = 0, 1, 0.001 * 2.5 do
						TabSelector.UIStroke.Color = Color3.fromHSV(i, 1, 1)
						TabSelector.Container.CloseButton.BackgroundColor3 = Color3.fromHSV(i, 1, 1)
						task.wait()
					end
				end
			end) 
		end)
	end
	
	if T["ShowCloseButton"] == false then
		TabSelector.Container.CloseButton.Visible = false
	else
		local CloseButtonClosed = false
		local CloseButtonOnCooldown = false

		TabSelector.Container.CloseButton.ClickPart.MouseButton1Click:Connect(function()
			if CloseButtonOnCooldown then return end
			CloseButtonClosed = not CloseButtonClosed
			if CloseButtonClosed == true then
				if T["ClosePosition"] == "center" then
					TweenService:Create(TabSelector, TweenInfo.new(0.2), {AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, TabSelector.AbsolutePosition.Y)}):Play()
				elseif T["ClosePosition"] == "left" then
					TweenService:Create(TabSelector, TweenInfo.new(0.2), {AnchorPoint = Vector2.new(0, 0), Position = UDim2.new(0, 25, 0, TabSelector.AbsolutePosition.Y)}):Play()
				elseif T["ClosePosition"] == "right" then
					TweenService:Create(TabSelector, TweenInfo.new(0.2), {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -25, 0, TabSelector.AbsolutePosition.Y)}):Play()
				end

				TweenService:Create(TabContainer, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 30)}):Play()
				TweenService:Create(TabSelector.Container.UIListLayout, TweenInfo.new(0.2), {Padding = UDim.new(0, 0)}):Play()
				TweenService:Create(TabSelector.Container.CloseButton.Icon, TweenInfo.new(0.2), {Rotation = 45}):Play()
			elseif CloseButtonClosed == false then
				TweenService:Create(TabSelector, TweenInfo.new(0.2), {AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, TabSelector.AbsolutePosition.Y)}):Play()
				TweenService:Create(TabContainer, TweenInfo.new(0.2), {Size = UDim2.new(0, TabContainer.AbsoluteCanvasSize.X, 0, 30)}):Play()
				TweenService:Create(TabSelector.Container.UIListLayout, TweenInfo.new(0.2), {Padding = UDim.new(0, 5)}):Play()
				TweenService:Create(TabSelector.Container.CloseButton.Icon, TweenInfo.new(0.2), {Rotation = 0}):Play()
			end
			CloseButtonOnCooldown = true
			task.wait(0.2)
			CloseButtonOnCooldown = false
		end)
	end
	
	function WindowItem:CreateTab(Name)
		local TabItem = {}
		local TabItemLayout = 0
		local IsTabDragging, TabDragStart, TabDragPos = nil, nil, nil
		local RandomTabName =  "_" .. math.random(1000000000000, 9999999999999)
		
		local Tab = Templates.TabTemplate:Clone()
		Tab.Parent = Tabs
		Tab.Topbar.Label.Text = Name
		Tab.Visible = false
		Tab.Name = Name .. RandomTabName

		Tab.Topbar.ClickPart.InputBegan:Connect(function(Input)
			if (Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch) then
				IsTabDragging = true
				TabDragStart = Input.Position
				TabDragPos = Tab.Position

				for _, Tab in pairs(Tabs:GetChildren()) do
					Tab.ZIndex = 1
				end
				Tab.ZIndex = 2

				local InputConnection = Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						IsTabDragging = false
					end
				end)
				repeat task.wait() until IsTabDragging == false
				InputConnection:Disconnect()
			end
		end)

		UserInputService.InputChanged:Connect(function(Input)
			if (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch) then
				if IsTabDragging == true then
					local delta = Input.Position - TabDragStart
					local position = UDim2.new(TabDragPos.X.Scale, TabDragPos.X.Offset + delta.X, TabDragPos.Y.Scale, TabDragPos.Y.Offset + delta.Y)
					Tab.Position = position
					-- TweenService:Create(Tab, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {Position = position}):Play()
				end
			end
		end)
		
		local TabButton = Templates.TabButtonTemplate:Clone()
		TabButton.Parent = TabContainer
		TabButton.Label.Text = Name
		TabButton.Name = Name .. RandomTabName
		TabButton.LayoutOrder = TabLayout; TabLayout = TabLayout + 1
		TabButton.Size = UDim2.new(0, TabButton.Label.TextBounds.X + 8, 1, 0)
		
		function TabItem:CreateLabel(Text)
			local LabelItem = {}

			local Label = Templates.LabelTemplate:Clone()
			Label.Parent = Tab.Container
			Label.Name = "Label"
			Label.Title.Text = Text
			Label.LayoutOrder = TabItemLayout; TabItemLayout = TabItemLayout + 1

			function LabelItem:Set(NewText)
				Label.Title.Text = NewText
			end

			return LabelItem
		end

		function TabItem:CreateParagraph(Text, Description)
			local ParagraphItem = {}

			local Paragraph = Templates.ParagraphTemplate:Clone()
			Paragraph.Parent = Tab.Container
			Paragraph.Name = "Paragraph"
			Paragraph.Title.Text = Text
			Paragraph.Description.Text = Description
			Paragraph.LayoutOrder = TabItemLayout; TabItemLayout = TabItemLayout + 1
			
			if Paragraph.Description.AbsoluteSize.Y == 0 then
				Paragraph.Size = UDim2.new(1, -10, 0, 30)
			else
				Paragraph.Size = UDim2.new(1, -10, 0, 30 + Paragraph.Description.AbsoluteSize.Y)
			end

			Paragraph.Description:GetPropertyChangedSignal("Text"):Connect(function()
				if Paragraph.Description.AbsoluteSize.Y == 0 then
					Paragraph.Size = UDim2.new(1, -10, 0, 30)
				else
					Paragraph.Size = UDim2.new(1, -10, 0, 30 + Paragraph.Description.AbsoluteSize.Y)
				end
			end)
			
			function ParagraphItem:Set(NewText, NewDescription)
				Paragraph.Title.Text = NewText
				Paragraph.Description.Text = NewDescription
			end

			return ParagraphItem
		end

		function TabItem:CreateSection(Text)
			local Section = Templates.SectionTemplate:Clone()
			Section.Parent = Tab.Container
			Section.Name = "Section"
			Section.Label.Text = Text
			Section.LayoutOrder = TabItemLayout; TabItemLayout = TabItemLayout + 1
		end

		function TabItem:CreateButton(T)
			T["Name"] = T["Name"] or "Unnamed"
			T["Callback"] = T["Callback"] or function(...) end

			local Button = Templates.ButtonTemplate:Clone()
			Button.Parent = Tab.Container
			Button.Name = "Button"
			Button.LayoutOrder = TabItemLayout; TabItemLayout = TabItemLayout + 1
			Button.Title.Text = T["Name"]
			Button.ClickPart.MouseButton1Click:Connect(T["Callback"])

			Button.ClickPart.MouseButton1Click:Connect(function()
				local MouseDistanceLeft = PlayerMouse.X - Button.AbsolutePosition.X
				local MouseDistanceRight = (Button.AbsolutePosition.X + Button.AbsoluteSize.X) - PlayerMouse.X

				local Circle = Button.RoundAnimationContainer.Circle:Clone()
				Circle.Parent = Button.RoundAnimationContainer

				Circle.BackgroundTransparency = 0.8
				Circle.Position = UDim2.new(0, PlayerMouse.X -Button.AbsolutePosition.X, 0, PlayerMouse.Y - Button.AbsolutePosition.Y)
				Circle.Size = UDim2.new(0, 0, 0, 1000000000)
				TweenService:Create(Circle, TweenInfo.new(0.35), {Size = UDim2.new(0, math.max(MouseDistanceLeft, MouseDistanceRight) * 2, 0, 1000000000)}):Play()
				task.wait(0.35)
				TweenService:Create(Circle, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
				task.wait(0.2)
				Circle:Destroy()
				Circle = nil
			end)
			
			return T
		end

		function TabItem:CreateToggle(T)
			T["Name"] = T["Name"] or "Unnamed"
			T["Value"] = T["Value"] or false
			T["Callback"] = T["Callback"] or function(...) end

			local ToggleItem = T
			local ToggleIsEnabled = T["Value"]

			local Toggle = Templates.ToggleTemplate:Clone()
			Toggle.Parent = Tab.Container
			Toggle.Name = "Toggle"
			Toggle.LayoutOrder = TabItemLayout; TabItemLayout = TabItemLayout + 1
			Toggle.Title.Text = T["Name"]

			Toggle.ClickPart.MouseButton1Click:Connect(function() 
				ToggleIsEnabled = not ToggleIsEnabled
				ToggleItem.Value = ToggleIsEnabled
				T["Callback"](ToggleItem.Value) 
			end)

			function ToggleItem:Set(Status)
				Toggle.IsEnabled.Value = Status
				ToggleItem.Value = Status
				T["Callback"](Status)
			end

			return ToggleItem
		end

		function TabItem:CreateSlider(T)
			T["Name"] = T["Name"] or "Unnamed"
			T["Callback"] = T["Callback"] or nil
			T["Default"] = T["Default"] or T["Min"]

			local SliderItem = T
			local OldSliderValue = ""
			local MovingSlider = false

			local Slider = Templates.SliderTemplate:Clone()
			Slider.Parent = Tab.Container
			Slider.Name = "Slider"
			Slider.LayoutOrder = TabItemLayout; TabItemLayout = TabItemLayout + 1
			Slider.Title.Text = T["Name"]
			Slider.Slider.Progression.Size = UDim2.new((T["Default"] - T["Min"]) / (T["Max"] - T["Min"]), 0, 1, 0)
			Slider.TextBox.Text = T["Default"]
			
			local UpdateSlider = function()
				local FilteredString = ""
				for i = 1, #Slider.TextBox.Text do
					if i == 15 then break end
					if string.find(Slider.TextBox.Text:sub(i, i), "%d") then
						FilteredString = FilteredString .. Slider.TextBox.Text:sub(i, i)
					end
				end
				
				local Percentage = math.clamp((tonumber(FilteredString) - T["Min"]) / (T["Max"] - T["Min"]), 0, 1)
				Slider.Slider.Progression.Size = UDim2.new(Percentage, 0, 1, 0)
				Slider.TextBox.Text = tostring(math.clamp(tonumber(FilteredString), T["Min"], T["Max"]))
				
				if T["Callback"] ~= nil then
					if OldSliderValue ~= Slider.TextBox.Text then 
						T["Callback"](Slider.TextBox.Text)
						OldSliderValue = Slider.TextBox.Text 
					end
				end

				SliderItem.Value = Slider.TextBox.Text
			end
			
			Slider.TextBox:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				Slider.Precision.Position = UDim2.new(1, -10 - Slider.TextBox.AbsoluteSize.X, 0, 5)
			end)

			Slider.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				if Slider.TextBox.TextBounds.X > 40 then
					if string.len(Slider.TextBox.Text) <= 14 then
						Slider.TextBox.Size = UDim2.new(0, Slider.TextBox.TextBounds.X + 4, 0, 20)
					end
				elseif Slider.TextBox.Size.X.Offset > 40 then
					Slider.TextBox.Size = UDim2.new(0, 40, 0, 20)
				end
			end)
			
			Slider.TextBox.FocusLost:Connect(UpdateSlider)

			Slider.Slider.InputBegan:Connect(function(Input)
				if (Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch) then
					MovingSlider = true
					local InputConnection = Input.Changed:Connect(function()
						if Input.UserInputState == Enum.UserInputState.End then
							MovingSlider = false
						end
					end)
					repeat task.wait() until MovingSlider == false
					InputConnection:Disconnect()
				end
			end)

			UserInputService.InputChanged:Connect(function(Input)
				if (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch) then
					if MovingSlider == true then
						Slider.Slider.Progression.Size = UDim2.new(math.clamp((Input.Position.X - Slider.Slider.AbsolutePosition.X) / Slider.Slider.AbsoluteSize.X, 0, 1), 0, 1, 0)
						Slider.TextBox.Text = tostring(math.ceil(T["Min"] + Slider.Slider.Progression.Size.X.Scale * (T["Max"] - T["Min"])))
						UpdateSlider()
					end
				end
			end)

			Slider.Precision.Plus.MouseButton1Click:Connect(function()
				Slider.TextBox.Text = tostring(math.ceil(tonumber(Slider.TextBox.Text) + 1))
				
			end)

			Slider.Precision.Minus.MouseButton1Click:Connect(function()
				Slider.TextBox.Text = tostring(math.ceil(tonumber(Slider.TextBox.Text) - 1))
			end)

			function SliderItem:Set(NewValue)
				Slider.TextBox.Text = tostring(tonumber(NewValue))
				UpdateSlider()
			end

			return SliderItem
		end

		function TabItem:CreateDropdown(T)
			T["Name"] = T["Name"] or "Unnamed"
			T["Items"] = T["Items"] or {}
			T["Callback"] = T["Callback"] or nil
			T["Multiple"] = T["Multiple"] or false

			local DropdownItem = T
			local DropdownIsOpened = false

			local Dropdown = Templates.DropdownTemplate:Clone()
			Dropdown.Parent = Tab.Container
			Dropdown.Name = "Dropdown"
			Dropdown.LayoutOrder = TabItemLayout; TabItemLayout = TabItemLayout + 1
			Dropdown.Title.Text = T["Name"]

			Dropdown.ClickPart.MouseButton1Click:Connect(function()
				DropdownIsOpened = not DropdownIsOpened
				if DropdownIsOpened == true then
					TweenService:Create(Dropdown.Arrow, TweenInfo.new(0.35), {Rotation = 270}):Play()
					TweenService:Create(Dropdown.Options, TweenInfo.new(0.35), {Size = UDim2.new(1, -10, 0, 0)}):Play()
				else
					TweenService:Create(Dropdown.Arrow, TweenInfo.new(0.35), {Rotation = 360}):Play()
					TweenService:Create(Dropdown.Options, TweenInfo.new(0.35), {Size = UDim2.new(1, -10, 0, Dropdown.Options.AbsoluteCanvasSize.Y)}):Play()
				end
			end)

			Dropdown.Options:GetPropertyChangedSignal("Size"):Connect(function()
				Dropdown.Size = UDim2.new(1, -10, 0, 30 + ((Dropdown.Options.AbsoluteSize.Y / Dropdown.Options.AbsoluteCanvasSize.Y) * 5) + Dropdown.Options.AbsoluteSize.Y)
			end)
			
			local EntryLayout, ActivatedButton, MultipleButton = 0, nil, {}

			for _, Item in pairs(T["Items"]) do
				local DropdownEntry = Templates.DropdownEntryTemplate:Clone()
				DropdownEntry.Parent = Dropdown.Options
				DropdownEntry.Name = "DropdownEntry"
				DropdownEntry.LayoutOrder = EntryLayout; EntryLayout = EntryLayout + 1
				DropdownEntry.Label.Text = Item
				
				DropdownEntry.IsEnabled:GetPropertyChangedSignal("Value"):Connect(function()
					if DropdownEntry.IsEnabled.Value == true then
						TweenService:Create(DropdownEntry, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(40, 41, 63)}):Play()
					elseif DropdownEntry.IsEnabled.Value == false then
						TweenService:Create(DropdownEntry, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(21, 21, 32)}):Play()
					end
				end)
				
				if T["Multiple"] == false then
					DropdownEntry.ClickPart.MouseButton1Click:Connect(function()
						if ActivatedButton then
							ActivatedButton.IsEnabled.Value = false
						end

						if ActivatedButton == DropdownEntry then 
							ActivatedButton = nil
							DropdownItem.Value = nil
							return 
						end
						if T["Callback"] then T["Callback"](DropdownEntry.Label.Text) end

						ActivatedButton = DropdownEntry
						DropdownItem.Value = DropdownEntry.Label.Text
						DropdownEntry.IsEnabled.Value = true
					end)
				elseif T["Multiple"] == true then
					DropdownEntry.ClickPart.MouseButton1Click:Connect(function()
						DropdownEntry.IsEnabled.Value = not DropdownEntry.IsEnabled.Value

						local EphemeralTable = {}
						for _, Entry in pairs(Dropdown.Options:GetChildren()) do
							if not Entry:IsA("UIListLayout") then
								if Entry.IsEnabled.Value == true then
									local Label = Entry.Label.Text
									table.insert(EphemeralTable, Label)
								end
							end
						end

						MultipleButton = EphemeralTable
						DropdownItem.Value = MultipleButton

						if T["Callback"] then
							T["Callback"](MultipleButton)
						end
					end)
				end
			end

			function DropdownItem:Set(Items, Reset)
				if Reset then
					ActivatedButton = nil

					for _, Entry in pairs(Dropdown.Options:GetChildren()) do
						if not Entry:IsA("UIListLayout") then
							Entry:Destroy()
						end
					end
				end

				for _, Item in pairs(Items) do
					local DropdownEntry = Templates.DropdownEntryTemplate:Clone()
					DropdownEntry.Parent = Dropdown.Options
					DropdownEntry.Name = "DropdownEntry"
					DropdownEntry.LayoutOrder = EntryLayout; EntryLayout = EntryLayout + 1
					DropdownEntry.Label.Text = Item
					
					DropdownEntry.IsEnabled:GetPropertyChangedSignal("Value"):Connect(function()
						if DropdownEntry.IsEnabled.Value == true then
							TweenService:Create(DropdownEntry, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(40, 41, 63)}):Play()
						elseif DropdownEntry.IsEnabled.Value == false then
							TweenService:Create(DropdownEntry, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(21, 21, 32)}):Play()
						end
					end)
					
					if T["Multiple"] == false then
						DropdownEntry.ClickPart.MouseButton1Click:Connect(function()
							if ActivatedButton then
								ActivatedButton.IsEnabled.Value = false
							end

							if ActivatedButton == DropdownEntry then 
								ActivatedButton = nil
								DropdownItem.Value = nil
								return 
							end
							if T["Callback"] then T["Callback"](DropdownEntry.Label.Text) end

							ActivatedButton = DropdownEntry
							DropdownItem.Value = DropdownEntry.Label.Text
							DropdownEntry.IsEnabled.Value = true
						end)
					elseif T["Multiple"] == true then
						DropdownEntry.ClickPart.MouseButton1Click:Connect(function()
							DropdownEntry.IsEnabled.Value = not DropdownEntry.IsEnabled.Value

							local EphemeralTable = {}
							for _, Entry in pairs(Dropdown.Options:GetChildren()) do
								if not Entry:IsA("UIListLayout") then
									if Entry.IsEnabled.Value == true then
										local Label = Entry.Label.Text
										table.insert(EphemeralTable, Label)
									end
								end
							end

							MultipleButton = EphemeralTable
							DropdownItem.Value = MultipleButton

							if T["Callback"] then
								T["Callback"](MultipleButton)
							end
						end)
					end
				end
			end

			return DropdownItem
		end

		function TabItem:CreateInput(T)
			T["Name"] = T["Name"] or "Unnamed"
			T["Type"] = T["Type"] or "string"; if table.find({"string", "int"}, T["Type"]) == nil then T["Type"] = "string" end
			T["ClearOnFocus"] = T["ClearOnFocus"] or false
			T["PlaceholderText"] = T["PlaceholderText"] or ""
			T["Callback"] = T["Callback"] or nil

			local InputItem = T
			local OldInputValue = ""

			local Input = Templates.InputTemplate:Clone()
			Input.Parent = Tab.Container
			Input.Name = "Input"
			Input.LayoutOrder = TabItemLayout; TabItemLayout = TabItemLayout + 1
			Input.Title.Text = T["Name"]
			Input.TextBox.ClearTextOnFocus = T["ClearOnFocus"]
			Input.TextBox.PlaceholderText = string.sub(T["PlaceholderText"], 0, 35)
			
			if Input.TextBox.TextBounds.X > 40 then
				if string.len(Input.TextBox.Text) <= 35 then
					Input.TextBox.Size = UDim2.new(0, Input.TextBox.TextBounds.X + 4, 0, 20)
				end
			end
			
			Input.Title.Size = UDim2.new(1, -20 - Input.TextBox.AbsoluteSize.X, 1, -10)
			
			local UpdateInput = function()
				if T["Callback"] ~= nil then
					if OldInputValue ~= Input.TextBox.Text then 
						T["Callback"](Input.TextBox.Text)
						OldInputValue = Input.TextBox.Text 
					end
				end

				InputItem.Value = Input.TextBox.Text
			end
			
			Input.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				if Input.TextBox.TextBounds.X > 40 then
					if string.len(Input.TextBox.Text) <= 35 then
						Input.TextBox.Size = UDim2.new(0, Input.TextBox.TextBounds.X + 4, 0, 20)
					end
				elseif Input.TextBox.Size.X.Offset > 40 then
					Input.TextBox.Size = UDim2.new(0, 40, 0, 20)
				end
				
				local FilteredString = ""
				local Filter = (T["Type"] == "int" and "%d") or (T["Type"] == "string" and "")
				for i = 1, #Input.TextBox.Text do
					if i == 36 then break end
					if string.find(Input.TextBox.Text:sub(i, i), Filter) then
						FilteredString = FilteredString .. Input.TextBox.Text:sub(i, i)
					end
				end

				Input.TextBox.Text = FilteredString
				
				Input.Title.Size = UDim2.new(1, -20 - Input.TextBox.AbsoluteSize.X, 1, -10)
			end)
			
			Input.TextBox.FocusLost:Connect(UpdateInput)
			
			--[[ DEPRECATED FUNCTION
			function InputItem:Set(Type)
				if table.find({"string", "int"}, Type) ~= nil then
					Input.ValueType.Value = Type
					InputItem["Type"] = Type
				end
			end
			]]
			
			return InputItem
		end

		return TabItem
	end
	
	return WindowItem
end

return Lib;
