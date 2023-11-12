--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88 
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER
]=]

-- Instances: 120 | Scripts: 12 | Modules: 0
local G2L = {};
local CoreGui = game:GetService("CoreGui")

-- StarterGui.Modern V2
if gethui then
  G2L["1"] = Instance.new("ScreenGui", gethui());
elseif CoreGui.RobloxGui then
  G2L["1"] = Instance.new("ScreenGui", CoreGui.RobloxGui);
else
  G2L["1"] = Instance.new("ScreenGui", CoreGui);
end

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

-- StarterGui.Modern V2.Templates.DropdownEntryTemplate.Toggling
G2L["8"] = Instance.new("LocalScript", G2L["3"]);
G2L["8"]["Name"] = [[Toggling]];

-- StarterGui.Modern V2.Templates.KeyTemplate
G2L["9"] = Instance.new("Frame", G2L["2"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["9"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Visible"] = false;
G2L["9"]["Name"] = [[KeyTemplate]];

-- StarterGui.Modern V2.Templates.KeyTemplate.Title
G2L["a"] = Instance.new("TextLabel", G2L["9"]);
G2L["a"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["TextSize"] = 14;
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["a"]["Size"] = UDim2.new(1, -65, 1, -10);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[Unnamed]];
G2L["a"]["Name"] = [[Title]];
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Position"] = UDim2.new(0, 5, 0.5, 0);

-- StarterGui.Modern V2.Templates.KeyTemplate.Handling
G2L["b"] = Instance.new("LocalScript", G2L["9"]);
G2L["b"]["Name"] = [[Handling]];

-- StarterGui.Modern V2.Templates.KeyTemplate.UICorner
G2L["c"] = Instance.new("UICorner", G2L["9"]);
G2L["c"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.KeyTemplate.KeyIndicator
G2L["d"] = Instance.new("TextLabel", G2L["9"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d"]["TextSize"] = 14;
G2L["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["d"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["d"]["Size"] = UDim2.new(0, 20, 1, -10);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Text"] = [[No Key]];
G2L["d"]["Name"] = [[KeyIndicator]];
G2L["d"]["Position"] = UDim2.new(1, -5, 0.5, 0);

-- StarterGui.Modern V2.Templates.KeyTemplate.KeyIndicator.UIStroke
G2L["e"] = Instance.new("UIStroke", G2L["d"]);
G2L["e"]["Color"] = Color3.fromRGB(170, 170, 170);
G2L["e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.Modern V2.Templates.KeyTemplate.KeyIndicator.UICorner
G2L["f"] = Instance.new("UICorner", G2L["d"]);
G2L["f"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.KeyTemplate.ClickPart
G2L["10"] = Instance.new("TextButton", G2L["9"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["TextSize"] = 14;
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["10"]["Name"] = [[ClickPart]];
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Text"] = [[]];
G2L["10"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.Templates.ButtonTemplate
G2L["11"] = Instance.new("Frame", G2L["2"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["11"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Name"] = [[ButtonTemplate]];

-- StarterGui.Modern V2.Templates.ButtonTemplate.UICorner
G2L["12"] = Instance.new("UICorner", G2L["11"]);
G2L["12"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.ButtonTemplate.RoundAnimationContainer
G2L["13"] = Instance.new("ScrollingFrame", G2L["11"]);
G2L["13"]["Active"] = true;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["13"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["ScrollBarThickness"] = 0;
G2L["13"]["Name"] = [[RoundAnimationContainer]];

-- StarterGui.Modern V2.Templates.ButtonTemplate.RoundAnimationContainer.Circle
G2L["14"] = Instance.new("Frame", G2L["13"]);
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(193, 193, 193);
G2L["14"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["14"]["BackgroundTransparency"] = 1;
G2L["14"]["Size"] = UDim2.new(0, 300, 0, 1000000000);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Name"] = [[Circle]];

-- StarterGui.Modern V2.Templates.ButtonTemplate.RoundAnimationContainer.Circle.UICorner
G2L["15"] = Instance.new("UICorner", G2L["14"]);
G2L["15"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.Modern V2.Templates.ButtonTemplate.RoundAnimationContainer.Circle.UIAspectRatioConstraint
G2L["16"] = Instance.new("UIAspectRatioConstraint", G2L["14"]);


-- StarterGui.Modern V2.Templates.ButtonTemplate.CircleAnimation
G2L["17"] = Instance.new("LocalScript", G2L["11"]);
G2L["17"]["Name"] = [[CircleAnimation]];

-- StarterGui.Modern V2.Templates.ButtonTemplate.ClickPart
G2L["18"] = Instance.new("TextButton", G2L["11"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["TextSize"] = 14;
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["18"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["18"]["Name"] = [[ClickPart]];
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[]];
G2L["18"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.Templates.ButtonTemplate.Title
G2L["19"] = Instance.new("TextLabel", G2L["11"]);
G2L["19"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19"]["TextSize"] = 14;
G2L["19"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["19"]["Size"] = UDim2.new(1, -10, 1, -10);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Text"] = [[Unnamed]];
G2L["19"]["Name"] = [[Title]];
G2L["19"]["BackgroundTransparency"] = 1;
G2L["19"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Modern V2.Templates.DropdownTemplate
G2L["1a"] = Instance.new("Frame", G2L["2"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["1a"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Name"] = [[DropdownTemplate]];

-- StarterGui.Modern V2.Templates.DropdownTemplate.Title
G2L["1b"] = Instance.new("TextLabel", G2L["1a"]);
G2L["1b"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b"]["TextSize"] = 14;
G2L["1b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["Size"] = UDim2.new(1, -35, 0, 20);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Text"] = [[Unnamed]];
G2L["1b"]["Name"] = [[Title]];
G2L["1b"]["BackgroundTransparency"] = 1;
G2L["1b"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.Modern V2.Templates.DropdownTemplate.Handling
G2L["1c"] = Instance.new("LocalScript", G2L["1a"]);
G2L["1c"]["Name"] = [[Handling]];

-- StarterGui.Modern V2.Templates.DropdownTemplate.UICorner
G2L["1d"] = Instance.new("UICorner", G2L["1a"]);
G2L["1d"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.DropdownTemplate.ClickPart
G2L["1e"] = Instance.new("TextButton", G2L["1a"]);
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["TextSize"] = 14;
G2L["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1e"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1e"]["Name"] = [[ClickPart]];
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Text"] = [[]];
G2L["1e"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.Templates.DropdownTemplate.Arrow
G2L["1f"] = Instance.new("ImageLabel", G2L["1a"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["1f"]["Image"] = [[rbxassetid://13927250831]];
G2L["1f"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["1f"]["Active"] = true;
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Name"] = [[Arrow]];
G2L["1f"]["Rotation"] = 270;
G2L["1f"]["BackgroundTransparency"] = 1;
G2L["1f"]["Position"] = UDim2.new(1, 0, 0, 0);

-- StarterGui.Modern V2.Templates.DropdownTemplate.IsOpened
G2L["20"] = Instance.new("BoolValue", G2L["1a"]);
G2L["20"]["Name"] = [[IsOpened]];

-- StarterGui.Modern V2.Templates.DropdownTemplate.Options
G2L["21"] = Instance.new("ScrollingFrame", G2L["1a"]);
G2L["21"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["21"]["BackgroundTransparency"] = 1;
G2L["21"]["Size"] = UDim2.new(1, -10, 0, 0);
G2L["21"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["ScrollBarThickness"] = 0;
G2L["21"]["Position"] = UDim2.new(0, 5, 0, 30);
G2L["21"]["Name"] = [[Options]];

-- StarterGui.Modern V2.Templates.DropdownTemplate.Options.UIListLayout
G2L["22"] = Instance.new("UIListLayout", G2L["21"]);
G2L["22"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["22"]["Padding"] = UDim.new(0, 2);
G2L["22"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Modern V2.Templates.SectionTemplate
G2L["23"] = Instance.new("Frame", G2L["2"]);
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["BackgroundTransparency"] = 1;
G2L["23"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Name"] = [[SectionTemplate]];

-- StarterGui.Modern V2.Templates.SectionTemplate.Label
G2L["24"] = Instance.new("TextLabel", G2L["23"]);
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextYAlignment"] = Enum.TextYAlignment.Bottom;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["24"]["TextSize"] = 16;
G2L["24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["24"]["Size"] = UDim2.new(1, -8, 1, 0);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[Unnamed]];
G2L["24"]["Name"] = [[Label]];
G2L["24"]["BackgroundTransparency"] = 1;
G2L["24"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Modern V2.Templates.ToggleTemplate
G2L["25"] = Instance.new("Frame", G2L["2"]);
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["25"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Name"] = [[ToggleTemplate]];

-- StarterGui.Modern V2.Templates.ToggleTemplate.UICorner
G2L["26"] = Instance.new("UICorner", G2L["25"]);
G2L["26"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.ToggleTemplate.ClickPart
G2L["27"] = Instance.new("TextButton", G2L["25"]);
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["TextSize"] = 14;
G2L["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["27"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["27"]["Name"] = [[ClickPart]];
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Text"] = [[]];
G2L["27"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.Templates.ToggleTemplate.Title
G2L["28"] = Instance.new("TextLabel", G2L["25"]);
G2L["28"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["28"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["28"]["TextSize"] = 14;
G2L["28"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["28"]["Size"] = UDim2.new(1, -65, 1, -10);
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["Text"] = [[Unnamed]];
G2L["28"]["Name"] = [[Title]];
G2L["28"]["BackgroundTransparency"] = 1;
G2L["28"]["Position"] = UDim2.new(0, 5, 0.5, 0);

-- StarterGui.Modern V2.Templates.ToggleTemplate.Toggle
G2L["29"] = Instance.new("Frame", G2L["25"]);
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["29"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["29"]["Size"] = UDim2.new(0, 40, 1, -10);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Position"] = UDim2.new(1, -5, 0.5, 0);
G2L["29"]["Name"] = [[Toggle]];

-- StarterGui.Modern V2.Templates.ToggleTemplate.Toggle.UIStroke
G2L["2a"] = Instance.new("UIStroke", G2L["29"]);
G2L["2a"]["Color"] = Color3.fromRGB(170, 170, 170);

-- StarterGui.Modern V2.Templates.ToggleTemplate.Toggle.UICorner
G2L["2b"] = Instance.new("UICorner", G2L["29"]);
G2L["2b"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.ToggleTemplate.IsEnabled
G2L["2c"] = Instance.new("BoolValue", G2L["25"]);
G2L["2c"]["Name"] = [[IsEnabled]];

-- StarterGui.Modern V2.Templates.ToggleTemplate.Toggling
G2L["2d"] = Instance.new("LocalScript", G2L["25"]);
G2L["2d"]["Name"] = [[Toggling]];

-- StarterGui.Modern V2.Templates.TabButtonTemplate
G2L["2e"] = Instance.new("Frame", G2L["2"]);
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["BackgroundTransparency"] = 1;
G2L["2e"]["Size"] = UDim2.new(0, 20, 1, 0);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Name"] = [[TabButtonTemplate]];

-- StarterGui.Modern V2.Templates.TabButtonTemplate.UICorner
G2L["2f"] = Instance.new("UICorner", G2L["2e"]);
G2L["2f"]["CornerRadius"] = UDim.new(11, 0);

-- StarterGui.Modern V2.Templates.TabButtonTemplate.Label
G2L["30"] = Instance.new("TextLabel", G2L["2e"]);
G2L["30"]["ZIndex"] = 2;
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["30"]["TextSize"] = 16;
G2L["30"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["30"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["30"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Text"] = [[Unnamed]];
G2L["30"]["Name"] = [[Label]];
G2L["30"]["BackgroundTransparency"] = 1;
G2L["30"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["30"]["MaxVisibleGraphemes"] = 30;

-- StarterGui.Modern V2.Templates.TabButtonTemplate.ClickPart
G2L["31"] = Instance.new("TextButton", G2L["2e"]);
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["TextSize"] = 14;
G2L["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["31"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["31"]["Name"] = [[ClickPart]];
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Text"] = [[]];
G2L["31"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.Templates.TabButtonTemplate.IsOpened
G2L["32"] = Instance.new("BoolValue", G2L["2e"]);
G2L["32"]["Name"] = [[IsOpened]];

-- StarterGui.Modern V2.Templates.LabelTemplate
G2L["33"] = Instance.new("Frame", G2L["2"]);
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["33"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Name"] = [[LabelTemplate]];

-- StarterGui.Modern V2.Templates.LabelTemplate.UICorner
G2L["34"] = Instance.new("UICorner", G2L["33"]);
G2L["34"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.LabelTemplate.Title
G2L["35"] = Instance.new("TextLabel", G2L["33"]);
G2L["35"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["35"]["TextSize"] = 14;
G2L["35"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["35"]["Size"] = UDim2.new(1, -10, 1, -10);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Text"] = [[Unnamed]];
G2L["35"]["Name"] = [[Title]];
G2L["35"]["BackgroundTransparency"] = 1;
G2L["35"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Modern V2.Templates.ParagraphTemplate
G2L["36"] = Instance.new("Frame", G2L["2"]);
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["36"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["36"]["Name"] = [[ParagraphTemplate]];

-- StarterGui.Modern V2.Templates.ParagraphTemplate.UICorner
G2L["37"] = Instance.new("UICorner", G2L["36"]);
G2L["37"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.ParagraphTemplate.Title
G2L["38"] = Instance.new("TextLabel", G2L["36"]);
G2L["38"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["38"]["BorderSizePixel"] = 0;
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["38"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["38"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["38"]["TextSize"] = 14;
G2L["38"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["38"]["Size"] = UDim2.new(1, -10, 0, 20);
G2L["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["Text"] = [[Unnamed]];
G2L["38"]["Name"] = [[Title]];
G2L["38"]["BackgroundTransparency"] = 1;
G2L["38"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.Modern V2.Templates.ParagraphTemplate.Description
G2L["39"] = Instance.new("TextLabel", G2L["36"]);
G2L["39"]["TextWrapped"] = true;
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["39"]["TextSize"] = 12;
G2L["39"]["TextColor3"] = Color3.fromRGB(146, 146, 146);
G2L["39"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["39"]["Size"] = UDim2.new(1, -10, 0, 12);
G2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["Text"] = [[Unnamed]];
G2L["39"]["Name"] = [[Description]];
G2L["39"]["BackgroundTransparency"] = 1;
G2L["39"]["Position"] = UDim2.new(0, 5, 0, 25);

-- StarterGui.Modern V2.Templates.ParagraphTemplate.Handling
G2L["3a"] = Instance.new("LocalScript", G2L["36"]);
G2L["3a"]["Name"] = [[Handling]];

-- StarterGui.Modern V2.Templates.SliderTemplate
G2L["3b"] = Instance.new("Frame", G2L["2"]);
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["3b"]["Size"] = UDim2.new(1, -10, 0, 60);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Name"] = [[SliderTemplate]];

-- StarterGui.Modern V2.Templates.SliderTemplate.UICorner
G2L["3c"] = Instance.new("UICorner", G2L["3b"]);
G2L["3c"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.SliderTemplate.Title
G2L["3d"] = Instance.new("TextLabel", G2L["3b"]);
G2L["3d"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3d"]["TextSize"] = 14;
G2L["3d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["Size"] = UDim2.new(1, -100, 0, 20);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["Text"] = [[Unnamed]];
G2L["3d"]["Name"] = [[Title]];
G2L["3d"]["BackgroundTransparency"] = 1;
G2L["3d"]["Position"] = UDim2.new(0, 5, 0, 5);

-- StarterGui.Modern V2.Templates.SliderTemplate.Slider
G2L["3e"] = Instance.new("Frame", G2L["3b"]);
G2L["3e"]["Active"] = true;
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["3e"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["3e"]["Size"] = UDim2.new(1, -20, 0, 5);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["Position"] = UDim2.new(0.5, 0, 0, 40);
G2L["3e"]["Name"] = [[Slider]];

-- StarterGui.Modern V2.Templates.SliderTemplate.Slider.UICorner
G2L["3f"] = Instance.new("UICorner", G2L["3e"]);
G2L["3f"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.Modern V2.Templates.SliderTemplate.Slider.Progression
G2L["40"] = Instance.new("Frame", G2L["3e"]);
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Name"] = [[Progression]];

-- StarterGui.Modern V2.Templates.SliderTemplate.Slider.Progression.Cursor
G2L["41"] = Instance.new("Frame", G2L["40"]);
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["41"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["41"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["41"]["Name"] = [[Cursor]];

-- StarterGui.Modern V2.Templates.SliderTemplate.Slider.Progression.Cursor.UICorner
G2L["42"] = Instance.new("UICorner", G2L["41"]);
G2L["42"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.Modern V2.Templates.SliderTemplate.Slider.Progression.UICorner
G2L["43"] = Instance.new("UICorner", G2L["40"]);
G2L["43"]["CornerRadius"] = UDim.new(10, 0);

-- StarterGui.Modern V2.Templates.SliderTemplate.MinValue
G2L["44"] = Instance.new("IntValue", G2L["3b"]);
G2L["44"]["Name"] = [[MinValue]];

-- StarterGui.Modern V2.Templates.SliderTemplate.MaxValue
G2L["45"] = Instance.new("IntValue", G2L["3b"]);
G2L["45"]["Value"] = 100;
G2L["45"]["Name"] = [[MaxValue]];

-- StarterGui.Modern V2.Templates.SliderTemplate.Handling
G2L["46"] = Instance.new("LocalScript", G2L["3b"]);
G2L["46"]["Name"] = [[Handling]];

-- StarterGui.Modern V2.Templates.SliderTemplate.TextBox
G2L["47"] = Instance.new("TextBox", G2L["3b"]);
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["TextSize"] = 14;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["47"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["47"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["47"]["MaxVisibleGraphemes"] = 14;
G2L["47"]["Size"] = UDim2.new(0, 40, 0, 20);
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Text"] = [[0]];
G2L["47"]["Position"] = UDim2.new(1, -5, 0, 5);
G2L["47"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["47"]["ClearTextOnFocus"] = false;

-- StarterGui.Modern V2.Templates.SliderTemplate.TextBox.UICorner
G2L["48"] = Instance.new("UICorner", G2L["47"]);
G2L["48"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.SliderTemplate.TextBox.UIStroke
G2L["49"] = Instance.new("UIStroke", G2L["47"]);
G2L["49"]["Color"] = Color3.fromRGB(170, 170, 170);
G2L["49"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision
G2L["4a"] = Instance.new("Frame", G2L["3b"]);
G2L["4a"]["BorderSizePixel"] = 0;
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["4a"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["4a"]["Size"] = UDim2.new(0, 40, 0, 20);
G2L["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["Position"] = UDim2.new(1, -50, 0, 5);
G2L["4a"]["Name"] = [[Precision]];

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision.UICorner
G2L["4b"] = Instance.new("UICorner", G2L["4a"]);
G2L["4b"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision.UIStroke
G2L["4c"] = Instance.new("UIStroke", G2L["4a"]);
G2L["4c"]["Color"] = Color3.fromRGB(170, 170, 170);
G2L["4c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision.Line
G2L["4d"] = Instance.new("Frame", G2L["4a"]);
G2L["4d"]["ZIndex"] = 2;
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(170, 170, 170);
G2L["4d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4d"]["Size"] = UDim2.new(0, 2, 1, 0);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["4d"]["Name"] = [[Line]];

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision.Plus
G2L["4e"] = Instance.new("TextButton", G2L["4a"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["4e"]["TextSize"] = 16;
G2L["4e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4e"]["Size"] = UDim2.new(0.5, -1, 1, 0);
G2L["4e"]["Name"] = [[Plus]];
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["Text"] = [[+]];
G2L["4e"]["Position"] = UDim2.new(0.75, 1, 0.5, 0);

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision.Plus.UICorner
G2L["4f"] = Instance.new("UICorner", G2L["4e"]);
G2L["4f"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision.Minus
G2L["50"] = Instance.new("TextButton", G2L["4a"]);
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["50"]["TextSize"] = 16;
G2L["50"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["50"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["50"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["50"]["Size"] = UDim2.new(0.5, -1, 1, 0);
G2L["50"]["Name"] = [[Minus]];
G2L["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["Text"] = [[-]];
G2L["50"]["Position"] = UDim2.new(0.25, 0, 0.5, 0);

-- StarterGui.Modern V2.Templates.SliderTemplate.Precision.Minus.UICorner
G2L["51"] = Instance.new("UICorner", G2L["50"]);
G2L["51"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.InputTemplate
G2L["52"] = Instance.new("Frame", G2L["2"]);
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 14);
G2L["52"]["Size"] = UDim2.new(1, -10, 0, 30);
G2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Name"] = [[InputTemplate]];

-- StarterGui.Modern V2.Templates.InputTemplate.UICorner
G2L["53"] = Instance.new("UICorner", G2L["52"]);
G2L["53"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.InputTemplate.ClickPart
G2L["54"] = Instance.new("TextButton", G2L["52"]);
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["54"]["TextSize"] = 14;
G2L["54"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["54"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["54"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["54"]["Name"] = [[ClickPart]];
G2L["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["54"]["Text"] = [[]];
G2L["54"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.Templates.InputTemplate.Title
G2L["55"] = Instance.new("TextLabel", G2L["52"]);
G2L["55"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["55"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["55"]["TextSize"] = 14;
G2L["55"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["55"]["Size"] = UDim2.new(1, -60, 1, -10);
G2L["55"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["55"]["Text"] = [[Unnamed]];
G2L["55"]["Name"] = [[Title]];
G2L["55"]["BackgroundTransparency"] = 1;
G2L["55"]["Position"] = UDim2.new(0, 5, 0.5, 0);

-- StarterGui.Modern V2.Templates.InputTemplate.TextBox
G2L["56"] = Instance.new("TextBox", G2L["52"]);
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["TextSize"] = 14;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["56"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["56"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["56"]["MaxVisibleGraphemes"] = 35;
G2L["56"]["Size"] = UDim2.new(0, 40, 0, 20);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Text"] = [[]];
G2L["56"]["Position"] = UDim2.new(1, -5, 0.5, 0);
G2L["56"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["56"]["ClearTextOnFocus"] = false;

-- StarterGui.Modern V2.Templates.InputTemplate.TextBox.UICorner
G2L["57"] = Instance.new("UICorner", G2L["56"]);
G2L["57"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.Modern V2.Templates.InputTemplate.TextBox.UIStroke
G2L["58"] = Instance.new("UIStroke", G2L["56"]);
G2L["58"]["Color"] = Color3.fromRGB(170, 170, 170);
G2L["58"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.Modern V2.Templates.InputTemplate.Handling
G2L["59"] = Instance.new("LocalScript", G2L["52"]);
G2L["59"]["Name"] = [[Handling]];

-- StarterGui.Modern V2.Templates.InputTemplate.ValueType
G2L["5a"] = Instance.new("StringValue", G2L["52"]);
G2L["5a"]["Value"] = [[string]];
G2L["5a"]["Name"] = [[ValueType]];

-- StarterGui.Modern V2.Templates.TabTemplate
G2L["5b"] = Instance.new("Frame", G2L["2"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 29);
G2L["5b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5b"]["Size"] = UDim2.new(0, 550, 0, 300);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["5b"]["Name"] = [[TabTemplate]];

-- StarterGui.Modern V2.Templates.TabTemplate.UIStroke
G2L["5c"] = Instance.new("UIStroke", G2L["5b"]);
G2L["5c"]["Color"] = Color3.fromRGB(170, 170, 170);
G2L["5c"]["Transparency"] = 0.5;

-- StarterGui.Modern V2.Templates.TabTemplate.UICorner
G2L["5d"] = Instance.new("UICorner", G2L["5b"]);
G2L["5d"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.Modern V2.Templates.TabTemplate.Topbar
G2L["5e"] = Instance.new("Frame", G2L["5b"]);
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["BackgroundTransparency"] = 1;
G2L["5e"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["Name"] = [[Topbar]];

-- StarterGui.Modern V2.Templates.TabTemplate.Topbar.Label
G2L["5f"] = Instance.new("TextLabel", G2L["5e"]);
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5f"]["TextSize"] = 14;
G2L["5f"]["TextColor3"] = Color3.fromRGB(170, 170, 170);
G2L["5f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["Text"] = [[Unnamed]];
G2L["5f"]["Name"] = [[Label]];
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["5f"]["MaxVisibleGraphemes"] = 30;

-- StarterGui.Modern V2.Templates.TabTemplate.Topbar.Shadow
G2L["60"] = Instance.new("Frame", G2L["5e"]);
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["Size"] = UDim2.new(1, 0, 0, 5);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["60"]["Name"] = [[Shadow]];

-- StarterGui.Modern V2.Templates.TabTemplate.Topbar.Shadow.UIGradient
G2L["61"] = Instance.new("UIGradient", G2L["60"]);
G2L["61"]["Rotation"] = 90;
G2L["61"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(25, 25, 29))};

-- StarterGui.Modern V2.Templates.TabTemplate.Topbar.ClickPart
G2L["62"] = Instance.new("TextButton", G2L["5e"]);
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["TextSize"] = 14;
G2L["62"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["62"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["62"]["Name"] = [[ClickPart]];
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Text"] = [[]];
G2L["62"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.Templates.TabTemplate.Container
G2L["63"] = Instance.new("ScrollingFrame", G2L["5b"]);
G2L["63"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["63"]["BackgroundTransparency"] = 1;
G2L["63"]["Size"] = UDim2.new(1, 0, 1, -37);
G2L["63"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["ScrollBarThickness"] = 0;
G2L["63"]["Position"] = UDim2.new(0, 0, 0, 31);
G2L["63"]["Name"] = [[Container]];

-- StarterGui.Modern V2.Templates.TabTemplate.Container.UIListLayout
G2L["64"] = Instance.new("UIListLayout", G2L["63"]);
G2L["64"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["64"]["Padding"] = UDim.new(0, 5);
G2L["64"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Modern V2.Templates.TabTemplate.Dragging
G2L["65"] = Instance.new("LocalScript", G2L["5b"]);
G2L["65"]["Name"] = [[Dragging]];

-- StarterGui.Modern V2.TabSelector
G2L["66"] = Instance.new("Frame", G2L["1"]);
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 29);
G2L["66"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["66"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["66"]["Position"] = UDim2.new(0.5, 0, 0, 5);
G2L["66"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["66"]["Name"] = [[TabSelector]];

-- StarterGui.Modern V2.TabSelector.Container
G2L["67"] = Instance.new("ScrollingFrame", G2L["66"]);
G2L["67"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["67"]["BackgroundTransparency"] = 1;
G2L["67"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["67"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["ScrollBarThickness"] = 0;
G2L["67"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["67"]["Name"] = [[Container]];

-- StarterGui.Modern V2.TabSelector.Container.CloseButton
G2L["68"] = Instance.new("Frame", G2L["67"]);
G2L["68"]["BorderSizePixel"] = 0;
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(170, 170, 170);
G2L["68"]["BackgroundTransparency"] = 0.5;
G2L["68"]["LayoutOrder"] = 2;
G2L["68"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["68"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["68"]["Name"] = [[CloseButton]];

-- StarterGui.Modern V2.TabSelector.Container.CloseButton.Icon
G2L["69"] = Instance.new("ImageLabel", G2L["68"]);
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["69"]["Image"] = [[rbxassetid://6031094678]];
G2L["69"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["69"]["Name"] = [[Icon]];
G2L["69"]["BackgroundTransparency"] = 1;
G2L["69"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.Modern V2.TabSelector.Container.CloseButton.ClickPart
G2L["6a"] = Instance.new("TextButton", G2L["68"]);
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["TextSize"] = 14;
G2L["6a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6a"]["Name"] = [[ClickPart]];
G2L["6a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["Text"] = [[]];
G2L["6a"]["BackgroundTransparency"] = 1;

-- StarterGui.Modern V2.TabSelector.Container.CloseButton.UICorner
G2L["6b"] = Instance.new("UICorner", G2L["68"]);
G2L["6b"]["CornerRadius"] = UDim.new(11, 0);

-- StarterGui.Modern V2.TabSelector.Container.UIListLayout
G2L["6c"] = Instance.new("UIListLayout", G2L["67"]);
G2L["6c"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["6c"]["FillDirection"] = Enum.FillDirection.Horizontal;
G2L["6c"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["6c"]["Padding"] = UDim.new(0, 5);
G2L["6c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Modern V2.TabSelector.Container.Tabs
G2L["6d"] = Instance.new("ScrollingFrame", G2L["67"]);
G2L["6d"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["6d"]["BorderSizePixel"] = 0;
G2L["6d"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6d"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["6d"]["BackgroundTransparency"] = 1;
G2L["6d"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["6d"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["ScrollBarThickness"] = 0;
G2L["6d"]["Name"] = [[Tabs]];

-- StarterGui.Modern V2.TabSelector.Container.Tabs.UIListLayout
G2L["6e"] = Instance.new("UIListLayout", G2L["6d"]);
G2L["6e"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["6e"]["FillDirection"] = Enum.FillDirection.Horizontal;
G2L["6e"]["Padding"] = UDim.new(0, 2);
G2L["6e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.Modern V2.TabSelector.Container.Tabs.SizeAdjust
G2L["6f"] = Instance.new("LocalScript", G2L["6d"]);
G2L["6f"]["Name"] = [[SizeAdjust]];

-- StarterGui.Modern V2.TabSelector.UIStroke
G2L["70"] = Instance.new("UIStroke", G2L["66"]);
G2L["70"]["Color"] = Color3.fromRGB(170, 170, 170);
G2L["70"]["Transparency"] = 0.5;

-- StarterGui.Modern V2.TabSelector.UICorner
G2L["71"] = Instance.new("UICorner", G2L["66"]);
G2L["71"]["CornerRadius"] = UDim.new(11, 0);

-- StarterGui.Modern V2.TabSelector.Highlighting
G2L["72"] = Instance.new("LocalScript", G2L["66"]);
G2L["72"]["Name"] = [[Highlighting]];

-- StarterGui.Modern V2.TabSelector.CloseSelector
G2L["73"] = Instance.new("LocalScript", G2L["66"]);
G2L["73"]["Name"] = [[CloseSelector]];

-- StarterGui.Modern V2.TabSelector.IsClosed
G2L["74"] = Instance.new("BoolValue", G2L["66"]);
G2L["74"]["Name"] = [[IsClosed]];

-- StarterGui.Modern V2.TabSelector.SelectedTab
G2L["75"] = Instance.new("ObjectValue", G2L["66"]);
G2L["75"]["Name"] = [[SelectedTab]];

-- StarterGui.Modern V2.TabSelector.MultipleTabs
G2L["76"] = Instance.new("BoolValue", G2L["66"]);
G2L["76"]["Name"] = [[MultipleTabs]];

-- StarterGui.Modern V2.TabSelector.ClosePosition
G2L["77"] = Instance.new("StringValue", G2L["66"]);
G2L["77"]["Name"] = [[ClosePosition]];

-- StarterGui.Modern V2.Tabs
G2L["78"] = Instance.new("Folder", G2L["1"]);
G2L["78"]["Name"] = [[Tabs]];

-- StarterGui.Modern V2.Templates.DropdownEntryTemplate.Toggling
local function C_8()
local script = G2L["8"];
	local option = script.Parent
	local ClickPart = option.ClickPart
	local IsEnabled = option.IsEnabled
	local TweenService = game:GetService("TweenService")
	
	IsEnabled:GetPropertyChangedSignal("Value"):Connect(function()
		if IsEnabled.Value == true then
			TweenService:Create(option, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(40, 41, 63)}):Play()
		elseif IsEnabled.Value == false then
			TweenService:Create(option, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(21, 21, 32)}):Play()
		end
	end)
end;
task.spawn(C_8);
-- StarterGui.Modern V2.Templates.KeyTemplate.Handling
local function C_b()
local script = G2L["b"];
	
end;
task.spawn(C_b);
-- StarterGui.Modern V2.Templates.ButtonTemplate.CircleAnimation
local function C_17()
local script = G2L["17"];
	local button = script.Parent
	local ClickPart = button.ClickPart
	local LocalPlayer = game.Players.LocalPlayer
	local AnimContainer = button.RoundAnimationContainer
	local TweenService = game:GetService("TweenService")
	
	ClickPart.MouseButton1Click:Connect(function()
		local Mouse = LocalPlayer:GetMouse()
		local MouseDistanceLeft = Mouse.X - button.AbsolutePosition.X
		local MouseDistanceRight = (button.AbsolutePosition.X + button.AbsoluteSize.X) - Mouse.X
		
		local Circle = AnimContainer.Circle:Clone()
		Circle.Parent = AnimContainer
		
		Circle.BackgroundTransparency = 0.8
		Circle.Position = UDim2.new(0, Mouse.X - button.AbsolutePosition.X, 0, Mouse.Y - button.AbsolutePosition.Y)
		Circle.Size = UDim2.new(0, 0, 0, 1000000000)
		TweenService:Create(Circle, TweenInfo.new(0.45), {Size = UDim2.new(0, math.max(MouseDistanceLeft, MouseDistanceRight) * 2, 0, 1000000000)}):Play()
		task.wait(0.45)
		TweenService:Create(Circle, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
		task.wait(0.2)
		Circle:Destroy()
		Circle = nil
	end)
end;
task.spawn(C_17);
-- StarterGui.Modern V2.Templates.DropdownTemplate.Handling
local function C_1c()
local script = G2L["1c"];
	local button = script.Parent
	local ClickPart = button.ClickPart
	local Arrow = button.Arrow
	local IsOpened = button.IsOpened
	local Options = button.Options
	local TweenService = game:GetService("TweenService")
	
	ClickPart.MouseButton1Click:Connect(function()
		if IsOpened.Value == true then
			IsOpened.Value = false
			TweenService:Create(Arrow, TweenInfo.new(0.35), {Rotation = 270}):Play()
			TweenService:Create(Options, TweenInfo.new(0.35), {Size = UDim2.new(1, -10, 0, 0)}):Play()
		else
			IsOpened.Value = true
			TweenService:Create(Arrow, TweenInfo.new(0.35), {Rotation = 360}):Play()
			TweenService:Create(Options, TweenInfo.new(0.35), {Size = UDim2.new(1, -10, 0, Options.AbsoluteCanvasSize.Y)}):Play()
		end
	end)
	
	Options:GetPropertyChangedSignal("Size"):Connect(function()
		button.Size = UDim2.new(1, -10, 0, 30 + ((Options.AbsoluteSize.Y / Options.AbsoluteCanvasSize.Y) * 5) + Options.AbsoluteSize.Y)
	end)
	
	
end;
task.spawn(C_1c);
-- StarterGui.Modern V2.Templates.ToggleTemplate.Toggling
local function C_2d()
local script = G2L["2d"];
	local button = script.Parent
	local Toggle = button.Toggle
	local IsEnabled = button.IsEnabled
	local TweenService = game:GetService("TweenService")
	
	IsEnabled:GetPropertyChangedSignal("Value"):Connect(function()
		if IsEnabled.Value == true then
			TweenService:Create(Toggle, TweenInfo.new(0.35), {BackgroundColor3 = Color3.fromRGB(0, 192, 114)}):Play()
		elseif IsEnabled.Value == false then
			TweenService:Create(Toggle, TweenInfo.new(0.35), {BackgroundColor3 = Color3.fromRGB(33, 33, 33)}):Play()
		end
	end)
end;
task.spawn(C_2d);
-- StarterGui.Modern V2.Templates.ParagraphTemplate.Handling
local function C_3a()
local script = G2L["3a"];
	local button = script.Parent
	local description = button.Description
	if description.AbsoluteSize.Y == 0 then
		button.Size = UDim2.new(1, -10, 0, 30)
	else
		button.Size = UDim2.new(1, -10, 0, 30 + description.AbsoluteSize.Y)
	end
	
	description:GetPropertyChangedSignal("Text"):Connect(function()
		if description.AbsoluteSize.Y == 0 then
			button.Size = UDim2.new(1, -10, 0, 30)
		else
			button.Size = UDim2.new(1, -10, 0, 30 + description.AbsoluteSize.Y)
		end
	end)
end;
task.spawn(C_3a);
-- StarterGui.Modern V2.Templates.SliderTemplate.Handling
local function C_46()
local script = G2L["46"];
	local button = script.Parent
	local Min = button.MinValue
	local Max = button.MaxValue
	local slider = button.Slider
	local TextBox = button.TextBox
	local Precision = button.Precision
	local Plus = Precision.Plus
	local Minus = Precision.Minus
	local MovingSlider = false
	local LocalPlayer = game.Players.LocalPlayer
	local UserInputService = game:GetService("UserInputService")
	
	TextBox:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		Precision.Position = UDim2.new(1, -10 - TextBox.AbsoluteSize.X, 0, 5)
	end)
	
	TextBox:GetPropertyChangedSignal("Text"):Connect(function()
		if TextBox.TextBounds.X > 40 then
			if string.len(TextBox.Text) <= 14 then
				TextBox.Size = UDim2.new(0, TextBox.TextBounds.X + 4, 0, 20)
			end
		elseif TextBox.Size.X.Offset > 40 then
			TextBox.Size = UDim2.new(0, 40, 0, 20)
		end
		
		local FilteredString = ""
		for i = 1, #TextBox.Text do
			if i == 15 then break end
			if string.find(TextBox.Text:sub(i, i), "%d") then
				FilteredString = FilteredString .. TextBox.Text:sub(i, i)
			end
		end
		
		if FilteredString == "" then
			slider.Progression.Size = UDim2.new(0, 0, 1, 0)
			TextBox.Text = "0"
			return
		elseif tonumber(FilteredString) > Max.Value then
			FilteredString = tostring(Max.Value)
		elseif tonumber(FilteredString) < Min.Value then
			FilteredString = tostring(Min.Value)
		end
		
		local Percentage = (tonumber(FilteredString) - Min.Value) / (Max.Value - Min.Value)
		slider.Progression.Size = UDim2.new(Percentage, 0, 1, 0)
		TextBox.Text = tostring(tonumber(FilteredString))
	end)
	
	slider.InputBegan:Connect(function(Input)
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
				slider.Progression.Size = UDim2.new(math.clamp((Input.Position.X - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1), 0, 1, 0)
				TextBox.Text = tostring(math.ceil(Min.Value + slider.Progression.Size.X.Scale * (Max.Value - Min.Value)))
			end
		end
	end)
	
	Plus.MouseButton1Click:Connect(function()
		TextBox.Text = tostring(math.ceil(tonumber(TextBox.Text) + 1))
	end)
	
	Minus.MouseButton1Click:Connect(function()
		TextBox.Text = tostring(math.ceil(tonumber(TextBox.Text) - 1))
	end)
end;
task.spawn(C_46);
-- StarterGui.Modern V2.Templates.InputTemplate.Handling
local function C_59()
local script = G2L["59"];
	local button = script.Parent
	local Title = button.Title
	local TextBox = button.TextBox
	local ValueType = button.ValueType
	local UserInputService = game:GetService("UserInputService")
	
	TextBox:GetPropertyChangedSignal("Text"):Connect(function()
		if TextBox.TextBounds.X > 40 then
			if string.len(TextBox.Text) <= 35 then
				TextBox.Size = UDim2.new(0, TextBox.TextBounds.X + 4, 0, 20)
			end
		elseif TextBox.Size.X.Offset > 40 then
			TextBox.Size = UDim2.new(0, 40, 0, 20)
		end
		
		local FilteredString = ""
		local Filter = (ValueType.Value == "int" and "%d") or (ValueType.Value == "string" and "")
		for i = 1, #TextBox.Text do
			if i == 36 then break end
			if string.find(TextBox.Text:sub(i, i), Filter) then
				FilteredString = FilteredString .. TextBox.Text:sub(i, i)
			end
		end
		
		TextBox.Text = FilteredString
		Title.Size = UDim2.new(1, -20 - TextBox.AbsoluteSize.X, 1, -10)
	end)
end;
task.spawn(C_59);
-- StarterGui.Modern V2.Templates.TabTemplate.Dragging
local function C_65()
local script = G2L["65"];
	local tabs = script.Parent.Parent
	local tab = script.Parent
	local topbar = tab.Topbar
	local isDragging, DragStart, DragPos = nil, nil, nil
	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	
	topbar.ClickPart.InputBegan:Connect(function(Input)
		if (Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch) then
			isDragging = true
			DragStart = Input.Position
			StartPos = tab.Position
			
			for _, Tab in pairs(tabs:GetChildren()) do
				Tab.ZIndex = 1
			end
			tab.ZIndex = 2
			
			local InputConnection = Input.Changed:Connect(function()
				if Input.UserInputState == Enum.UserInputState.End then
					isDragging = false
				end
			end)
			repeat task.wait() until isDragging == false
			InputConnection:Disconnect()
		end
	end)
	
	UserInputService.InputChanged:Connect(function(Input)
		if (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch) then
			if isDragging == true then
				local delta = Input.Position - DragStart
				local position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + delta.X, StartPos.Y.Scale, StartPos.Y.Offset + delta.Y)
				tab.Position = position
				-- TweenService:Create(tab, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {Position = position}):Play()
			end
		end
	end)
end;
task.spawn(C_65);
-- StarterGui.Modern V2.TabSelector.Container.Tabs.SizeAdjust
local function C_6f()
local script = G2L["6f"];
	script.Parent.AutomaticSize = Enum.AutomaticSize.None
	script.Parent.Size = UDim2.new(0, script.Parent.AbsoluteCanvasSize.X, 0, 30)
	-- if script.Parent.AbsoluteCanvasSize.X == 0 then script.Parent.Visible = false end
	
	if workspace.CurrentCamera.ViewportSize.X - 50 > script.Parent.AbsoluteCanvasSize.X then
		script.Parent.Size = UDim2.new(0, script.Parent.AbsoluteCanvasSize.X, 0, 30)
	else
		script.Parent.Size = UDim2.new(0, workspace.CurrentCamera.ViewportSize.X - 50, 0, 30)
	end
	
	script.Parent:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(function()
		-- if script.Parent.AbsoluteCanvasSize.X == 0 then script.Parent.Visible = false; return else script.Parent.Visible = true end
		if workspace.CurrentCamera.ViewportSize.X - 50 > script.Parent.AbsoluteCanvasSize.X then
			script.Parent.Size = UDim2.new(0, script.Parent.AbsoluteCanvasSize.X, 0, 30)
		else
			script.Parent.Size = UDim2.new(0, workspace.CurrentCamera.ViewportSize.X - 50, 0, 30)
		end
	end)
end;
task.spawn(C_6f);
-- StarterGui.Modern V2.TabSelector.Highlighting
local function C_72()
local script = G2L["72"];
	local tabSelector = script.Parent
	local selectedTab = tabSelector.SelectedTab
	local MultipleTabs = tabSelector.MultipleTabs
	local Tabs = tabSelector.Container.Tabs
	local TweenService = game:GetService("TweenService")
	
	for _, Tab in pairs(Tabs:GetChildren()) do
		if not (Tab:IsA("UIListLayout") or Tab:IsA("LocalScript")) then
			Tab.ClickPart.MouseButton1Click:Connect(function()
				if MultipleTabs.Value == false then
					if selectedTab.Value then
						TweenService:Create(selectedTab.Value, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
						TweenService:Create(selectedTab.Value.Label, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
						if selectedTab.Value == Tab then selectedTab.Value = nil; return end
					end
					TweenService:Create(Tab, TweenInfo.new(0.5), {BackgroundTransparency = 0.2}):Play()
					TweenService:Create(Tab.Label, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(24, 24, 28)}):Play()
					selectedTab.Value = Tab
				else
					if Tab.IsOpened.Value == true then
						TweenService:Create(Tab, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
						TweenService:Create(Tab.Label, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
					else
						TweenService:Create(Tab, TweenInfo.new(0.5), {BackgroundTransparency = 0.2}):Play()
						TweenService:Create(Tab.Label, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(24, 24, 28)}):Play()
					end
				end
			end)
		end
	end
	
	Tabs.ChildAdded:Connect(function(Tab)
		Tab.ClickPart.MouseButton1Click:Connect(function()
			if MultipleTabs.Value == false then
				if selectedTab.Value then
					TweenService:Create(selectedTab.Value, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
					TweenService:Create(selectedTab.Value.Label, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
					if selectedTab.Value == Tab then selectedTab.Value = nil; return end
				end
				TweenService:Create(Tab, TweenInfo.new(0.5), {BackgroundTransparency = 0.2}):Play()
				TweenService:Create(Tab.Label, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(24, 24, 28)}):Play()
				selectedTab.Value = Tab
			else
				if Tab.IsOpened.Value == true then
					TweenService:Create(Tab, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
					TweenService:Create(Tab.Label, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				else
					TweenService:Create(Tab, TweenInfo.new(0.5), {BackgroundTransparency = 0.2}):Play()
					TweenService:Create(Tab.Label, TweenInfo.new(0.5), {TextColor3 = Color3.fromRGB(24, 24, 28)}):Play()
				end
			end
		end)
	end)
end;
task.spawn(C_72);
-- StarterGui.Modern V2.TabSelector.CloseSelector
local function C_73()
local script = G2L["73"];
	local selector = script.Parent
	local IsClosed = selector.IsClosed
	local ClosePosition = selector.ClosePosition
	local Container = selector.Container
	local CloseButton = Container.CloseButton
	local ClickPart = CloseButton.ClickPart
	local Icon = CloseButton.Icon
	local Tabs = Container.Tabs
	local TweenService = game:GetService("TweenService")
	
	local OldSize = 0
	local OnCooldown = false
	
	ClickPart.MouseButton1Click:Connect(function()
		if OnCooldown == false then
			IsClosed.Value = not IsClosed.Value
			OnCooldown = true
			task.wait(0.2)
			OnCooldown = false
		end
	end)
	
	IsClosed:GetPropertyChangedSignal("Value"):Connect(function()
		if IsClosed.Value == true then
			if ClosePosition.Value == "center" then
				TweenService:Create(selector, TweenInfo.new(0.2), {AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, selector.AbsolutePosition.Y)}):Play()
			elseif ClosePosition.Value == "left" then
				TweenService:Create(selector, TweenInfo.new(0.2), {AnchorPoint = Vector2.new(0, 0), Position = UDim2.new(0, 25, 0, selector.AbsolutePosition.Y)}):Play()
			elseif ClosePosition.Value == "right" then
				TweenService:Create(selector, TweenInfo.new(0.2), {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -25, 0, selector.AbsolutePosition.Y)}):Play()
			end
			
			OldSize = Tabs.AbsoluteSize.X
			TweenService:Create(Tabs, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 30)}):Play()
			TweenService:Create(Container.UIListLayout, TweenInfo.new(0.2), {Padding = UDim.new(0, 0)}):Play()
			TweenService:Create(Icon, TweenInfo.new(0.2), {Rotation = 45}):Play()
		else
			TweenService:Create(selector, TweenInfo.new(0.2), {AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, selector.AbsolutePosition.Y)}):Play()
			TweenService:Create(Tabs, TweenInfo.new(0.2), {Size = UDim2.new(0, OldSize, 0, 30)}):Play()
			TweenService:Create(Container.UIListLayout, TweenInfo.new(0.2), {Padding = UDim.new(0, 5)}):Play()
			TweenService:Create(Icon, TweenInfo.new(0.2), {Rotation = 0}):Play()
		end
	end)
end;
task.spawn(C_73);

return G2L["1"], require;
