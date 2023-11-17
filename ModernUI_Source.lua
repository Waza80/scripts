--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88 
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER
]=]

-- Instances: 99 | Scripts: 0 | Modules: 0
local G2L = {};

-- StarterGui.Modern V2
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[Modern V2]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.Modern V2.Templates
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Visible"] = false;
G2L["2"]["Name"] = [[Templates]];

-- StarterGui.Modern V2.Templates.DropdownEntryTemplate
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(22, 22, 33);
G2L["3"]["Size"] = UDim2.new(1, -2, 0, 30);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Name"] = [[DropdownEntryTemplate]];

-- StarterGui.Modern V2.Templates.DropdownEntryTemplate.UICorner
G2L["4"] = Instance.new("UICorner", G2L["3"]);
G2L["4"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.DropdownEntryTemplate.Label
G2L["5"] = Instance.new("TextLabel", G2L["3"]);
G2L["5"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["TextSize"] = 14;
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5"]["Size"] = UDim2.new(1, -10, 1, -10);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[Unnamed]];
G2L["5"]["Name"] = [[Label]];
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Modern V2.Templates.DropdownEntryTemplate.ClickPart
G2L["6"] = Instance.new("TextButton", G2L["3"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["TextSize"] = 14;
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6"]["Name"] = [[ClickPart]];
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[]];
G2L["6"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.Templates.DropdownEntryTemplate.IsEnabled
G2L["7"] = Instance.new("BoolValue", G2L["3"]);
G2L["7"]["Name"] = [[IsEnabled]];

-- StarterGui.Modern V2.Templates.KeyTemplate
G2L["8"] = Instance.new("Frame", G2L["2"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["8"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Visible"] = false;
G2L["8"]["Name"] = [[KeyTemplate]];

-- StarterGui.Modern V2.Templates.KeyTemplate.Title
G2L["9"] = Instance.new("TextLabel", G2L["8"]);
G2L["9"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9"]["TextSize"] = 14;
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["9"]["Size"] = UDim2.new(1, -65, 1, -10);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[Unnamed]];
G2L["9"]["Name"] = [[Title]];
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Position"] = UDim2.new(0, 5, 0.5, 0);

-- StarterGui.Modern V2.Templates.KeyTemplate.UICorner
G2L["a"] = Instance.new("UICorner", G2L["8"]);
G2L["a"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.KeyTemplate.KeyIndicator
G2L["b"] = Instance.new("TextLabel", G2L["8"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b"]["TextSize"] = 14;
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["b"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["b"]["Size"] = UDim2.new(0, 20, 1, -10);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[No Key]];
G2L["b"]["Name"] = [[KeyIndicator]];
G2L["b"]["Position"] = UDim2.new(1, -5, 0.5, 0);

-- StarterGui.Modern V2.Templates.KeyTemplate.KeyIndicator.UIStroke
G2L["c"] = Instance.new("UIStroke", G2L["b"]);
G2L["c"]["Color"] = Color3.fromRGB(170, 170, 170);
G2L["c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.Modern V2.Templates.KeyTemplate.KeyIndicator.UICorner
G2L["d"] = Instance.new("UICorner", G2L["b"]);
G2L["d"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.KeyTemplate.ClickPart
G2L["e"] = Instance.new("TextButton", G2L["8"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["TextSize"] = 14;
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e"]["Name"] = [[ClickPart]];
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Text"] = [[]];
G2L["e"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.Templates.ButtonTemplate
G2L["f"] = Instance.new("Frame", G2L["2"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["f"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Name"] = [[ButtonTemplate]];

-- StarterGui.Modern V2.Templates.ButtonTemplate.UICorner
G2L["10"] = Instance.new("UICorner", G2L["f"]);
G2L["10"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.ButtonTemplate.RoundAnimationContainer
G2L["11"] = Instance.new("ScrollingFrame", G2L["f"]);
G2L["11"]["Active"] = true;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["11"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["ScrollBarThickness"] = 0;
G2L["11"]["Name"] = [[RoundAnimationContainer]];

-- StarterGui.Modern V2.Templates.ButtonTemplate.RoundAnimationContainer.Circle
G2L["12"] = Instance.new("Frame", G2L["11"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(193, 193, 193);
G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["Size"] = UDim2.new(0, 300, 0, 1000000000);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Name"] = [[Circle]];

-- StarterGui.Modern V2.Templates.ButtonTemplate.RoundAnimationContainer.Circle.UICorner
G2L["13"] = Instance.new("UICorner", G2L["12"]);
G2L["13"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.Modern V2.Templates.ButtonTemplate.RoundAnimationContainer.Circle.UIAspectRatioConstraint
G2L["14"] = Instance.new("UIAspectRatioConstraint", G2L["12"]);


-- StarterGui.Modern V2.Templates.ButtonTemplate.ClickPart
G2L["15"] = Instance.new("TextButton", G2L["f"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["TextSize"] = 14;
G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["15"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["15"]["Name"] = [[ClickPart]];
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Text"] = [[]];
G2L["15"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.Templates.ButtonTemplate.Title
G2L["16"] = Instance.new("TextLabel", G2L["f"]);
G2L["16"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["16"]["TextSize"] = 14;
G2L["16"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["16"]["Size"] = UDim2.new(1, -10, 1, -10);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Text"] = [[Unnamed]];
G2L["16"]["Name"] = [[Title]];
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Modern V2.Templates.DropdownTemplate
G2L["17"] = Instance.new("Frame", G2L["2"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["17"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Name"] = [[DropdownTemplate]];

-- StarterGui.Modern V2.Templates.DropdownTemplate.Title
G2L["18"] = Instance.new("TextLabel", G2L["17"]);
G2L["18"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["18"]["TextSize"] = 14;
G2L["18"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["Size"] = UDim2.new(1, -35, 0, 20);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[Unnamed]];
G2L["18"]["Name"] = [[Title]];
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.Modern V2.Templates.DropdownTemplate.UICorner
G2L["19"] = Instance.new("UICorner", G2L["17"]);
G2L["19"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.DropdownTemplate.ClickPart
G2L["1a"] = Instance.new("TextButton", G2L["17"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["TextSize"] = 14;
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1a"]["Name"] = [[ClickPart]];
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[]];
G2L["1a"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.Templates.DropdownTemplate.Arrow
G2L["1b"] = Instance.new("ImageLabel", G2L["17"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["1b"]["Image"] = [[rbxassetid://13927250831]];
G2L["1b"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["1b"]["Active"] = true;
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Name"] = [[Arrow]];
G2L["1b"]["Rotation"] = 270;
G2L["1b"]["BackgroundTransparency"] = 1;
G2L["1b"]["Position"] = UDim2.new(1, 0, 0, 0);

-- StarterGui.Modern V2.Templates.DropdownTemplate.Options
G2L["1c"] = Instance.new("ScrollingFrame", G2L["17"]);
G2L["1c"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["1c"]["BackgroundTransparency"] = 1;
G2L["1c"]["Size"] = UDim2.new(1, -10, 0, 0);
G2L["1c"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["ScrollBarThickness"] = 0;
G2L["1c"]["Position"] = UDim2.new(0, 5, 0, 30);
G2L["1c"]["Name"] = [[Options]];

-- StarterGui.Modern V2.Templates.DropdownTemplate.Options.UIListLayout
G2L["1d"] = Instance.new("UIListLayout", G2L["1c"]);
G2L["1d"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["1d"]["Padding"] = UDim.new(0, 2);
G2L["1d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Modern V2.Templates.SectionTemplate
G2L["1e"] = Instance.new("Frame", G2L["2"]);
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["BackgroundTransparency"] = 1;
G2L["1e"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Name"] = [[SectionTemplate]];

-- StarterGui.Modern V2.Templates.SectionTemplate.Label
G2L["1f"] = Instance.new("TextLabel", G2L["1e"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["TextYAlignment"] = Enum.TextYAlignment.Bottom;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1f"]["TextSize"] = 16;
G2L["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1f"]["Size"] = UDim2.new(1, -8, 1, 0);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Text"] = [[Unnamed]];
G2L["1f"]["Name"] = [[Label]];
G2L["1f"]["BackgroundTransparency"] = 1;
G2L["1f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Modern V2.Templates.ToggleTemplate
G2L["20"] = Instance.new("Frame", G2L["2"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["20"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Name"] = [[ToggleTemplate]];

-- StarterGui.Modern V2.Templates.ToggleTemplate.UICorner
G2L["21"] = Instance.new("UICorner", G2L["20"]);
G2L["21"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.ToggleTemplate.ClickPart
G2L["22"] = Instance.new("TextButton", G2L["20"]);
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["TextSize"] = 14;
G2L["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["22"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["22"]["Name"] = [[ClickPart]];
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Text"] = [[]];
G2L["22"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.Templates.ToggleTemplate.Title
G2L["23"] = Instance.new("TextLabel", G2L["20"]);
G2L["23"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["23"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["23"]["TextSize"] = 14;
G2L["23"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["23"]["Size"] = UDim2.new(1, -65, 1, -10);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Text"] = [[Unnamed]];
G2L["23"]["Name"] = [[Title]];
G2L["23"]["BackgroundTransparency"] = 1;
G2L["23"]["Position"] = UDim2.new(0, 5, 0.5, 0);

-- StarterGui.Modern V2.Templates.ToggleTemplate.Toggle
G2L["24"] = Instance.new("Frame", G2L["20"]);
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["24"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["24"]["Size"] = UDim2.new(0, 40, 1, -10);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Position"] = UDim2.new(1, -5, 0.5, 0);
G2L["24"]["Name"] = [[Toggle]];

-- StarterGui.Modern V2.Templates.ToggleTemplate.Toggle.UIStroke
G2L["25"] = Instance.new("UIStroke", G2L["24"]);
G2L["25"]["Color"] = Color3.fromRGB(170, 170, 170);

-- StarterGui.Modern V2.Templates.ToggleTemplate.Toggle.UICorner
G2L["26"] = Instance.new("UICorner", G2L["24"]);
G2L["26"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.TabButtonTemplate
G2L["27"] = Instance.new("Frame", G2L["2"]);
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["BackgroundTransparency"] = 1;
G2L["27"]["Size"] = UDim2.new(0, 20, 1, 0);
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Name"] = [[TabButtonTemplate]];

-- StarterGui.Modern V2.Templates.TabButtonTemplate.UICorner
G2L["28"] = Instance.new("UICorner", G2L["27"]);
G2L["28"]["CornerRadius"] = UDim.new(11, 0);

-- StarterGui.Modern V2.Templates.TabButtonTemplate.Label
G2L["29"] = Instance.new("TextLabel", G2L["27"]);
G2L["29"]["ZIndex"] = 2;
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["29"]["TextSize"] = 16;
G2L["29"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["29"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["29"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Text"] = [[Unnamed]];
G2L["29"]["Name"] = [[Label]];
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["29"]["MaxVisibleGraphemes"] = 30;

-- StarterGui.Modern V2.Templates.TabButtonTemplate.ClickPart
G2L["2a"] = Instance.new("TextButton", G2L["27"]);
G2L["2a"]["BorderSizePixel"] = 0;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2a"]["TextSize"] = 14;
G2L["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2a"]["Name"] = [[ClickPart]];
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Text"] = [[]];
G2L["2a"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.Templates.TabButtonTemplate.IsOpened
G2L["2b"] = Instance.new("BoolValue", G2L["27"]);
G2L["2b"]["Name"] = [[IsOpened]];

-- StarterGui.Modern V2.Templates.LabelTemplate
G2L["2c"] = Instance.new("Frame", G2L["2"]);
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["2c"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Name"] = [[LabelTemplate]];

-- StarterGui.Modern V2.Templates.LabelTemplate.UICorner
G2L["2d"] = Instance.new("UICorner", G2L["2c"]);
G2L["2d"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.LabelTemplate.Title
G2L["2e"] = Instance.new("TextLabel", G2L["2c"]);
G2L["2e"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2e"]["TextSize"] = 14;
G2L["2e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2e"]["Size"] = UDim2.new(1, -10, 1, -10);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Text"] = [[Unnamed]];
G2L["2e"]["Name"] = [[Title]];
G2L["2e"]["BackgroundTransparency"] = 1;
G2L["2e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Modern V2.Templates.ParagraphTemplate
G2L["2f"] = Instance.new("Frame", G2L["2"]);
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["2f"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2f"]["Name"] = [[ParagraphTemplate]];

-- StarterGui.Modern V2.Templates.ParagraphTemplate.UICorner
G2L["30"] = Instance.new("UICorner", G2L["2f"]);
G2L["30"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.ParagraphTemplate.Title
G2L["31"] = Instance.new("TextLabel", G2L["2f"]);
G2L["31"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["31"]["TextSize"] = 14;
G2L["31"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Text"] = [[Unnamed]];
G2L["31"]["Name"] = [[Title]];
G2L["31"]["BackgroundTransparency"] = 1;
G2L["31"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.Modern V2.Templates.ParagraphTemplate.Description
G2L["32"] = Instance.new("TextLabel", G2L["2f"]);
G2L["32"]["TextWrapped"] = true;
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["32"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["32"]["TextSize"] = 12;
G2L["32"]["TextColor3"] = Color3.fromRGB(146, 146, 146);
G2L["32"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["32"]["Size"] = UDim2.new(1, -10, 0, 12);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["Text"] = [[Unnamed]];
G2L["32"]["Name"] = [[Description]];
G2L["32"]["BackgroundTransparency"] = 1;
G2L["32"]["Position"] = UDim2.new(0, 5, 0, 25);

-- StarterGui.Modern V2.Templates.InputTemplate
G2L["33"] = Instance.new("Frame", G2L["2"]);
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["33"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Name"] = [[InputTemplate]];

-- StarterGui.Modern V2.Templates.InputTemplate.UICorner
G2L["34"] = Instance.new("UICorner", G2L["33"]);
G2L["34"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.InputTemplate.ClickPart
G2L["35"] = Instance.new("TextButton", G2L["33"]);
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["TextSize"] = 14;
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["35"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["35"]["Name"] = [[ClickPart]];
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Text"] = [[]];
G2L["35"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.Templates.InputTemplate.Title
G2L["36"] = Instance.new("TextLabel", G2L["33"]);
G2L["36"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["36"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["36"]["TextSize"] = 14;
G2L["36"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["36"]["Size"] = UDim2.new(1, -60, 1, -10);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Text"] = [[Unnamed]];
G2L["36"]["Name"] = [[Title]];
G2L["36"]["BackgroundTransparency"] = 1;
G2L["36"]["Position"] = UDim2.new(0, 5, 0.5, 0);

-- StarterGui.Modern V2.Templates.InputTemplate.TextBox
G2L["37"] = Instance.new("TextBox", G2L["33"]);
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["TextSize"] = 14;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["37"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["37"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["37"]["MaxVisibleGraphemes"] = 35;
G2L["37"]["Size"] = UDim2.new(0, 40, 0, 20);
G2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["Text"] = [[]];
G2L["37"]["Position"] = UDim2.new(1, -5, 0.5, 0);
G2L["37"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["37"]["ClearTextOnFocus"] = false;

-- StarterGui.Modern V2.Templates.InputTemplate.TextBox.UICorner
G2L["38"] = Instance.new("UICorner", G2L["37"]);
G2L["38"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.InputTemplate.TextBox.UIStroke
G2L["39"] = Instance.new("UIStroke", G2L["37"]);
G2L["39"]["Color"] = Color3.fromRGB(170, 170, 170);
G2L["39"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.Modern V2.Templates.SliderTemplate
G2L["3a"] = Instance.new("Frame", G2L["2"]);
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["3a"]["Size"] = UDim2.new(1, -10, 0, 60);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Name"] = [[SliderTemplate]];

-- StarterGui.Modern V2.Templates.SliderTemplate.UICorner
G2L["3b"] = Instance.new("UICorner", G2L["3a"]);
G2L["3b"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.SliderTemplate.Title
G2L["3c"] = Instance.new("TextLabel", G2L["3a"]);
G2L["3c"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3c"]["TextSize"] = 14;
G2L["3c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3c"]["Size"] = UDim2.new(1, -100, 0, 20);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["Text"] = [[Unnamed]];
G2L["3c"]["Name"] = [[Title]];
G2L["3c"]["BackgroundTransparency"] = 1;
G2L["3c"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.Modern V2.Templates.SliderTemplate.Slider
G2L["3d"] = Instance.new("Frame", G2L["3a"]);
G2L["3d"]["Active"] = true;
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["3d"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["3d"]["Size"] = UDim2.new(1, -20, 0, 5);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["Position"] = UDim2.new(0.5, 0, 0, 40);
G2L["3d"]["Name"] = [[Slider]];

-- StarterGui.Modern V2.Templates.SliderTemplate.Slider.UICorner
G2L["3e"] = Instance.new("UICorner", G2L["3d"]);
G2L["3e"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.Modern V2.Templates.SliderTemplate.Slider.Progression
G2L["3f"] = Instance.new("Frame", G2L["3d"]);
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3f"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Name"] = [[Progression]];

-- StarterGui.Modern V2.Templates.SliderTemplate.Slider.Progression.Cursor
G2L["40"] = Instance.new("Frame", G2L["3f"]);
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["40"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["40"]["Name"] = [[Cursor]];

-- StarterGui.Modern V2.Templates.SliderTemplate.Slider.Progression.Cursor.UICorner
G2L["41"] = Instance.new("UICorner", G2L["40"]);
G2L["41"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.Modern V2.Templates.SliderTemplate.Slider.Progression.UICorner
G2L["42"] = Instance.new("UICorner", G2L["3f"]);
G2L["42"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.Modern V2.Templates.SliderTemplate.TextBox
G2L["43"] = Instance.new("TextBox", G2L["3a"]);
G2L["43"]["BorderSizePixel"] = 0;
G2L["43"]["TextSize"] = 14;
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["43"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["43"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["43"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["43"]["MaxVisibleGraphemes"] = 14;
G2L["43"]["Size"] = UDim2.new(0, 40, 0, 20);
G2L["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["Text"] = [[0]];
G2L["43"]["Position"] = UDim2.new(1, -5, 0, 5);
G2L["43"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["43"]["ClearTextOnFocus"] = false;

-- StarterGui.Modern V2.Templates.SliderTemplate.TextBox.UICorner
G2L["44"] = Instance.new("UICorner", G2L["43"]);
G2L["44"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.SliderTemplate.TextBox.UIStroke
G2L["45"] = Instance.new("UIStroke", G2L["43"]);
G2L["45"]["Color"] = Color3.fromRGB(170, 170, 170);
G2L["45"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision
G2L["46"] = Instance.new("Frame", G2L["3a"]);
G2L["46"]["BorderSizePixel"] = 0;
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["46"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["46"]["Size"] = UDim2.new(0, 40, 0, 20);
G2L["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["46"]["Position"] = UDim2.new(1, -50, 0, 5);
G2L["46"]["Name"] = [[Precision]];

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision.UICorner
G2L["47"] = Instance.new("UICorner", G2L["46"]);
G2L["47"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision.UIStroke
G2L["48"] = Instance.new("UIStroke", G2L["46"]);
G2L["48"]["Color"] = Color3.fromRGB(170, 170, 170);
G2L["48"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision.Line
G2L["49"] = Instance.new("Frame", G2L["46"]);
G2L["49"]["ZIndex"] = 2;
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(170, 170, 170);
G2L["49"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["49"]["Size"] = UDim2.new(0, 2, 1, 0);
G2L["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["49"]["Name"] = [[Line]];

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision.Plus
G2L["4a"] = Instance.new("TextButton", G2L["46"]);
G2L["4a"]["BorderSizePixel"] = 0;
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["4a"]["TextSize"] = 16;
G2L["4a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4a"]["Size"] = UDim2.new(0.5, -1, 1, 0);
G2L["4a"]["Name"] = [[Plus]];
G2L["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["Text"] = [[+]];
G2L["4a"]["Position"] = UDim2.new(0.75, 1, 0.5, 0);

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision.Plus.UICorner
G2L["4b"] = Instance.new("UICorner", G2L["4a"]);
G2L["4b"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision.Minus
G2L["4c"] = Instance.new("TextButton", G2L["46"]);
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["4c"]["TextSize"] = 16;
G2L["4c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4c"]["Size"] = UDim2.new(0.5, -1, 1, 0);
G2L["4c"]["Name"] = [[Minus]];
G2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["Text"] = [[-]];
G2L["4c"]["Position"] = UDim2.new(0.25, 0, 0.5, 0);

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision.Minus.UICorner
G2L["4d"] = Instance.new("UICorner", G2L["4c"]);
G2L["4d"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.TabTemplate
G2L["4e"] = Instance.new("Frame", G2L["2"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 29);
G2L["4e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4e"]["Size"] = UDim2.new(0, 550, 0, 300);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["4e"]["Name"] = [[TabTemplate]];

-- StarterGui.Modern V2.Templates.TabTemplate.UIStroke
G2L["4f"] = Instance.new("UIStroke", G2L["4e"]);
G2L["4f"]["Color"] = Color3.fromRGB(170, 170, 170);
G2L["4f"]["Transparency"] = 0.5;

-- StarterGui.Modern V2.Templates.TabTemplate.UICorner
G2L["50"] = Instance.new("UICorner", G2L["4e"]);
G2L["50"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.Modern V2.Templates.TabTemplate.Topbar
G2L["51"] = Instance.new("Frame", G2L["4e"]);
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["BackgroundTransparency"] = 1;
G2L["51"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["Name"] = [[Topbar]];

-- StarterGui.Modern V2.Templates.TabTemplate.Topbar.Label
G2L["52"] = Instance.new("TextLabel", G2L["51"]);
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["52"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["52"]["TextSize"] = 14;
G2L["52"]["TextColor3"] = Color3.fromRGB(170, 170, 170);
G2L["52"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["52"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Text"] = [[Unnamed]];
G2L["52"]["Name"] = [[Label]];
G2L["52"]["BackgroundTransparency"] = 1;
G2L["52"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["52"]["MaxVisibleGraphemes"] = 30;

-- StarterGui.Modern V2.Templates.TabTemplate.Topbar.Shadow
G2L["53"] = Instance.new("Frame", G2L["51"]);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["Size"] = UDim2.new(1, 0, 0, 5);
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["53"]["Name"] = [[Shadow]];

-- StarterGui.Modern V2.Templates.TabTemplate.Topbar.Shadow.UIGradient
G2L["54"] = Instance.new("UIGradient", G2L["53"]);
G2L["54"]["Rotation"] = 90;
G2L["54"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(25, 25, 29))};

-- StarterGui.Modern V2.Templates.TabTemplate.Topbar.ClickPart
G2L["55"] = Instance.new("TextButton", G2L["51"]);
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["TextSize"] = 14;
G2L["55"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["55"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["55"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["55"]["Name"] = [[ClickPart]];
G2L["55"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["55"]["Text"] = [[]];
G2L["55"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.Templates.TabTemplate.Container
G2L["56"] = Instance.new("ScrollingFrame", G2L["4e"]);
G2L["56"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["56"]["BackgroundTransparency"] = 1;
G2L["56"]["Size"] = UDim2.new(1, 0, 1, -37);
G2L["56"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["ScrollBarThickness"] = 0;
G2L["56"]["Position"] = UDim2.new(0, 0, 0, 31);
G2L["56"]["Name"] = [[Container]];

-- StarterGui.Modern V2.Templates.TabTemplate.Container.UIListLayout
G2L["57"] = Instance.new("UIListLayout", G2L["56"]);
G2L["57"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["57"]["Padding"] = UDim.new(0, 5);
G2L["57"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Modern V2.TabSelector
G2L["58"] = Instance.new("Frame", G2L["1"]);
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 29);
G2L["58"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["58"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["Position"] = UDim2.new(0.5, 0, 0, 5);
G2L["58"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["58"]["Name"] = [[TabSelector]];

-- StarterGui.Modern V2.TabSelector.Container
G2L["59"] = Instance.new("ScrollingFrame", G2L["58"]);
G2L["59"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["59"]["BackgroundTransparency"] = 1;
G2L["59"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["59"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["ScrollBarThickness"] = 0;
G2L["59"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["59"]["Name"] = [[Container]];

-- StarterGui.Modern V2.TabSelector.Container.CloseButton
G2L["5a"] = Instance.new("Frame", G2L["59"]);
G2L["5a"]["BorderSizePixel"] = 0;
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(170, 170, 170);
G2L["5a"]["BackgroundTransparency"] = 0.5;
G2L["5a"]["LayoutOrder"] = 2;
G2L["5a"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["5a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5a"]["Name"] = [[CloseButton]];

-- StarterGui.Modern V2.TabSelector.Container.CloseButton.Icon
G2L["5b"] = Instance.new("ImageLabel", G2L["5a"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5b"]["Image"] = [[rbxassetid://6031094678]];
G2L["5b"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Name"] = [[Icon]];
G2L["5b"]["BackgroundTransparency"] = 1;
G2L["5b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Modern V2.TabSelector.Container.CloseButton.ClickPart
G2L["5c"] = Instance.new("TextButton", G2L["5a"]);
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["TextSize"] = 14;
G2L["5c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5c"]["Name"] = [[ClickPart]];
G2L["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["Text"] = [[]];
G2L["5c"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.TabSelector.Container.CloseButton.UICorner
G2L["5d"] = Instance.new("UICorner", G2L["5a"]);
G2L["5d"]["CornerRadius"] = UDim.new(11, 0);

-- StarterGui.Modern V2.TabSelector.Container.UIListLayout
G2L["5e"] = Instance.new("UIListLayout", G2L["59"]);
G2L["5e"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["5e"]["FillDirection"] = Enum.FillDirection.Horizontal;
G2L["5e"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["5e"]["Padding"] = UDim.new(0, 5);
G2L["5e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Modern V2.TabSelector.Container.Tabs
G2L["5f"] = Instance.new("ScrollingFrame", G2L["59"]);
G2L["5f"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5f"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["5f"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["ScrollBarThickness"] = 0;
G2L["5f"]["Name"] = [[Tabs]];

-- StarterGui.Modern V2.TabSelector.Container.Tabs.UIListLayout
G2L["60"] = Instance.new("UIListLayout", G2L["5f"]);
G2L["60"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["60"]["FillDirection"] = Enum.FillDirection.Horizontal;
G2L["60"]["Padding"] = UDim.new(0, 2);
G2L["60"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Modern V2.TabSelector.UIStroke
G2L["61"] = Instance.new("UIStroke", G2L["58"]);
G2L["61"]["Color"] = Color3.fromRGB(170, 170, 170);
G2L["61"]["Transparency"] = 0.5;

-- StarterGui.Modern V2.TabSelector.UICorner
G2L["62"] = Instance.new("UICorner", G2L["58"]);
G2L["62"]["CornerRadius"] = UDim.new(11, 0);

-- StarterGui.Modern V2.Tabs
G2L["63"] = Instance.new("Folder", G2L["1"]);
G2L["63"]["Name"] = [[Tabs]];


return G2L["1"], require;
