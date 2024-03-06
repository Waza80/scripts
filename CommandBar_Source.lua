--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88 
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER
]=]

-- Instances: 19 | Scripts: 0 | Modules: 0
local G2L = {};

-- StarterGui.BetterCommandBar
G2L["1"] = Instance.new("ScreenGui", ((gethui or game:GetService("CoreGui") or game:GetService("Players"):WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[BetterCommandBar]];

-- StarterGui.BetterCommandBar.Entry
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(67, 67, 75);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["2"]["BackgroundTransparency"] = 0.3499999940395355;
G2L["2"]["Size"] = UDim2.new(0, 500, 0, 40);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0, 40);
G2L["2"]["Name"] = [[Entry]];

-- StarterGui.BetterCommandBar.Entry.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(0, 20);

-- StarterGui.BetterCommandBar.Entry.UIStroke
G2L["4"] = Instance.new("UIStroke", G2L["2"]);
G2L["4"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["Thickness"] = 2;
G2L["4"]["Transparency"] = 0.3499999940395355;

-- StarterGui.BetterCommandBar.Entry.Input
G2L["5"] = Instance.new("TextBox", G2L["2"]);
G2L["5"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
G2L["5"]["ZIndex"] = 2;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextSize"] = 16;
G2L["5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["PlaceholderText"] = [[Enter a command...]];
G2L["5"]["Size"] = UDim2.new(1, -40, 1, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[]];
G2L["5"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["5"]["Name"] = [[Input]];
G2L["5"]["ClearTextOnFocus"] = false;

-- StarterGui.BetterCommandBar.Entry.SuggestionField
G2L["6"] = Instance.new("TextLabel", G2L["2"]);
G2L["6"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["TextSize"] = 16;
G2L["6"]["TextColor3"] = Color3.fromRGB(179, 179, 179);
G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["6"]["Size"] = UDim2.new(1, -40, 1, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[]];
G2L["6"]["Name"] = [[SuggestionField]];
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Position"] = UDim2.new(0.5, 0, 0, 0);

-- StarterGui.BetterCommandBar.SuggestionsList
G2L["7"] = Instance.new("ScrollingFrame", G2L["1"]);
G2L["7"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Size"] = UDim2.new(0, 500, 1, -140);
G2L["7"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["ScrollBarThickness"] = 0;
G2L["7"]["Position"] = UDim2.new(0.5, 0, 0, 100);
G2L["7"]["Visible"] = false;
G2L["7"]["Name"] = [[SuggestionsList]];

-- StarterGui.BetterCommandBar.SuggestionsList.UIListLayout
G2L["8"] = Instance.new("UIListLayout", G2L["7"]);
G2L["8"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["8"]["Padding"] = UDim.new(0, 10);
G2L["8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.BetterCommandBar.Templates
G2L["9"] = Instance.new("Frame", G2L["1"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Visible"] = false;
G2L["9"]["Name"] = [[Templates]];

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplateBig
G2L["a"] = Instance.new("Frame", G2L["9"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(67, 67, 75);
G2L["a"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["a"]["BackgroundTransparency"] = 0.3499999940395355;
G2L["a"]["Size"] = UDim2.new(0, 500, 0, 100);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Position"] = UDim2.new(0.5, 0, 0, 40);
G2L["a"]["Name"] = [[SuggestionTemplateBig]];

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplateBig.UICorner
G2L["b"] = Instance.new("UICorner", G2L["a"]);
G2L["b"]["CornerRadius"] = UDim.new(0, 20);

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplateBig.Title
G2L["c"] = Instance.new("TextLabel", G2L["a"]);
G2L["c"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["RichText"] = true;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c"]["TextSize"] = 16;
G2L["c"]["TextColor3"] = Color3.fromRGB(186, 186, 186);
G2L["c"]["Size"] = UDim2.new(1, -40, 0, 40);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = [[Unnamed]];
G2L["c"]["Name"] = [[Title]];
G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["Position"] = UDim2.new(0, 20, 0, 0);

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplateBig.Description
G2L["d"] = Instance.new("TextLabel", G2L["a"]);
G2L["d"]["TextWrapped"] = true;
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d"]["TextSize"] = 14;
G2L["d"]["TextColor3"] = Color3.fromRGB(184, 184, 184);
G2L["d"]["Size"] = UDim2.new(1, -40, 1, -52);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Text"] = [[No description given]];
G2L["d"]["Name"] = [[Description]];
G2L["d"]["BackgroundTransparency"] = 1;
G2L["d"]["Position"] = UDim2.new(0, 20, 0, 40);

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplateBig.ClickPart
G2L["e"] = Instance.new("TextButton", G2L["a"]);
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

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplate
G2L["f"] = Instance.new("Frame", G2L["9"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(67, 67, 75);
G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["f"]["BackgroundTransparency"] = 0.3499999940395355;
G2L["f"]["Size"] = UDim2.new(0, 500, 0, 40);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Position"] = UDim2.new(0.5, 0, 0, 40);
G2L["f"]["Name"] = [[SuggestionTemplate]];

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplate.UICorner
G2L["10"] = Instance.new("UICorner", G2L["f"]);
G2L["10"]["CornerRadius"] = UDim.new(0, 20);

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplate.Title
G2L["11"] = Instance.new("TextLabel", G2L["f"]);
G2L["11"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["RichText"] = true;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["TextSize"] = 16;
G2L["11"]["TextColor3"] = Color3.fromRGB(186, 186, 186);
G2L["11"]["Size"] = UDim2.new(0.5, -20, 1, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Text"] = [[Unnamed]];
G2L["11"]["Name"] = [[Title]];
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Position"] = UDim2.new(0, 20, 0, 0);

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplate.Description
G2L["12"] = Instance.new("TextLabel", G2L["f"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12"]["TextSize"] = 14;
G2L["12"]["TextColor3"] = Color3.fromRGB(184, 184, 184);
G2L["12"]["Size"] = UDim2.new(0.5, -20, 1, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Text"] = [[No description given]];
G2L["12"]["Name"] = [[Description]];
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["Position"] = UDim2.new(0.5, 0, 0, 0);

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplate.ClickPart
G2L["13"] = Instance.new("TextButton", G2L["f"]);
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["TextSize"] = 14;
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["13"]["Name"] = [[ClickPart]];
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Text"] = [[]];
G2L["13"]["BackgroundTransparency"] = 1;


return G2L["1"], require;
