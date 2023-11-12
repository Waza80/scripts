-- Services --

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

-- Useful Variables --

local LocalPlayer = Players.LocalPlayer
local Lib = {}

-- Tree --

local Main = loadstring(game:HttpGet("https://raw.githubusercontent.com/Waza80/scripts/main/ModernUI_Source.lua"))()
local Tabs = Main.Tabs
local TabSelector = Main.TabSelector
local TabContainer = TabSelector.Container.Tabs
local SelectedTab = TabSelector.SelectedTab
local Templates = Main.Templates

-- Function Setup --

function Lib:CreateWindow(T)
	T["SelectorTopDistance"] = T["SelectorTopDistance"] or 5
	T["Rainbow"] = T["Rainbow"] or false
	if T["ShowCloseButton"] == nil then T["ShowCloseButton"] = true end
	T["MultipleTabs"] = T["MultipleTabs"] or false
	if T["ResetTabPosition"] == nil then T["ResetTabPosition"] = true end
	T["ClosePosition"] = T["ClosePosition"] or "center"
	
	local WindowItem = {}
	local TabLayout = 0
	
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
	end
	
	local OldSelectedTab = SelectedTab.Value
	if T["MultipleTabs"] == false then
		SelectedTab:GetPropertyChangedSignal("Value"):Connect(function()
			if OldSelectedTab then
				for _, Tab in pairs(Tabs:GetChildren()) do
					if Tab.Name == OldSelectedTab.Name then
						Tab.Visible = false
						Tab.IsOpened.Value = false
					end
				end
			end

			if SelectedTab.Value then
				for _, Tab in pairs(Tabs:GetChildren()) do
					if Tab.Name == SelectedTab.Value.Name then
						if T["ResetTabPosition"] == true then Tab.Position = UDim2.new(0.5, 0, 0.5, 0) end
						Tab.Visible = true
						Tab.IsOpened.Value = true
					end
				end
			end

			OldSelectedTab = SelectedTab.Value
		end)
	else
		TabSelector.MultipleTabs.Value = true
	end
	
	TabSelector.ClosePosition.Value = T["ClosePosition"]
	
	function WindowItem:CreateTab(Name)
		local TabItem = {}
		local TabItemLayout = 0
		local RandomTabName =  "_" .. math.random(1000000000000, 9999999999999)
		
		local Tab = Templates.TabTemplate:Clone()
		Tab.Parent = Tabs
		Tab.Topbar.Label.Text = Name
		Tab.Visible = false
		Tab.Name = Name .. RandomTabName

		local TabButton = Templates.TabButtonTemplate:Clone()
		TabButton.Parent = TabContainer
		TabButton.Label.Text = Name
		TabButton.Name = Name .. RandomTabName
		TabButton.LayoutOrder = TabLayout; TabLayout = TabLayout + 1
		TabButton.Size = UDim2.new(0, TabButton.Label.TextBounds.X + 8, 1, 0)
		
		if T["MultipleTabs"] == true then
			TabButton.ClickPart.MouseButton1Click:Connect(function()
				TabButton.IsOpened.Value = not TabButton.IsOpened.Value
				if TabButton.IsOpened.Value == true then
					if Tab.Position == UDim2.new(0.5, 0, 0.5, 0) or T["ResetTabPosition"] == true then
						Tab.Position = UDim2.new(0.5, math.random(-20, 20), 0.5, math.random(-20, 20))
					end
					Tab.Visible = true
					TabButton.IsOpened.Value = true
				else
					Tab.Visible = false
					TabButton.IsOpened.Value = false
				end
			end)
		end
		
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

			return T
		end

		function TabItem:CreateToggle(T)
			T["Name"] = T["Name"] or "Unnamed"
			T["Value"] = T["Value"] or false
			T["Callback"] = T["Callback"] or function(...) end

			local ToggleItem = T

			local Toggle = Templates.ToggleTemplate:Clone()
			Toggle.Parent = Tab.Container
			Toggle.Name = "Toggle"
			Toggle.LayoutOrder = TabItemLayout; TabItemLayout = TabItemLayout + 1
			Toggle.Title.Text = T["Name"]
			Toggle.IsEnabled.Value = T["Value"]

			Toggle.ClickPart.MouseButton1Click:Connect(function() 
				Toggle.IsEnabled.Value = (not Toggle.IsEnabled.Value)
				ToggleItem.Value = Toggle.IsEnabled.Value
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

			local Slider = Templates.SliderTemplate:Clone()
			Slider.Parent = Tab.Container
			Slider.Name = "Slider"
			Slider.LayoutOrder = TabItemLayout; TabItemLayout = TabItemLayout + 1
			Slider.Title.Text = T["Name"]
			Slider.MinValue.Value = T["Min"]
			Slider.MaxValue.Value = T["Max"]
			Slider.Slider.Progression.Size = UDim2.new((T["Default"] - T["Min"]) / (T["Max"] - T["Min"]), 0, 1, 0)
			Slider.TextBox.Text = T["Default"]

			if T["Callback"] ~= nil then
				local OldSliderValue = ""
				Slider.TextBox:GetPropertyChangedSignal("Text"):Connect(function()task.wait(); if OldSliderValue ~= Slider.TextBox.Text then T["Callback"](Slider.TextBox.Text); OldSliderValue = Slider.TextBox.Text end end)
			end
		
			SliderItem["Value"] = Slider.TextBox.Text
			Slider.TextBox:GetPropertyChangedSignal("Text"):Connect(function() SliderItem["Value"] = Slider.TextBox.Text end)

			function SliderItem:Set(NewValue)
				Slider.TextBox.Text = tostring(tonumber(NewValue))
			end

			return SliderItem
		end

		function TabItem:CreateDropdown(T)
			T["Name"] = T["Name"] or "Unnamed"
			T["Items"] = T["Items"] or {}
			T["Callback"] = T["Callback"] or nil
			T["Multiple"] = T["Multiple"] or false

			local DropdownItem = T

			local Dropdown = Templates.DropdownTemplate:Clone()
			Dropdown.Parent = Tab.Container
			Dropdown.Name = "Dropdown"
			Dropdown.LayoutOrder = TabItemLayout; TabItemLayout = TabItemLayout + 1
			Dropdown.Title.Text = T["Name"]

			local EntryLayout, ActivatedButton, MultipleButton = 0, nil, {}

			for _, Item in pairs(T["Items"]) do
				local DropdownEntry = Templates.DropdownEntryTemplate:Clone()
				DropdownEntry.Parent = Dropdown.Options
				DropdownEntry.Name = "DropdownEntry"
				DropdownEntry.LayoutOrder = EntryLayout; EntryLayout = EntryLayout + 1
				DropdownEntry.Label.Text = Item

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
			T["Type"] = T["Type"] or "string" -- string, int
			T["ClearOnFocus"] = T["ClearOnFocus"] or false
			T["PlaceholderText"] = T["PlaceholderText"] or ""
			T["Callback"] = T["Callback"] or nil

			local InputItem = T

			local Input = Templates.InputTemplate:Clone()
			Input.Parent = Tab.Container
			Input.Name = "Input"
			Input.LayoutOrder = TabItemLayout; TabItemLayout = TabItemLayout + 1
			Input.Title.Text = T["Name"]
			Input.TextBox.PlaceholderText = string.sub(T["PlaceholderText"], 0, 35)
			
			if Input.TextBox.TextBounds.X > 40 then
				if string.len(Input.TextBox.Text) <= 35 then
					Input.TextBox.Size = UDim2.new(0, Input.TextBox.TextBounds.X + 4, 0, 20)
				end
			end
			
			Input.Title.Size = UDim2.new(1, -20 - Input.TextBox.AbsoluteSize.X, 1, -10)
			
			if table.find({"string", "int"}, T["Type"]) ~= nil then
				Input.ValueType.Value = T["Type"]
			end

			if T["Callback"] ~= nil then
				local OldInputValue = ""
				Input.TextBox:GetPropertyChangedSignal("Text"):Connect(function()task.wait(); if OldInputValue ~= Input.TextBox.Text then T["Callback"](Input.TextBox.Text); OldInputValue = Input.TextBox.Text end end)
			end

			InputItem["Value"] = Input.TextBox.Text
			Input.TextBox:GetPropertyChangedSignal("Text"):Connect(function() InputItem["Value"] = Input.TextBox.Text end)
			
			--[[
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
