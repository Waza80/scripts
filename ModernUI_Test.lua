local Lib = gg

local Win = Lib:CreateWindow({Rainbow = true, ResetTabPosition = false, MultipleTabs = true, ClosePosition = "center"})

Win:CreateTab("Main")
Win:CreateTab("Test")
local U = Win:CreateTab("Farm")
	
--[[
for i = 1, 100 do
	Win:CreateTab("Test")
end
]]
	
U:CreateSection("Test1")

U:CreateButton({
	Name = "Print \"hi\" into console",
	Callback = function()
		print("hi")
	end,
})

local C = U:CreateLabel("Hello!")
task.spawn(function()
	task.wait(10)
	C:Set("Hello! (10s)")
end)

local L = U:CreateToggle({
	Name = "Print Toggle Status",
	Value = false,
	Callback = function(Value)
		print("Toggle Value is", Value)
	end,
})

U:CreateButton({
	Name = "Set false with button",
	Callback = function()
		L:Set(not L.Value)
	end,
})

U:CreateSection("Test2")

local S = U:CreateSlider({
	Name = "Change Value",
	Min = 0,
	Max = 10000000000,
	Default = 35,
	Callback = function(Value)
		print("Slider set to", Value)
	end
})

U:CreateButton({
	Name = "Show Value",
	Callback = function() print("Slider's value is", S.Value) end
})

U:CreateButton({
	Name = "Reset Value",
	Callback = function()
		S:Set(S.Default)
	end,
})

U:CreateSection("Test3")

local Q = U:CreateDropdown({
	Name = "Choose Random String",
	Multiple = true,
	Items = {
		HttpService:GenerateGUID(false),
		HttpService:GenerateGUID(false),
		HttpService:GenerateGUID(false),
		HttpService:GenerateGUID(false),
		HttpService:GenerateGUID(false),
		HttpService:GenerateGUID(false)
	},
	Callback = function(Chosen)
		if type(Chosen) == "string" then
			print("Chosen String (1) :", Chosen)
		else
			print("Chosen Strings (Multiple) :", unpack(Chosen))
		end
	end,
})

U:CreateButton({
	Name = "Refresh Options",
	Callback = function()
		Q:Set({
			HttpService:GenerateGUID(false),
			HttpService:GenerateGUID(false),
			HttpService:GenerateGUID(false),
			HttpService:GenerateGUID(false),
			HttpService:GenerateGUID(false),
			HttpService:GenerateGUID(false)
		}, true)
	end,
})

U:CreateButton({
	Name = "Print Value",
	Callback = function()
		if type(Q.Value) == string then
			print("Dropdown Value:", Q.Value)
		else
			print("Dropdown Values:", unpack(Q.Value))
		end
	end,
})

U:CreateSection("Test4")

local Le = U:CreateInput({
	Name = "Change Text (Test Auto Truncate Method Omg Very Good)",
	ClearOnFocus = true,
	Type = "string",
	PlaceholderText = "Enter your epix sex value...",
	Callback = function(Value)
		print("Input's value is", Value)
	end,
})
