--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 141 | Scripts: 0 | Modules: 0
local G2L = {};
local MAIN_GUI = function()
	local CoreGui = game:GetService("CoreGui")
	local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
	local status, result = pcall(function() return ((gethui and gethui()) or CoreGui:FindFirstChild("RobloxGui") or CoreGui) end)
	if status then return result end
	return PlayerGui
end

-- StarterGui.AAA
G2L["1"] = Instance.new("ScreenGui", MAIN_GUI());
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.AAA.Templates
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["Visible"] = false;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[Templates]];

-- StarterGui.AAA.Templates.TabButtonTemplate
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["Size"] = UDim2.new(0, 20, 1, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Name"] = [[TabButtonTemplate]];
G2L["3"]["BackgroundTransparency"] = 1;

-- StarterGui.AAA.Templates.TabButtonTemplate.UICorner
G2L["4"] = Instance.new("UICorner", G2L["3"]);
G2L["4"]["CornerRadius"] = UDim.new(11, 0);

-- StarterGui.AAA.Templates.TabButtonTemplate.Label
G2L["5"] = Instance.new("TextLabel", G2L["3"]);
G2L["5"]["ZIndex"] = 2;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["TextSize"] = 16;
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5"]["MaxVisibleGraphemes"] = 30;
G2L["5"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[Unnamed]];
G2L["5"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["5"]["Name"] = [[Label]];
G2L["5"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.AAA.Templates.TabButtonTemplate.ClickPart
G2L["6"] = Instance.new("TextButton", G2L["3"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 14;
G2L["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Name"] = [[ClickPart]];
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[]];

-- StarterGui.AAA.Templates.TabButtonTemplate.IsOpened
G2L["7"] = Instance.new("BoolValue", G2L["3"]);
G2L["7"]["Name"] = [[IsOpened]];

-- StarterGui.AAA.Templates.ToggleTemplate
G2L["8"] = Instance.new("Frame", G2L["2"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["8"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Name"] = [[ToggleTemplate]];

-- StarterGui.AAA.Templates.ToggleTemplate.UICorner
G2L["9"] = Instance.new("UICorner", G2L["8"]);
G2L["9"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.ToggleTemplate.ClickPart
G2L["a"] = Instance.new("TextButton", G2L["8"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextSize"] = 14;
G2L["a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Name"] = [[ClickPart]];
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[]];

-- StarterGui.AAA.Templates.ToggleTemplate.Title
G2L["b"] = Instance.new("TextLabel", G2L["8"]);
G2L["b"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["TextSize"] = 14;
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["b"]["Size"] = UDim2.new(1, -65, 1, -10);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[Unnamed]];
G2L["b"]["Name"] = [[Title]];
G2L["b"]["Position"] = UDim2.new(0, 5, 0.5, 0);

-- StarterGui.AAA.Templates.ToggleTemplate.Toggle
G2L["c"] = Instance.new("Frame", G2L["8"]);
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["c"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["c"]["Size"] = UDim2.new(0, 40, 1, -10);
G2L["c"]["Position"] = UDim2.new(1, -5, 0.5, 0);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Name"] = [[Toggle]];

-- StarterGui.AAA.Templates.ToggleTemplate.Toggle.UIStroke
G2L["d"] = Instance.new("UIStroke", G2L["c"]);
G2L["d"]["Color"] = Color3.fromRGB(170, 170, 170);

-- StarterGui.AAA.Templates.ToggleTemplate.Toggle.UICorner
G2L["e"] = Instance.new("UICorner", G2L["c"]);
G2L["e"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.SliderTemplate
G2L["f"] = Instance.new("Frame", G2L["2"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["f"]["Size"] = UDim2.new(1, -10, 0, 60);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Name"] = [[SliderTemplate]];

-- StarterGui.AAA.Templates.SliderTemplate.UICorner
G2L["10"] = Instance.new("UICorner", G2L["f"]);
G2L["10"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.SliderTemplate.Title
G2L["11"] = Instance.new("TextLabel", G2L["f"]);
G2L["11"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["TextSize"] = 14;
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Size"] = UDim2.new(1, -100, 0, 20);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Text"] = [[Unnamed]];
G2L["11"]["Name"] = [[Title]];
G2L["11"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.AAA.Templates.SliderTemplate.Slider
G2L["12"] = Instance.new("Frame", G2L["f"]);
G2L["12"]["Active"] = true;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["12"]["Size"] = UDim2.new(1, -20, 0, 5);
G2L["12"]["Position"] = UDim2.new(0.5, 0, 0, 40);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Name"] = [[Slider]];

-- StarterGui.AAA.Templates.SliderTemplate.Slider.UICorner
G2L["13"] = Instance.new("UICorner", G2L["12"]);
G2L["13"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.AAA.Templates.SliderTemplate.Slider.Progression
G2L["14"] = Instance.new("Frame", G2L["12"]);
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Name"] = [[Progression]];

-- StarterGui.AAA.Templates.SliderTemplate.Slider.Progression.Cursor
G2L["15"] = Instance.new("Frame", G2L["14"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["15"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["15"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Name"] = [[Cursor]];

-- StarterGui.AAA.Templates.SliderTemplate.Slider.Progression.Cursor.UICorner
G2L["16"] = Instance.new("UICorner", G2L["15"]);
G2L["16"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.AAA.Templates.SliderTemplate.Slider.Progression.UICorner
G2L["17"] = Instance.new("UICorner", G2L["14"]);
G2L["17"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.AAA.Templates.SliderTemplate.TextBox
G2L["18"] = Instance.new("TextBox", G2L["f"]);
G2L["18"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextSize"] = 14;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["18"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["18"]["MaxVisibleGraphemes"] = 14;
G2L["18"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["18"]["ClearTextOnFocus"] = false;
G2L["18"]["Size"] = UDim2.new(0, 40, 0, 20);
G2L["18"]["Position"] = UDim2.new(1, -5, 0, 5);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[0]];

-- StarterGui.AAA.Templates.SliderTemplate.TextBox.UICorner
G2L["19"] = Instance.new("UICorner", G2L["18"]);
G2L["19"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.SliderTemplate.TextBox.UIStroke
G2L["1a"] = Instance.new("UIStroke", G2L["18"]);
G2L["1a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["1a"]["Color"] = Color3.fromRGB(170, 170, 170);

-- StarterGui.AAA.Templates.SliderTemplate.Precision
G2L["1b"] = Instance.new("Frame", G2L["f"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["1b"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["1b"]["Size"] = UDim2.new(0, 40, 0, 20);
G2L["1b"]["Position"] = UDim2.new(1, -50, 0, 5);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Name"] = [[Precision]];

-- StarterGui.AAA.Templates.SliderTemplate.Precision.UICorner
G2L["1c"] = Instance.new("UICorner", G2L["1b"]);
G2L["1c"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.SliderTemplate.Precision.UIStroke
G2L["1d"] = Instance.new("UIStroke", G2L["1b"]);
G2L["1d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["1d"]["Color"] = Color3.fromRGB(170, 170, 170);

-- StarterGui.AAA.Templates.SliderTemplate.Precision.Line
G2L["1e"] = Instance.new("Frame", G2L["1b"]);
G2L["1e"]["ZIndex"] = 2;
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(170, 170, 170);
G2L["1e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1e"]["Size"] = UDim2.new(0, 2, 1, 0);
G2L["1e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Name"] = [[Line]];

-- StarterGui.AAA.Templates.SliderTemplate.Precision.Plus
G2L["1f"] = Instance.new("TextButton", G2L["1b"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["TextSize"] = 16;
G2L["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1f"]["Size"] = UDim2.new(0.5, -1, 1, 0);
G2L["1f"]["Name"] = [[Plus]];
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Text"] = [[+]];
G2L["1f"]["Position"] = UDim2.new(0.75, 1, 0.5, 0);

-- StarterGui.AAA.Templates.SliderTemplate.Precision.Plus.UICorner
G2L["20"] = Instance.new("UICorner", G2L["1f"]);
G2L["20"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.SliderTemplate.Precision.Minus
G2L["21"] = Instance.new("TextButton", G2L["1b"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["TextSize"] = 16;
G2L["21"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["21"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["21"]["Size"] = UDim2.new(0.5, -1, 1, 0);
G2L["21"]["Name"] = [[Minus]];
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Text"] = [[-]];
G2L["21"]["Position"] = UDim2.new(0.25, 0, 0.5, 0);

-- StarterGui.AAA.Templates.SliderTemplate.Precision.Minus.UICorner
G2L["22"] = Instance.new("UICorner", G2L["21"]);
G2L["22"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.SectionTemplate
G2L["23"] = Instance.new("Frame", G2L["2"]);
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Name"] = [[SectionTemplate]];
G2L["23"]["BackgroundTransparency"] = 1;

-- StarterGui.AAA.Templates.SectionTemplate.Label
G2L["24"] = Instance.new("TextLabel", G2L["23"]);
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["24"]["TextYAlignment"] = Enum.TextYAlignment.Bottom;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["TextSize"] = 16;
G2L["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["BackgroundTransparency"] = 1;
G2L["24"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["24"]["Size"] = UDim2.new(1, -8, 1, 0);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[Unnamed]];
G2L["24"]["Name"] = [[Label]];
G2L["24"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.AAA.Templates.ParagraphTemplate
G2L["25"] = Instance.new("Frame", G2L["2"]);
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["25"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["25"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Name"] = [[ParagraphTemplate]];

-- StarterGui.AAA.Templates.ParagraphTemplate.UICorner
G2L["26"] = Instance.new("UICorner", G2L["25"]);
G2L["26"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.ParagraphTemplate.Title
G2L["27"] = Instance.new("TextLabel", G2L["25"]);
G2L["27"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["TextSize"] = 14;
G2L["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["27"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["BackgroundTransparency"] = 1;
G2L["27"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Text"] = [[Unnamed]];
G2L["27"]["Name"] = [[Title]];
G2L["27"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.AAA.Templates.ParagraphTemplate.Description
G2L["28"] = Instance.new("TextLabel", G2L["25"]);
G2L["28"]["TextWrapped"] = true;
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["28"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28"]["TextSize"] = 12;
G2L["28"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["28"]["TextColor3"] = Color3.fromRGB(146, 146, 146);
G2L["28"]["BackgroundTransparency"] = 1;
G2L["28"]["Size"] = UDim2.new(1, -10, 0, 12);
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["Text"] = [[Unnamed]];
G2L["28"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["28"]["Name"] = [[Description]];
G2L["28"]["Position"] = UDim2.new(0, 5, 0, 25);

-- StarterGui.AAA.Templates.LabelTemplate
G2L["29"] = Instance.new("Frame", G2L["2"]);
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["29"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Name"] = [[LabelTemplate]];

-- StarterGui.AAA.Templates.LabelTemplate.UICorner
G2L["2a"] = Instance.new("UICorner", G2L["29"]);
G2L["2a"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.LabelTemplate.Title
G2L["2b"] = Instance.new("TextLabel", G2L["29"]);
G2L["2b"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["TextSize"] = 14;
G2L["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["BackgroundTransparency"] = 1;
G2L["2b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2b"]["Size"] = UDim2.new(1, -10, 1, -10);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["Text"] = [[Unnamed]];
G2L["2b"]["Name"] = [[Title]];
G2L["2b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.AAA.Templates.KeyTemplate
G2L["2c"] = Instance.new("Frame", G2L["2"]);
G2L["2c"]["Visible"] = false;
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["2c"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Name"] = [[KeyTemplate]];

-- StarterGui.AAA.Templates.KeyTemplate.Title
G2L["2d"] = Instance.new("TextLabel", G2L["2c"]);
G2L["2d"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["TextSize"] = 14;
G2L["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["BackgroundTransparency"] = 1;
G2L["2d"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["2d"]["Size"] = UDim2.new(1, -65, 1, -10);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["Text"] = [[Unnamed]];
G2L["2d"]["Name"] = [[Title]];
G2L["2d"]["Position"] = UDim2.new(0, 5, 0.5, 0);

-- StarterGui.AAA.Templates.KeyTemplate.UICorner
G2L["2e"] = Instance.new("UICorner", G2L["2c"]);
G2L["2e"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.KeyTemplate.KeyIndicator
G2L["2f"] = Instance.new("TextLabel", G2L["2c"]);
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["2f"]["TextSize"] = 14;
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["2f"]["Size"] = UDim2.new(0, 20, 1, -10);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["Text"] = [[No Key]];
G2L["2f"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["2f"]["Name"] = [[KeyIndicator]];
G2L["2f"]["Position"] = UDim2.new(1, -5, 0.5, 0);

-- StarterGui.AAA.Templates.KeyTemplate.KeyIndicator.UIStroke
G2L["30"] = Instance.new("UIStroke", G2L["2f"]);
G2L["30"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["30"]["Color"] = Color3.fromRGB(170, 170, 170);

-- StarterGui.AAA.Templates.KeyTemplate.KeyIndicator.UICorner
G2L["31"] = Instance.new("UICorner", G2L["2f"]);
G2L["31"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.KeyTemplate.ClickPart
G2L["32"] = Instance.new("TextButton", G2L["2c"]);
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["TextSize"] = 14;
G2L["32"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["32"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["32"]["BackgroundTransparency"] = 1;
G2L["32"]["Name"] = [[ClickPart]];
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["Text"] = [[]];

-- StarterGui.AAA.Templates.InputTemplate
G2L["33"] = Instance.new("Frame", G2L["2"]);
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["33"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Name"] = [[InputTemplate]];

-- StarterGui.AAA.Templates.InputTemplate.UICorner
G2L["34"] = Instance.new("UICorner", G2L["33"]);
G2L["34"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.InputTemplate.ClickPart
G2L["35"] = Instance.new("TextButton", G2L["33"]);
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["TextSize"] = 14;
G2L["35"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["35"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["35"]["BackgroundTransparency"] = 1;
G2L["35"]["Name"] = [[ClickPart]];
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Text"] = [[]];

-- StarterGui.AAA.Templates.InputTemplate.Title
G2L["36"] = Instance.new("TextLabel", G2L["33"]);
G2L["36"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["TextSize"] = 14;
G2L["36"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["36"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["BackgroundTransparency"] = 1;
G2L["36"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["36"]["Size"] = UDim2.new(1, -60, 1, -10);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Text"] = [[Unnamed]];
G2L["36"]["Name"] = [[Title]];
G2L["36"]["Position"] = UDim2.new(0, 5, 0.5, 0);

-- StarterGui.AAA.Templates.InputTemplate.TextBox
G2L["37"] = Instance.new("TextBox", G2L["33"]);
G2L["37"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["TextSize"] = 14;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["37"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["37"]["MaxVisibleGraphemes"] = 35;
G2L["37"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["37"]["ClearTextOnFocus"] = false;
G2L["37"]["Size"] = UDim2.new(0, 40, 0, 20);
G2L["37"]["Position"] = UDim2.new(1, -5, 0.5, 0);
G2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["Text"] = [[]];

-- StarterGui.AAA.Templates.InputTemplate.TextBox.UICorner
G2L["38"] = Instance.new("UICorner", G2L["37"]);
G2L["38"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.InputTemplate.TextBox.UIStroke
G2L["39"] = Instance.new("UIStroke", G2L["37"]);
G2L["39"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["39"]["Color"] = Color3.fromRGB(170, 170, 170);

-- StarterGui.AAA.Templates.DropdownTemplate
G2L["3a"] = Instance.new("Frame", G2L["2"]);
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["3a"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Name"] = [[DropdownTemplate]];

-- StarterGui.AAA.Templates.DropdownTemplate.Title
G2L["3b"] = Instance.new("TextLabel", G2L["3a"]);
G2L["3b"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["TextSize"] = 14;
G2L["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["BackgroundTransparency"] = 1;
G2L["3b"]["Size"] = UDim2.new(1, -35, 0, 20);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Text"] = [[Unnamed]];
G2L["3b"]["Name"] = [[Title]];
G2L["3b"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.AAA.Templates.DropdownTemplate.UICorner
G2L["3c"] = Instance.new("UICorner", G2L["3a"]);
G2L["3c"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.DropdownTemplate.ClickPart
G2L["3d"] = Instance.new("TextButton", G2L["3a"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["TextSize"] = 14;
G2L["3d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["3d"]["BackgroundTransparency"] = 1;
G2L["3d"]["Name"] = [[ClickPart]];
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["Text"] = [[]];

-- StarterGui.AAA.Templates.DropdownTemplate.Arrow
G2L["3e"] = Instance.new("ImageLabel", G2L["3a"]);
G2L["3e"]["Active"] = true;
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["3e"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["3e"]["Image"] = [[rbxassetid://13927250831]];
G2L["3e"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["BackgroundTransparency"] = 1;
G2L["3e"]["Rotation"] = 270;
G2L["3e"]["Name"] = [[Arrow]];
G2L["3e"]["Position"] = UDim2.new(1, 0, 0, 0);

-- StarterGui.AAA.Templates.DropdownTemplate.Options
G2L["3f"] = Instance.new("ScrollingFrame", G2L["3a"]);
G2L["3f"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3f"]["Name"] = [[Options]];
G2L["3f"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["3f"]["Size"] = UDim2.new(1, -10, 0, 0);
G2L["3f"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Position"] = UDim2.new(0, 5, 0, 30);
G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["ScrollBarThickness"] = 0;
G2L["3f"]["BackgroundTransparency"] = 1;

-- StarterGui.AAA.Templates.DropdownTemplate.Options.UIListLayout
G2L["40"] = Instance.new("UIListLayout", G2L["3f"]);
G2L["40"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["40"]["Padding"] = UDim.new(0, 2);
G2L["40"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.AAA.Templates.ButtonTemplate
G2L["41"] = Instance.new("Frame", G2L["2"]);
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["41"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["Name"] = [[ButtonTemplate]];

-- StarterGui.AAA.Templates.ButtonTemplate.UICorner
G2L["42"] = Instance.new("UICorner", G2L["41"]);
G2L["42"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.ButtonTemplate.RoundAnimationContainer
G2L["43"] = Instance.new("ScrollingFrame", G2L["41"]);
G2L["43"]["Active"] = true;
G2L["43"]["BorderSizePixel"] = 0;
G2L["43"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["43"]["Name"] = [[RoundAnimationContainer]];
G2L["43"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["43"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["ScrollBarThickness"] = 0;
G2L["43"]["BackgroundTransparency"] = 1;

-- StarterGui.AAA.Templates.ButtonTemplate.RoundAnimationContainer.Circle
G2L["44"] = Instance.new("Frame", G2L["43"]);
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(193, 193, 193);
G2L["44"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["44"]["Size"] = UDim2.new(0, 300, 0, 1000000000);
G2L["44"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["44"]["Name"] = [[Circle]];
G2L["44"]["BackgroundTransparency"] = 1;

-- StarterGui.AAA.Templates.ButtonTemplate.RoundAnimationContainer.Circle.UICorner
G2L["45"] = Instance.new("UICorner", G2L["44"]);
G2L["45"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.AAA.Templates.ButtonTemplate.RoundAnimationContainer.Circle.UIAspectRatioConstraint
G2L["46"] = Instance.new("UIAspectRatioConstraint", G2L["44"]);


-- StarterGui.AAA.Templates.ButtonTemplate.ClickPart
G2L["47"] = Instance.new("TextButton", G2L["41"]);
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["TextSize"] = 14;
G2L["47"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["47"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["47"]["BackgroundTransparency"] = 1;
G2L["47"]["Name"] = [[ClickPart]];
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Text"] = [[]];

-- StarterGui.AAA.Templates.ButtonTemplate.Title
G2L["48"] = Instance.new("TextLabel", G2L["41"]);
G2L["48"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["48"]["BorderSizePixel"] = 0;
G2L["48"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["48"]["TextSize"] = 14;
G2L["48"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["48"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["48"]["BackgroundTransparency"] = 1;
G2L["48"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["48"]["Size"] = UDim2.new(1, -10, 1, -10);
G2L["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["Text"] = [[Unnamed]];
G2L["48"]["Name"] = [[Title]];
G2L["48"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.AAA.Templates.TabTemplate
G2L["49"] = Instance.new("Frame", G2L["2"]);
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 29);
G2L["49"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["49"]["Size"] = UDim2.new(0, 500, 0, 300);
G2L["49"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["Name"] = [[TabTemplate]];

-- StarterGui.AAA.Templates.TabTemplate.UIStroke
G2L["4a"] = Instance.new("UIStroke", G2L["49"]);
G2L["4a"]["Transparency"] = 0.5;
G2L["4a"]["Color"] = Color3.fromRGB(170, 170, 170);

-- StarterGui.AAA.Templates.TabTemplate.UICorner
G2L["4b"] = Instance.new("UICorner", G2L["49"]);
G2L["4b"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.AAA.Templates.TabTemplate.Topbar
G2L["4c"] = Instance.new("Frame", G2L["49"]);
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4c"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["Name"] = [[Topbar]];
G2L["4c"]["BackgroundTransparency"] = 1;

-- StarterGui.AAA.Templates.TabTemplate.Topbar.Label
G2L["4d"] = Instance.new("TextLabel", G2L["4c"]);
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["TextSize"] = 14;
G2L["4d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4d"]["TextColor3"] = Color3.fromRGB(170, 170, 170);
G2L["4d"]["BackgroundTransparency"] = 1;
G2L["4d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4d"]["MaxVisibleGraphemes"] = 30;
G2L["4d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4d"]["Text"] = [[Unnamed]];
G2L["4d"]["Name"] = [[Label]];
G2L["4d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.AAA.Templates.TabTemplate.Topbar.Shadow
G2L["4e"] = Instance.new("Frame", G2L["4c"]);
G2L["4e"]["Visible"] = false;
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4e"]["Size"] = UDim2.new(1, 0, 0, 5);
G2L["4e"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["Name"] = [[Shadow]];

-- StarterGui.AAA.Templates.TabTemplate.Topbar.Shadow.UIGradient
G2L["4f"] = Instance.new("UIGradient", G2L["4e"]);
G2L["4f"]["Rotation"] = 90;
G2L["4f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(25, 25, 29))};

-- StarterGui.AAA.Templates.TabTemplate.Topbar.ClickPart
G2L["50"] = Instance.new("TextButton", G2L["4c"]);
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["TextSize"] = 14;
G2L["50"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["50"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["50"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["50"]["BackgroundTransparency"] = 1;
G2L["50"]["Name"] = [[ClickPart]];
G2L["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["Text"] = [[]];

-- StarterGui.AAA.Templates.TabTemplate.Container
G2L["51"] = Instance.new("ScrollingFrame", G2L["49"]);
G2L["51"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["Name"] = [[Container]];
G2L["51"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["51"]["Size"] = UDim2.new(1, 0, 1, -30);
G2L["51"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["Position"] = UDim2.new(0, 0, 0, 25);
G2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["ScrollBarThickness"] = 0;
G2L["51"]["BackgroundTransparency"] = 1;

-- StarterGui.AAA.Templates.TabTemplate.Container.UIListLayout
G2L["52"] = Instance.new("UIListLayout", G2L["51"]);
G2L["52"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["52"]["Padding"] = UDim.new(0, 5);
G2L["52"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.AAA.Templates.DropdownEntryTemplate
G2L["53"] = Instance.new("Frame", G2L["2"]);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(22, 22, 33);
G2L["53"]["Size"] = UDim2.new(1, -2, 0, 30);
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Name"] = [[DropdownEntryTemplate]];

-- StarterGui.AAA.Templates.DropdownEntryTemplate.UICorner
G2L["54"] = Instance.new("UICorner", G2L["53"]);
G2L["54"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Templates.DropdownEntryTemplate.Label
G2L["55"] = Instance.new("TextLabel", G2L["53"]);
G2L["55"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["TextSize"] = 14;
G2L["55"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["55"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["BackgroundTransparency"] = 1;
G2L["55"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["55"]["Size"] = UDim2.new(1, -10, 1, -10);
G2L["55"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["55"]["Text"] = [[Unnamed]];
G2L["55"]["Name"] = [[Label]];
G2L["55"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.AAA.Templates.DropdownEntryTemplate.ClickPart
G2L["56"] = Instance.new("TextButton", G2L["53"]);
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["TextSize"] = 14;
G2L["56"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["56"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["56"]["BackgroundTransparency"] = 1;
G2L["56"]["Name"] = [[ClickPart]];
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Text"] = [[]];

-- StarterGui.AAA.Templates.DropdownEntryTemplate.IsEnabled
G2L["57"] = Instance.new("BoolValue", G2L["53"]);
G2L["57"]["Name"] = [[IsEnabled]];

-- StarterGui.AAA.Templates.NotificationTemplate
G2L["58"] = Instance.new("Frame", G2L["2"]);
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 29);
G2L["58"]["Size"] = UDim2.new(1, 0, 0, 120);
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["Name"] = [[NotificationTemplate]];

-- StarterGui.AAA.Templates.NotificationTemplate.UIGradient
G2L["59"] = Instance.new("UIGradient", G2L["58"]);
G2L["59"]["Enabled"] = false;
G2L["59"]["Rotation"] = 270;
G2L["59"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- StarterGui.AAA.Templates.NotificationTemplate.UICorner
G2L["5a"] = Instance.new("UICorner", G2L["58"]);
G2L["5a"]["CornerRadius"] = UDim.new(0, 13);

-- StarterGui.AAA.Templates.NotificationTemplate.Title
G2L["5b"] = Instance.new("TextLabel", G2L["58"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5b"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["TextSize"] = 18;
G2L["5b"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["5b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["BackgroundTransparency"] = 1;
G2L["5b"]["Size"] = UDim2.new(0, 81, 0, 18);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Text"] = [[Unnamed]];
G2L["5b"]["Name"] = [[Title]];
G2L["5b"]["Position"] = UDim2.new(0, 10, 0, 10);

-- StarterGui.AAA.Templates.NotificationTemplate.Desc
G2L["5c"] = Instance.new("TextLabel", G2L["58"]);
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5c"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["TextSize"] = 14;
G2L["5c"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5c"]["TextColor3"] = Color3.fromRGB(215, 215, 215);
G2L["5c"]["BackgroundTransparency"] = 1;
G2L["5c"]["Size"] = UDim2.new(1, -20, 1, -45);
G2L["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["Text"] = [[Lorem Ipsum Dolor Sit Amet]];
G2L["5c"]["Name"] = [[Desc]];
G2L["5c"]["Position"] = UDim2.new(0, 10, 0, 30);
G2L["5c"]["TextWrapped"] = true

-- StarterGui.AAA.Templates.NotificationTemplate.Buttons
G2L["5d"] = Instance.new("ScrollingFrame", G2L["58"]);
G2L["5d"]["Active"] = false;
G2L["5d"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["Name"] = [[Buttons]];
G2L["5d"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["5d"]["Size"] = UDim2.new(1, -20, 0, 26);
G2L["5d"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Position"] = UDim2.new(0, 10, 1, -10);
G2L["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["ScrollBarThickness"] = 0;
G2L["5d"]["BackgroundTransparency"] = 1;

-- StarterGui.AAA.Templates.NotificationTemplate.Buttons.UIListLayout
G2L["5e"] = Instance.new("UIListLayout", G2L["5d"]);
G2L["5e"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["5e"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["5e"]["FillDirection"] = Enum.FillDirection.Horizontal;

-- StarterGui.AAA.Templates.NotificationTemplate.Close
G2L["5f"] = Instance.new("ImageButton", G2L["58"]);
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5f"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["5f"]["Image"] = [[rbxassetid://7743878857]];
G2L["5f"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["Name"] = [[Close]];
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["Position"] = UDim2.new(1, -10, 0, 10);

-- StarterGui.AAA.Templates.NotificationButtonTemplate
G2L["60"] = Instance.new("TextButton", G2L["2"]);
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["TextSize"] = 14;
G2L["60"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 29);
G2L["60"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["60"]["Size"] = UDim2.new(0, 50, 1, 0);
G2L["60"]["Name"] = [[NotificationButtonTemplate]];
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Text"] = [[]];

-- StarterGui.AAA.Templates.NotificationButtonTemplate.UIGradient
G2L["61"] = Instance.new("UIGradient", G2L["60"]);
G2L["61"]["Enabled"] = false;
G2L["61"]["Rotation"] = 270;
G2L["61"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- StarterGui.AAA.Templates.NotificationButtonTemplate.UICorner
G2L["62"] = Instance.new("UICorner", G2L["60"]);
G2L["62"]["CornerRadius"] = UDim.new(0, 13);

-- StarterGui.AAA.Templates.NotificationButtonTemplate.Label
G2L["63"] = Instance.new("TextLabel", G2L["60"]);
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["TextSize"] = 14;
G2L["63"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["63"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["BackgroundTransparency"] = 1;
G2L["63"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["Text"] = [[Ok]];
G2L["63"]["Name"] = [[Label]];

-- StarterGui.AAA.TabSelector
G2L["64"] = Instance.new("Frame", G2L["1"]);
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 29);
G2L["64"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["64"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["64"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["64"]["Position"] = UDim2.new(0.5, 0, 0, 5);
G2L["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["Name"] = [[TabSelector]];

-- StarterGui.AAA.TabSelector.Container
G2L["65"] = Instance.new("ScrollingFrame", G2L["64"]);
G2L["65"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["65"]["Name"] = [[Container]];
G2L["65"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["65"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["65"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["65"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["ScrollBarThickness"] = 0;
G2L["65"]["BackgroundTransparency"] = 1;

-- StarterGui.AAA.TabSelector.Container.CloseButton
G2L["66"] = Instance.new("Frame", G2L["65"]);
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(170, 170, 170);
G2L["66"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["66"]["Name"] = [[CloseButton]];
G2L["66"]["LayoutOrder"] = 2;
G2L["66"]["BackgroundTransparency"] = 0.5;

-- StarterGui.AAA.TabSelector.Container.CloseButton.Icon
G2L["67"] = Instance.new("ImageLabel", G2L["66"]);
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["67"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["67"]["Image"] = [[rbxassetid://6031094678]];
G2L["67"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["BackgroundTransparency"] = 1;
G2L["67"]["Name"] = [[Icon]];
G2L["67"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.AAA.TabSelector.Container.CloseButton.ClickPart
G2L["68"] = Instance.new("TextButton", G2L["66"]);
G2L["68"]["BorderSizePixel"] = 0;
G2L["68"]["TextSize"] = 14;
G2L["68"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["68"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["68"]["BackgroundTransparency"] = 1;
G2L["68"]["Name"] = [[ClickPart]];
G2L["68"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["68"]["Text"] = [[]];

-- StarterGui.AAA.TabSelector.Container.CloseButton.UICorner
G2L["69"] = Instance.new("UICorner", G2L["66"]);
G2L["69"]["CornerRadius"] = UDim.new(11, 0);

-- StarterGui.AAA.TabSelector.Container.UIListLayout
G2L["6a"] = Instance.new("UIListLayout", G2L["65"]);
G2L["6a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["6a"]["Padding"] = UDim.new(0, 5);
G2L["6a"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["6a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["6a"]["FillDirection"] = Enum.FillDirection.Horizontal;

-- StarterGui.AAA.TabSelector.Container.Tabs
G2L["6b"] = Instance.new("ScrollingFrame", G2L["65"]);
G2L["6b"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6b"]["Name"] = [[Tabs]];
G2L["6b"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["6b"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["6b"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["ScrollBarThickness"] = 0;
G2L["6b"]["BackgroundTransparency"] = 1;

-- StarterGui.AAA.TabSelector.Container.Tabs.UIListLayout
G2L["6c"] = Instance.new("UIListLayout", G2L["6b"]);
G2L["6c"]["Padding"] = UDim.new(0, 2);
G2L["6c"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["6c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["6c"]["FillDirection"] = Enum.FillDirection.Horizontal;

-- StarterGui.AAA.TabSelector.UIStroke
G2L["6d"] = Instance.new("UIStroke", G2L["64"]);
G2L["6d"]["Transparency"] = 0.5;
G2L["6d"]["Color"] = Color3.fromRGB(170, 170, 170);

-- StarterGui.AAA.TabSelector.UICorner
G2L["6e"] = Instance.new("UICorner", G2L["64"]);
G2L["6e"]["CornerRadius"] = UDim.new(11, 0);

-- StarterGui.AAA.Tabs
G2L["6f"] = Instance.new("Folder", G2L["1"]);
G2L["6f"]["Name"] = [[Tabs]];

-- StarterGui.AAA.ScriptNameHighlight
G2L["70"] = Instance.new("Frame", G2L["1"]);
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 29);
G2L["70"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["70"]["Size"] = UDim2.new(0, 102, 0, 19);
G2L["70"]["Position"] = UDim2.new(0.5, 0, 0, 40);
G2L["70"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["Name"] = [[ScriptNameHighlight]];

-- StarterGui.AAA.ScriptNameHighlight.ScriptName
G2L["71"] = Instance.new("TextLabel", G2L["70"]);
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["TextSize"] = 15;
G2L["71"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["71"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["BackgroundTransparency"] = 1;
G2L["71"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["71"]["Size"] = UDim2.new(0, 94, 0, 15);
G2L["71"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["Text"] = [[Unnamed Library]];
G2L["71"]["Name"] = [[ScriptName]];
G2L["71"]["Position"] = UDim2.new(0.5, 0, 0, 1);

-- StarterGui.AAA.ScriptNameHighlight.UICorner
G2L["72"] = Instance.new("UICorner", G2L["70"]);
G2L["72"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.ScriptNameHighlight.UIStroke
G2L["73"] = Instance.new("UIStroke", G2L["70"]);
G2L["73"]["Color"] = Color3.fromRGB(51, 51, 51);

-- StarterGui.AAA.KeySystem
G2L["74"] = Instance.new("Frame", G2L["1"]);
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 29);
G2L["74"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["74"]["Size"] = UDim2.new(0, 330, 0, 137);
G2L["74"]["Position"] = UDim2.new(0.5, -10, 0.5, 0);
G2L["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["74"]["Name"] = [[KeySystem]];

-- StarterGui.AAA.KeySystem.Title
G2L["75"] = Instance.new("TextLabel", G2L["74"]);
G2L["75"]["BorderSizePixel"] = 0;
G2L["75"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["75"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["75"]["TextSize"] = 20;
G2L["75"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["75"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["75"]["BackgroundTransparency"] = 1;
G2L["75"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["75"]["Size"] = UDim2.new(1, -20, 0, 20);
G2L["75"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["75"]["Text"] = [[Unnamed]];
G2L["75"]["Name"] = [[Title]];
G2L["75"]["Position"] = UDim2.new(0.5, 0, 0, 10);

-- StarterGui.AAA.KeySystem.Desc
G2L["76"] = Instance.new("TextLabel", G2L["74"]);
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["TextSize"] = 14;
G2L["76"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["76"]["TextColor3"] = Color3.fromRGB(146, 146, 146);
G2L["76"]["BackgroundTransparency"] = 1;
G2L["76"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["76"]["Size"] = UDim2.new(1, -20, 0, 14);
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["Text"] = [[Unnamed]];
G2L["76"]["Name"] = [[Desc]];
G2L["76"]["Position"] = UDim2.new(0.5, 0, 0, 32);

-- StarterGui.AAA.KeySystem.FreeVersion
G2L["77"] = Instance.new("TextButton", G2L["74"]);
G2L["77"]["TextStrokeTransparency"] = 0.75;
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["TextSize"] = 14;
G2L["77"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(67, 67, 67);
G2L["77"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["77"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["77"]["Size"] = UDim2.new(1, -20, 0, 30);
G2L["77"]["Name"] = [[FreeVersion]];
G2L["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Text"] = [[Access Free Version]];
G2L["77"]["Position"] = UDim2.new(0.5, 0, 1, -45);

-- StarterGui.AAA.KeySystem.FreeVersion.UICorner
G2L["78"] = Instance.new("UICorner", G2L["77"]);
G2L["78"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.KeySystem.PremiumVersion
G2L["79"] = Instance.new("TextButton", G2L["74"]);
G2L["79"]["TextStrokeTransparency"] = 0.75;
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["TextSize"] = 14;
G2L["79"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(0, 151, 255);
G2L["79"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["79"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["79"]["Size"] = UDim2.new(1, -20, 0, 30);
G2L["79"]["Name"] = [[PremiumVersion]];
G2L["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["Text"] = [[Access Premium Version]];
G2L["79"]["Position"] = UDim2.new(0.5, 0, 1, -10);

-- StarterGui.AAA.KeySystem.PremiumVersion.UICorner
G2L["7a"] = Instance.new("UICorner", G2L["79"]);
G2L["7a"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.KeySystem.UICorner
G2L["7b"] = Instance.new("UICorner", G2L["74"]);
G2L["7b"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.KeySystem.UIGradient
G2L["7c"] = Instance.new("UIGradient", G2L["74"]);
G2L["7c"]["Enabled"] = false;
G2L["7c"]["Rotation"] = 270;
G2L["7c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- StarterGui.AAA.Premium
G2L["7d"] = Instance.new("Frame", G2L["1"]);
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 29);
G2L["7d"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["7d"]["Size"] = UDim2.new(0, 330, 0, 189);
G2L["7d"]["Position"] = UDim2.new(0.5, 10, 0.5, 0);
G2L["7d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7d"]["Name"] = [[Premium]];

-- StarterGui.AAA.Premium.UIGradient
G2L["7e"] = Instance.new("UIGradient", G2L["7d"]);
G2L["7e"]["Enabled"] = false;
G2L["7e"]["Rotation"] = 270;
G2L["7e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- StarterGui.AAA.Premium.UICorner
G2L["7f"] = Instance.new("UICorner", G2L["7d"]);
G2L["7f"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Premium.KeyEntry
G2L["80"] = Instance.new("TextBox", G2L["7d"]);
G2L["80"]["TextStrokeTransparency"] = 0.75;
G2L["80"]["TextColor3"] = Color3.fromRGB(236, 236, 236);
G2L["80"]["BorderSizePixel"] = 0;
G2L["80"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["80"]["TextSize"] = 14;
G2L["80"]["Name"] = [[KeyEntry]];
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(67, 67, 67);
G2L["80"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["80"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["80"]["PlaceholderText"] = [[Enter your Key...]];
G2L["80"]["Size"] = UDim2.new(1, -20, 0, 30);
G2L["80"]["Position"] = UDim2.new(0.5, 0, 1, -45);
G2L["80"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["80"]["Text"] = [[]];

-- StarterGui.AAA.Premium.KeyEntry.UICorner
G2L["81"] = Instance.new("UICorner", G2L["80"]);
G2L["81"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Premium.CopyLink
G2L["82"] = Instance.new("TextButton", G2L["7d"]);
G2L["82"]["TextStrokeTransparency"] = 0.75;
G2L["82"]["BorderSizePixel"] = 0;
G2L["82"]["TextSize"] = 14;
G2L["82"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(0, 156, 255);
G2L["82"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["82"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["82"]["Size"] = UDim2.new(1, -20, 0, 30);
G2L["82"]["Name"] = [[CopyLink]];
G2L["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["Text"] = [[Copy Key Link]];
G2L["82"]["Position"] = UDim2.new(0.5, 0, 1, -10);

-- StarterGui.AAA.Premium.CopyLink.UICorner
G2L["83"] = Instance.new("UICorner", G2L["82"]);
G2L["83"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.Premium.Title
G2L["84"] = Instance.new("TextLabel", G2L["7d"]);
G2L["84"]["BorderSizePixel"] = 0;
G2L["84"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["84"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["84"]["TextSize"] = 20;
G2L["84"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["84"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["84"]["BackgroundTransparency"] = 1;
G2L["84"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["84"]["Size"] = UDim2.new(1, -20, 0, 20);
G2L["84"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["84"]["Text"] = [[Key System]];
G2L["84"]["Name"] = [[Title]];
G2L["84"]["Position"] = UDim2.new(0.5, 0, 0, 10);

-- StarterGui.AAA.Premium.Desc
G2L["85"] = Instance.new("TextLabel", G2L["7d"]);
G2L["85"]["TextWrapped"] = true;
G2L["85"]["BorderSizePixel"] = 0;
G2L["85"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["85"]["TextSize"] = 14;
G2L["85"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["85"]["TextColor3"] = Color3.fromRGB(146, 146, 146);
G2L["85"]["BackgroundTransparency"] = 1;
G2L["85"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["85"]["Size"] = UDim2.new(1, -20, 0, 28);
G2L["85"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["85"]["Text"] = [[Complete the key system in order to access premium features.]];
G2L["85"]["Name"] = [[Desc]];
G2L["85"]["Position"] = UDim2.new(0.5, 0, 0, 32);

-- StarterGui.AAA.Premium.Note
G2L["86"] = Instance.new("TextLabel", G2L["7d"]);
G2L["86"]["TextWrapped"] = true;
G2L["86"]["BorderSizePixel"] = 0;
G2L["86"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["86"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["86"]["TextSize"] = 14;
G2L["86"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["86"]["TextColor3"] = Color3.fromRGB(146, 146, 146);
G2L["86"]["BackgroundTransparency"] = 1;
G2L["86"]["RichText"] = true;
G2L["86"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["86"]["Size"] = UDim2.new(1, -20, 0, 28);
G2L["86"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["86"]["Text"] = [[<font weight='900'>NOTE:</font>
No note given]];
G2L["86"]["Name"] = [[Note]];
G2L["86"]["Position"] = UDim2.new(0.5, 0, 0, 70);

-- StarterGui.AAA.Premium.Close
G2L["87"] = Instance.new("ImageButton", G2L["7d"]);
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["87"]["Image"] = [[rbxassetid://7743878857]];
G2L["87"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["87"]["BackgroundTransparency"] = 1;
G2L["87"]["Name"] = [[Close]];
G2L["87"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["87"]["Position"] = UDim2.new(1, -10, 0, 10);

-- StarterGui.AAA.KeyClose
G2L["88"] = Instance.new("TextButton", G2L["1"]);
G2L["88"]["BorderSizePixel"] = 0;
G2L["88"]["TextSize"] = 14;
G2L["88"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 29);
G2L["88"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["88"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["88"]["Size"] = UDim2.new(0, 100, 0, 30);
G2L["88"]["Name"] = [[KeyClose]];
G2L["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["Text"] = [[]];
G2L["88"]["Position"] = UDim2.new(0.5, 0, 0.5, -106);

-- StarterGui.AAA.KeyClose.UIGradient
G2L["89"] = Instance.new("UIGradient", G2L["88"]);
G2L["89"]["Enabled"] = false;
G2L["89"]["Rotation"] = 270;
G2L["89"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- StarterGui.AAA.KeyClose.UICorner
G2L["8a"] = Instance.new("UICorner", G2L["88"]);
G2L["8a"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.AAA.KeyClose.Title
G2L["8b"] = Instance.new("TextLabel", G2L["88"]);
G2L["8b"]["BorderSizePixel"] = 0;
G2L["8b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8b"]["TextSize"] = 14;
G2L["8b"]["FontFace"] = Font.new([[rbxassetid://11702779517]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["8b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8b"]["BackgroundTransparency"] = 1;
G2L["8b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["8b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8b"]["Text"] = [[Close UI]];
G2L["8b"]["Name"] = [[Title]];

-- StarterGui.AAA.Notifications
G2L["8c"] = Instance.new("ScrollingFrame", G2L["1"]);
G2L["8c"]["Active"] = false;
G2L["8c"]["AutomaticSize"] = Enum.AutomaticSize.Y
G2L["8c"]["BorderSizePixel"] = 0;
G2L["8c"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["8c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8c"]["Name"] = [[Notifications]];
G2L["8c"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["8c"]["Size"] = UDim2.new(0, 250, 0, 0);
G2L["8c"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8c"]["Position"] = UDim2.new(1, -25, 1, -25);
G2L["8c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8c"]["ScrollBarThickness"] = 0;
G2L["8c"]["BackgroundTransparency"] = 1;

-- StarterGui.AAA.Notifications.UIListLayout
G2L["8d"] = Instance.new("UIListLayout", G2L["8c"]);
G2L["8d"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["8d"]["Padding"] = UDim.new(0, 10);
G2L["8d"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
G2L["8d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- Services --

local Players = game:GetService("Players")
local TextService = game:GetService("TextService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

-- Useful Variables --

local LocalPlayer = Players.LocalPlayer
local PlayerMouse = LocalPlayer:GetMouse()
local Camera = workspace.CurrentCamera

local Executor = ((identifyexecutor and identifyexecutor()) or nil)
local writefile = writefile or function(...) end
local readfile = readfile or function(...) end
local isfile = isfile or function(...) end
local setclipboard = setclipboard or function(...) end

local Lib = {}

-- Hiding --

for _, Item in next, G2L["1"]:GetChildren() do
	if Item:IsA("Frame") or Item:IsA("TextButton") then Item.Visible = false end
end

-- Function Setup --

local function httpget(text)
	if Executor then
		return game:HttpGet(text)
	end
	return game:GetService("ReplicatedStorage").Http:InvokeServer(text, {method = 'GET'})
end

local function Discordify(Item: TextLabel)
	if not Item:IsA("TextLabel") then return end
	local Match = Item.RichText; Item.RichText = true

	for match in Item.Text:gmatch("#[a-zA-Z0-9-]+") do
		Match = true
		Item.Text = Item.Text:gsub(table.concat(string.split(match, "-"), "%-"), "<font color='rgb(0, 200, 255)'>" .. match .. "</font>")
	end

	if not Match then
		Item.RichText = false
	end
end

local function setpseudoclipboard(Item, Text, Fill)
	Fill = Fill or false

	local TextFrame = Item:Clone()
	TextFrame:ClearAllChildren()
	TextFrame.Parent = Item
	TextFrame.Active = false
	TextFrame.AnchorPoint = Vector2.new(0, 0)
	TextFrame.Position = UDim2.new(0, 0, 0, 0)
	TextFrame.Size = UDim2.new(1, 0, 1, 0)
	TextFrame.BackgroundTransparency = 1
	if TextFrame["Text"] then TextFrame.Text = "" end

	local TextBox = Instance.new("TextBox", TextFrame)
	TextBox.BackgroundTransparency = 1
	TextBox.ClearTextOnFocus = false
	TextBox.Size = UDim2.new(1, 0, 1, 0)
	TextBox.Text = Text
	TextBox.TextWrapped = true
	if Item["TextColor3"] then TextBox.TextColor3 = Item.TextColor3 else TextBox.TextColor3 = Color3.fromRGB(255, 255, 255) end
	if Item["FontFace"] then TextBox.FontFace = Item.FontFace else TextBox.FontFace = Enum.Font.Montserrat end
	if Item["TextSize"] then TextBox.TextSize = Item.TextSize end
	if Item["TextStrokeTransparency"] then TextBox.TextStrokeTransparency = Item.TextStrokeTransparency end
	if Item["TextStrokeColor3"] then TextBox.TextStrokeColor3 = Item.TextStrokeColor3 end

	if Fill then
		TextFrame.BackgroundTransparency = 0
		if Item:FindFirstChildWhichIsA("UICorner") then
			local UICorner = Instance.new("UICorner", TextFrame)
			UICorner.CornerRadius = Item:FindFirstChildWhichIsA("UICorner").CornerRadius
		end
	end

	TextBox:CaptureFocus()

	TextBox:GetPropertyChangedSignal("Text"):Connect(function()
		if TextBox.Text ~= Text then
			TextBox.Text = Text
		end
	end)

	TextBox.FocusLost:Connect(function()
		TextFrame:Destroy()
	end)
end

local function KickUser()
	LocalPlayer:Kick("You tried bypassing nigger")
end

repeat task.wait() until Camera.ViewportSize.Y > 1

function Lib:CreateWindow(T)
	T["Name"] = T["Name"] or ""
	T["MenuTitle"] = T["MenuTitle"] or "Unnamed"
	T["MenuDesc"] = T["MenuDesc"] or ""
	T["FolderName"] = T["FolderName"] or (T["Name"] ~= "" and T["Name"]) or "Unnamed" -- Your folder's name, defaults to your lib's name
	T["SelectorTopDistance"] = T["SelectorTopDistance"] or 5
	T["Rainbow"] = T["Rainbow"] or false
	if T["ShowCloseButton"] == nil then T["ShowCloseButton"] = true end
	T["MultipleTabs"] = T["MultipleTabs"] or false
	if T["ResetTabPosition"] == nil then T["ResetTabPosition"] = true end
	T["ClosePosition"] = T["ClosePosition"] or "center"

	T["KeySystem"] = T["KeySystem"] or false
	if T["KeySetup"] then
		T["KeySetup"]["Title"] = T["KeySetup"]["Title"] or "Key System"
		T["KeySetup"]["Desc"] = T["KeySetup"]["Desc"] or "Please complete the key system in order to access premium features."
		T["KeySetup"]["Note"] = T["KeySetup"]["Note"] or nil
		T["KeySetup"]["SaveKey"] = T["KeySetup"]["SaveKey"] or false
		T["KeySetup"]["SaveFile"] = T["KeySetup"]["SaveFile"] or nil
		T["KeySetup"]["KeyLink"] = T["KeySetup"]["KeyLink"] or nil
		assert(T["KeySetup"]["Key"] and #T["KeySetup"]["Key"] > 0, "No key provided, Key System will be disabled")
		T["KeySetup"]["IncludeLinks"] = T["KeySetup"]["IncludeLinks"] or false
		T["KeySetup"]["CheckFunc"] = T["KeySetup"]["CheckFunc"] or function(Key)
			for _, key in next, T["KeySetup"]["Key"] do
				if T["KeySetup"]["IncludeLinks"] and (string.find(key:sub(1, 8), "https://") or string.find(key:sub(1, 7), "http://")) then
					local status, result = pcall(function()
						if Key == httpget(key) then
							return true
						end
					end)
					if result == true then
						return true
					end
				else
					if Key == key then
						return true
					end
				end
			end
		end
	else
		T["KeySetup"] = {
			Mandatory = false, -- Whether or not you're obligated to do the key system
			Title = "Key System",
			Desc = "Please complete the key system in order to access premium features.",
			Note = nil, -- The note; can be a way to use the key. Discord channels are highlighted in blue
			SaveKey = true, -- Whether or not to save the key
			SaveFile = nil, -- The file to save the key in. Default: Your hub's name/SavedKey
			KeyLink = nil, -- Whether or not to include a key link, and the associated link
			Key = {"Test"}, -- Keys that will be valid
			IncludeLinks = false, -- Whether or not to request key from links if given
			CheckFunc = function(Key)
				for _, key in next, T["KeySetup"]["Key"] do
					if T["KeySetup"]["IncludeLinks"] and (string.find(key:sub(1, 8), "https://") or string.find(key:sub(1, 7), "http://")) then
						local status, result = pcall(function()
							if Key == httpget(key) then
								return true
							end
						end)
						if result == true then
							return true
						end
					else
						if Key == key then
							return true
						end
					end
				end
			end
		}
	end

	local WindowItem = {}
	local SelectedTab = nil	
	local TabLayout = 0
	local IsDragging = false
	
	pcall(function() makefolder(T["FolderName"]) end)
	
	local Main = G2L["1"]
	
	Main.IgnoreGuiInset = true
	
	function Lib:Destroy()
		Main:Destroy()
	end

	function WindowItem:Destroy()
		Main:Destroy()
	end
	
	local TabSelector = Main.TabSelector
	local ScriptNameHighlight = Main.ScriptNameHighlight
	local Notifications = Main.Notifications

	local KeySystem = Main.KeySystem
	local Premium = Main.Premium
	local KeyClose = Main.KeyClose

	local PremiumOpened = false
	local KeySwitchSpeed = 0.5
	local KeyStatus = false; -- 1: Free / 2: Key

	-- Key System
	if T["KeySystem"] then
		TabSelector.Visible = false
		ScriptNameHighlight.Visible = false

		local KeySystemTitleSize = TextService:GetTextSize(T["MenuTitle"], 20, Enum.Font.Montserrat, Vector2.new(310, math.huge)).Y
		local KeySystemDescSize = TextService:GetTextSize(T["MenuDesc"], 14, Enum.Font.Montserrat, Vector2.new(310, math.huge)).Y
		local MandatoryValue = tonumber((T["KeySetup"]["Mandatory"] and "0") or 35) - 35
		KeySystem.Visible = true
		KeySystem.AnchorPoint = Vector2.new(0.5, 0.5)
		KeySystem.Position = UDim2.new(0.5, 0, 0.5, 0)
		KeySystem.Desc.Position = UDim2.new(0.5, 0, 0, 12 + KeySystemTitleSize)
		KeySystem.Size = UDim2.new(0, 330, 0, 103 + KeySystemTitleSize + KeySystemDescSize + MandatoryValue)
		KeySystem.Title.Size = UDim2.new(1, -20, 0, KeySystemTitleSize)
		KeySystem.Desc.Size = UDim2.new(1, -20, 0, KeySystemDescSize)
		KeySystem.Title.Text = T["MenuTitle"]
		KeySystem.Desc.Text = T["MenuDesc"]
		if T["KeySetup"]["Mandatory"] then 
			KeySystem.FreeVersion.Visible = false
			KeySystem.PremiumVersion.Text = "Access Script [Key System]"
		end

		local KeySetupTitleSize = TextService:GetTextSize(T["KeySetup"]["Title"], 20, Enum.Font.Montserrat, Vector2.new(310, math.huge)).Y
		local KeySetupDescSize = TextService:GetTextSize(T["KeySetup"]["Desc"], 14, Enum.Font.Montserrat, Vector2.new(310, math.huge)).Y
		local KeySetupNoteSize = (T["KeySetup"]["Note"] and TextService:GetTextSize((T["KeySetup"]["Note"] and "NOTE:\n" .. T["KeySetup"]["Note"]) or "", 14, Enum.Font.Montserrat, Vector2.new(310, math.huge)).Y) or -10
		local KeySetupCopySize = (T["KeySetup"]["KeyLink"] and 35) or 0
		Premium.Visible = true
		Premium.Close.Visible = false
		Premium.CopyLink.Visible = (T["KeySetup"]["KeyLink"] and true) or false
		Premium.AnchorPoint = Vector2.new(0, 0.5)
		Premium.Position = UDim2.new(1, 0, 0.5, 0)
		Premium.Desc.Position = UDim2.new(0.5, 0, 0, 12 + KeySetupTitleSize)
		Premium.KeyEntry.Position = UDim2.new(0.5, 0, 1, -((T["KeySetup"]["KeyLink"] and 45) or 10))
		Premium.Size = UDim2.new(0, 330, 0, 78 + KeySetupTitleSize + KeySetupDescSize + KeySetupNoteSize + KeySetupCopySize)
		Premium.Title.Size = UDim2.new(1, -20, 0, KeySetupTitleSize)
		Premium.Desc.Size = UDim2.new(1, -20, 0, KeySetupDescSize)
		Premium.Note.Size = UDim2.new(1, -20, 0, KeySetupNoteSize)
		Premium.Title.Text = T["KeySetup"]["Title"]
		Premium.Desc.Text = T["KeySetup"]["Desc"]
		Premium.Note.Text = (T["KeySetup"]["Note"] and "<font weight='900'>NOTE:</font>\n" .. T["KeySetup"]["Note"]) or ""
		Discordify(Premium.Note)

		KeyClose.Visible = true
		KeyClose.Position = UDim2.new(0.5, 0, 0.5, -(KeySystem.AbsoluteSize.Y / 2) - 10)
		KeyClose.MouseButton1Click:Connect(function() Lib:Destroy() end)

		KeySystem.FreeVersion.MouseButton1Click:Connect(function()
			KeyStatus = 1
		end)

		KeySystem.PremiumVersion.MouseButton1Click:Connect(function()
			PremiumOpened = not PremiumOpened
			if PremiumOpened then
				TweenService:Create(KeySystem, TweenInfo.new(KeySwitchSpeed, Enum.EasingStyle.Quad), {AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(0.5, -10, 0.5, 0)}):Play()
				TweenService:Create(Premium, TweenInfo.new(KeySwitchSpeed, Enum.EasingStyle.Quad), {AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0.5, 10, 0.5, 0)}):Play()
				TweenService:Create(KeyClose, TweenInfo.new(KeySwitchSpeed, Enum.EasingStyle.Quad), {Position = UDim2.new(0.5, 0, 0.5, -(math.max(KeySystem.AbsoluteSize.Y, Premium.AbsoluteSize.Y) / 2) - 10)}):Play()
			else
				TweenService:Create(KeySystem, TweenInfo.new(KeySwitchSpeed, Enum.EasingStyle.Quad), {AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
				TweenService:Create(Premium, TweenInfo.new(KeySwitchSpeed, Enum.EasingStyle.Quad), {AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(1, 0, 0.5, 0)}):Play()
				TweenService:Create(KeyClose, TweenInfo.new(KeySwitchSpeed, Enum.EasingStyle.Quad), {Position = UDim2.new(0.5, 0, 0.5, -(KeySystem.AbsoluteSize.Y / 2) - 10)}):Play()
			end
		end)

		if T["KeySetup"]["KeyLink"] then
			Premium.CopyLink.MouseButton1Click:Connect(function()
				if Executor then
					setclipboard(T["KeySetup"]["KeyLink"])
				else
					setpseudoclipboard(Premium.CopyLink, T["KeySetup"]["KeyLink"], true)
				end
			end)
		end

		Premium.KeyEntry.FocusLost:Connect(function()
			if Premium.KeyEntry.Text == "" then return end

			local ValidKey = false
			local KeyAttempt = Premium.KeyEntry.Text

			if T["KeySetup"]["CheckFunc"](KeyAttempt) then
				if T["KeySetup"]["SaveKey"] then
					if T["KeySetup"]["SaveFile"] then
						writefile(T["FolderName"] .. "/" .. T["KeySetup"]["SaveFile"], KeyAttempt)
					else
						writefile(T["FolderName"] .. "/" .. "Key", KeyAttempt)
					end
				end
				KeyStatus = 2
			else
				local OriginalPos = Premium.KeyEntry.Position
				for i = 1, 2 do
					TweenService:Create(Premium.KeyEntry, TweenInfo.new(0.1), {Position = UDim2.new(0.5, OriginalPos.X.Offset + 5, 1, OriginalPos.Y.Offset)}):Play()
					task.wait(0.1)
					TweenService:Create(Premium.KeyEntry, TweenInfo.new(0.1), {Position = UDim2.new(0.5, OriginalPos.X.Offset - 5, 1, OriginalPos.Y.Offset)}):Play()
					task.wait(0.1)
				end
				TweenService:Create(Premium.KeyEntry, TweenInfo.new(0.1), {Position = OriginalPos}):Play()
			end
		end)

		if T["KeySetup"]["SaveKey"] then
			pcall(function()
				local SavedKey = ((T["KeySetup"]["SaveFile"] and readfile(T["FolderName"] .. "/" .. T["KeySetup"]["SaveFile"])) or readfile(T["FolderName"] .. "/" .. "Key"))
				if T["KeySetup"]["CheckFunc"](SavedKey) then
					KeyStatus = 2
				end
			end)
		end

		repeat task.wait() until KeyStatus or WindowItem.KeyStatus

		TweenService:Create(KeySystem, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(0, 0, 0.5, 0)}):Play()
		TweenService:Create(Premium, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(1, 0, 0.5, 0)}):Play()
		TweenService:Create(KeyClose, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {AnchorPoint = Vector2.new(0.5, 1), Position = UDim2.new(0.5, 0, 0, 0)}):Play()	

		if KeyStatus == 1 then
			KeySystem:Destroy()
			KeyClose:Destroy()
		else
			KeySystem:Destroy()
			KeyClose:Destroy()
			Premium:Destroy()
		end

		if WindowItem.KeyStatus then
			return
		end
	else
		KeySystem:Destroy()
		KeyClose:Destroy()
		Premium:Destroy()
	end

	if not KeyStatus and T["KeySystem"] then
		return
	end
	WindowItem.KeyStatus = KeyStatus

	for _, Item in pairs(Main:GetDescendants()) do
		if Item:IsA("UIGradient") then
			Item.Enabled = T["UseGradient"]
		end
	end

	TabSelector.Visible = true
	ScriptNameHighlight.Visible = true

	local Tabs = Main.Tabs
	local ScriptNameHighlight = Main.ScriptNameHighlight
	local TabSelector = Main.TabSelector
	local TabContainer = TabSelector.Container.Tabs
	local SelectedTabButton = nil
	local Templates = Main.Templates

	if T["Name"] == "" then
		ScriptNameHighlight.Visible = false
	else
		ScriptNameHighlight.ScriptName.Text = T["Name"]
		ScriptNameHighlight.Size = UDim2.new(0, ScriptNameHighlight.ScriptName.TextBounds.X + 8, 0, ScriptNameHighlight.ScriptName.TextBounds.Y + 4)
		ScriptNameHighlight.ScriptName.Size = 	UDim2.new(0, ScriptNameHighlight.ScriptName.TextBounds.X + 8, 0, ScriptNameHighlight.ScriptName.TextBounds.Y)
		ScriptNameHighlight.ScriptName.TextTruncate = Enum.TextTruncate.AtEnd	
	end

	TabContainer:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(function()
		-- if script.Parent.AbsoluteCanvasSize.X == 0 then script.Parent.Visible = false; return else script.Parent.Visible = true end
		if Camera.ViewportSize.X - 50 > TabContainer.AbsoluteCanvasSize.X then
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
					if T["MultipleTabs"] == false then
						Tab.Position = UDim2.new(0.5, 0, 0.5, 0)
					end
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

	if T["SelectorTopDistance"] < Camera.ViewportSize.Y / 2 then
		ScriptNameHighlight.Position = UDim2.new(0.5, 0, 0, T["SelectorTopDistance"] + 35)
	else
		ScriptNameHighlight.Position = UDim2.new(0.5, 0, 0, T["SelectorTopDistance"] - 5)
		ScriptNameHighlight.AnchorPoint = Vector2.new(0.5, 1)
	end

	local OldWindowSize = Camera.ViewportSize

	Camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
		if T["SelectorTopDistance"] > Camera.ViewportSize.Y / 2 then
			local NewSize = T["SelectorTopDistance"] + (Camera.ViewportSize.Y - OldWindowSize.Y)
			TabSelector.Position = UDim2.new(0.5, 0, 0, NewSize)
			ScriptNameHighlight.Position = UDim2.new(0.5, 0, 0, NewSize - 5)
		end
	end)

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
		local OldTextBounds = nil
		local CloseButtonClosed = false
		local CloseButtonOnCooldown = false

		TabSelector.Container.CloseButton.ClickPart.MouseButton1Click:Connect(function()
			if CloseButtonOnCooldown then return end
			CloseButtonClosed = not CloseButtonClosed
			if CloseButtonClosed == true then
				if T["ClosePosition"] == "center" then
					TweenService:Create(TabSelector, TweenInfo.new(0.2), {AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, TabSelector.Position.Y.Offset)}):Play()
				elseif T["ClosePosition"] == "left" then
					TweenService:Create(TabSelector, TweenInfo.new(0.2), {AnchorPoint = Vector2.new(0, 0), Position = UDim2.new(0, 25, 0, TabSelector.Position.Y.Offset)}):Play()
				elseif T["ClosePosition"] == "right" then
					TweenService:Create(TabSelector, TweenInfo.new(0.2), {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -25, 0, TabSelector.Position.Y.Offset)}):Play()
				end

				TweenService:Create(TabContainer, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 30)}):Play()
				TweenService:Create(TabSelector.Container.UIListLayout, TweenInfo.new(0.2), {Padding = UDim.new(0, 0)}):Play()
				TweenService:Create(TabSelector.Container.CloseButton.Icon, TweenInfo.new(0.2), {Rotation = 45}):Play()

				if T["Name"] ~= "" then
					TweenService:Create(ScriptNameHighlight, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {Size = UDim2.new(0, 0, 0, ScriptNameHighlight.ScriptName.TextBounds.Y + 4)}):Play()
					TweenService:Create(ScriptNameHighlight.ScriptName, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {Size = UDim2.new(0, 0, 0, ScriptNameHighlight.ScriptName.TextBounds.Y)}):Play()
					TweenService:Create(ScriptNameHighlight.UIStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {Thickness = 0}):Play()
					OldTextBounds = ScriptNameHighlight.ScriptName.TextBounds
				end
			elseif CloseButtonClosed == false then
				if Camera.ViewportSize.X - 50 > TabContainer.AbsoluteCanvasSize.X then
					TweenService:Create(TabContainer, TweenInfo.new(0.2), {Size = UDim2.new(0, TabContainer.AbsoluteCanvasSize.X, 0, 30)}):Play()

				else
					TweenService:Create(TabContainer, TweenInfo.new(0.2), {Size = UDim2.new(0, Camera.ViewportSize.X - 50, 0, 30)}):Play()

				end

				TweenService:Create(TabSelector, TweenInfo.new(0.2), {AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, TabSelector.Position.Y.Offset)}):Play()
				TweenService:Create(TabSelector.Container.UIListLayout, TweenInfo.new(0.2), {Padding = UDim.new(0, 5)}):Play()
				TweenService:Create(TabSelector.Container.CloseButton.Icon, TweenInfo.new(0.2), {Rotation = 0}):Play()

				if T["Name"] ~= "" then
					TweenService:Create(ScriptNameHighlight, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {Size = UDim2.new(0, OldTextBounds.X + 8, 0, OldTextBounds.Y + 4)}):Play()
					TweenService:Create(ScriptNameHighlight.ScriptName, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {Size = UDim2.new(0, OldTextBounds.X, 0, OldTextBounds.Y)}):Play()
					TweenService:Create(ScriptNameHighlight.UIStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {Thickness = 1}):Play()
				end
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

		local Tab = Templates.TabTemplate:Clone()
		Tab.Parent = Tabs
		Tab.Topbar.Label.Text = Name
		Tab.Visible = false
		Tab.Name = Name .. "_" .. math.random(1000000000000, 9999999999999)

		Tab.Topbar.ClickPart.InputBegan:Connect(function(Input)
			if IsDragging then return end
			if (Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch) then
				IsDragging = true
				IsTabDragging = true
				TabDragStart = Input.Position
				TabDragPos = Tab.Position

				for _, Tab in pairs(Tabs:GetChildren()) do
					Tab.ZIndex = 1
				end
				Tab.ZIndex = 2

				local InputConnection = Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						IsDragging = false
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

		task.wait()
		local TabButton = Templates.TabButtonTemplate:Clone()
		TabButton.Parent = TabContainer
		TabButton.Label.Text = Name
		TabButton.Name = Name .. "_" .. math.random(1000000000000, 9999999999999)
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

			if ToggleIsEnabled == true then
				TweenService:Create(Toggle.Toggle, TweenInfo.new(0.35), {BackgroundColor3 = Color3.fromRGB(0, 192, 114)}):Play()
			else
				TweenService:Create(Toggle.Toggle, TweenInfo.new(0.35), {BackgroundColor3 = Color3.fromRGB(33, 33, 33)}):Play()
			end
			T["Callback"](ToggleIsEnabled)

			Toggle.ClickPart.MouseButton1Click:Connect(function() 
				ToggleIsEnabled = not ToggleIsEnabled
				ToggleItem.Value = ToggleIsEnabled

				if ToggleIsEnabled == true then
					TweenService:Create(Toggle.Toggle, TweenInfo.new(0.35), {BackgroundColor3 = Color3.fromRGB(0, 192, 114)}):Play()
				else
					TweenService:Create(Toggle.Toggle, TweenInfo.new(0.35), {BackgroundColor3 = Color3.fromRGB(33, 33, 33)}):Play()
				end

				T["Callback"](ToggleIsEnabled)
			end)

			function ToggleItem:Set(Status)
				ToggleIsEnabled = Status
				ToggleItem.Value = Status

				if ToggleIsEnabled == true then
					TweenService:Create(Toggle.Toggle, TweenInfo.new(0.35), {BackgroundColor3 = Color3.fromRGB(0, 192, 114)}):Play()
				else
					TweenService:Create(Toggle.Toggle, TweenInfo.new(0.35), {BackgroundColor3 = Color3.fromRGB(33, 33, 33)}):Play()
				end

				T["Callback"](Status)
			end

			return ToggleItem
		end

		function TabItem:CreateSlider(T)
			T["Name"] = T["Name"] or "Unnamed"
			T["Callback"] = T["Callback"] or nil
			T["Default"] = T["Default"] or T["Min"]
			T["Increment"] = T["Increment"] or 1

			local SliderItem = T
			local OldSliderValue = ""
			local MovingSlider = false
			local ValueIncrement = tostring(#(string.match(T["Increment"], "%.%d+") or ""))

			SliderItem.Value = T["Default"]

			local Slider = Templates.SliderTemplate:Clone()
			Slider.Parent = Tab.Container
			Slider.Name = "Slider"
			Slider.LayoutOrder = TabItemLayout; TabItemLayout = TabItemLayout + 1
			Slider.Title.Text = T["Name"]
			Slider.Slider.Progression.Size = UDim2.new((T["Default"] - T["Min"]) / (T["Max"] - T["Min"]), 0, 1, 0)
			Slider.TextBox.Text = T["Default"]

			local GetClosestValue = function(Value)
				local Inc_N = math.floor((Value - T["Min"]) / T["Increment"])
				local LowerValue = T["Min"] + Inc_N * T["Increment"]
				local UpperValue = LowerValue + T["Increment"]

				if Value - LowerValue < UpperValue - Value then
					return LowerValue
				else
					return UpperValue
				end
			end

			local UpdateSlider = function()
				local FilteredString = ""
				for i = 1, #Slider.TextBox.Text do
					if i == 15 then break end
					if string.gmatch(Slider.TextBox.Text:sub(i, i), "(%d|%.)") then
						FilteredString = FilteredString .. Slider.TextBox.Text:sub(i, i)
					end
				end

				if FilteredString ~= "" then FilteredString = GetClosestValue(tonumber(FilteredString)) end
				FilteredString = string.format("%." .. ValueIncrement .. "f", FilteredString)

				local Percentage = math.clamp((tonumber(FilteredString) - T["Min"]) / (T["Max"] - T["Min"]), 0, 1)
				Slider.Slider.Progression.Size = UDim2.new(Percentage, 0, 1, 0)
				Slider.TextBox.Text = tostring(math.clamp(tonumber(FilteredString), T["Min"], T["Max"]))

				SliderItem.Value = Slider.TextBox.Text

				if T["Callback"] ~= nil then
					if OldSliderValue ~= Slider.TextBox.Text then 
						T["Callback"](Slider.TextBox.Text)
						OldSliderValue = Slider.TextBox.Text
					end
				end
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
				if IsDragging then return end
				if (Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch) then
					IsDragging = true
					MovingSlider = true
					local InputConnection = Input.Changed:Connect(function()
						if Input.UserInputState == Enum.UserInputState.End then
							IsDragging = false
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
						Slider.TextBox.Text = tostring(GetClosestValue(T["Min"] + Slider.Slider.Progression.Size.X.Scale * (T["Max"] - T["Min"])))
						UpdateSlider()
					end
				end
			end)

			Slider.Precision.Plus.MouseButton1Click:Connect(function()
				Slider.TextBox.Text = tostring(GetClosestValue(tonumber(Slider.TextBox.Text) + T["Increment"]))
				UpdateSlider()

			end)

			Slider.Precision.Minus.MouseButton1Click:Connect(function()
				Slider.TextBox.Text = tostring(GetClosestValue(tonumber(Slider.TextBox.Text) - T["Increment"]))
				UpdateSlider()
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
				if DropdownIsOpened == false then
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

	function WindowItem:CreateNotification(T)
		T["Title"] = T["Title"] or "Unnamed"
		T["Content"] = T["Content"] or ""
		T["Duration"] = T["Duration"] or 5
		T["Buttons"] = T["Buttons"] or {{
			Name = "Ok"
		}}

		local NotificationItem = T
		local NotificationClosed = false
		local NotificationHovered = false

		local Notification = Templates.NotificationTemplate:Clone()
		Notification.Parent = Notifications
		Notification.Title.Text = T["Title"]
		Notification.Desc.Text = T["Content"]

		local hasButtons = #T["Buttons"] > 0
		local NotificationBounds = TextService:GetTextSize(T["Content"], 14, Enum.Font.MontserratBold, Vector2.new(Notification.Desc.AbsoluteSize.X, math.huge))
		Notification.Size = UDim2.new(1, 0, 0, 45 + ((hasButtons and 22) or 0) + NotificationBounds.Y)

		function NotificationItem:Destroy()
			TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play()
			TweenService:Create(Notification.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {TextTransparency = 1}):Play()
			TweenService:Create(Notification.Desc, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {TextTransparency = 1}):Play()
			TweenService:Create(Notification.Close, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {ImageTransparency = 1}):Play()
			for _, Item in next, Notification.Buttons:GetChildren() do
				if Item:IsA('UIListLayout') then continue end
				TweenService:Create(Item, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play()
				TweenService:Create(Item.Label, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {TextTransparency = 1}):Play()
			end
			task.wait(0.3)
			Notification:Destroy()
			NotificationClosed = true
		end

		for _, Item in next, T["Buttons"] do
			Item["Callback"] = Item["Callback"] or function(...) NotificationItem:Destroy() end

			local NotificationButton = Templates.NotificationButtonTemplate:Clone()
			NotificationButton.Parent = Notification.Buttons
			NotificationButton.Label.Text = Item["Name"]
			NotificationButton.MouseButton1Click:Connect(Item["Callback"])

			local ButtonBounds = TextService:GetTextSize(Item["Name"], 14, Enum.Font.MontserratBold, Vector2.new(math.huge, math.huge))
			NotificationButton.Size = UDim2.new(0, ButtonBounds.X + 12, 1, 0)
		end

		if Notification.Buttons.AbsoluteCanvasSize.X > Notification.Buttons.AbsoluteWindowSize.X then
			Notification.Buttons.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
		else
			Notification.Buttons.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
		end

		Notification.Close.MouseButton1Click:Connect(function()
			NotificationItem:Destroy()
		end)

		Notification.BackgroundTransparency = 1
		for _, Item in next, Notification:GetDescendants() do
			pcall(function() Item.BackgroundTransparency = 1 end)
			pcall(function() Item.TextTransparency = 1 end)
			pcall(function() Item.ImageTransparency = 1 end)
		end

		TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}):Play()
		TweenService:Create(Notification.Title, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play()
		TweenService:Create(Notification.Desc, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play()
		TweenService:Create(Notification.Close, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {ImageTransparency = 0}):Play()
		for _, Item in next, Notification.Buttons:GetChildren() do
			if Item:IsA('UIListLayout') then continue end
			TweenService:Create(Item, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}):Play()
			TweenService:Create(Item.Label, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play()
		end
		task.wait(0.3)

		local StartTime = DateTime.now().UnixTimestampMillis

		task.spawn(function()
			if T["Duration"] == 0 then
				return
			end

			Notification.MouseEnter:Connect(function()
				NotificationHovered = true
			end)

			Notification.MouseLeave:Connect(function()
				NotificationHovered = false
			end)

			while task.wait() and not NotificationClosed do
				if NotificationHovered then
					StartTime = DateTime.now().UnixTimestampMillis
					Notification.MouseLeave:Wait()
				end
				if DateTime.now().UnixTimestampMillis > StartTime + T["Duration"] * 1000 then
					break
				end
			end
			NotificationItem:Destroy()
		end)

		return T
	end

	return WindowItem
end

return Lib
