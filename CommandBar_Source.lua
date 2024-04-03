--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88 
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER
]=]

-- Instances: 21 | Scripts: 0 | Modules: 0
local G2L = {};

-- StarterGui.BetterCommandBar
G2L["1"] = Instance.new("ScreenGui");
G2L["1"]["Name"] = [[BetterCommandBar]];
G2L["1"]["ResetOnSpawn"] = true;

if gethui and gethui() then
	G2L["1"]["Parent"] = gethui()
elseif CoreGui then
	if CoreGui.RobloxGui then
		G2L["1"]["Parent"] = CoreGui.RobloxGui
	else
		G2L["1"]["Parent"] = CoreGui
	end
else
	G2L["1"]["Parent"] = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
end

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

-- StarterGui.BetterCommandBar.Entry.MaximizeButton
G2L["7"] = Instance.new("ImageButton", G2L["2"]);
G2L["7"]["ZIndex"] = 3;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["7"]["ImageTransparency"] = 1;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["7"]["Image"] = [[rbxassetid://14702740038]];
G2L["7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7"]["Name"] = [[MaximizeButton]];
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Visible"] = false;
G2L["7"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["7"]["BackgroundTransparency"] = 1;

-- StarterGui.BetterCommandBar.Entry.MaximizeButton.UIAspectRatioConstraint
G2L["8"] = Instance.new("UIAspectRatioConstraint", G2L["7"]);
G2L["8"]["DominantAxis"] = Enum.DominantAxis.Height;

-- StarterGui.BetterCommandBar.SuggestionsList
G2L["9"] = Instance.new("ScrollingFrame", G2L["1"]);
G2L["9"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Size"] = UDim2.new(0, 500, 1, -140);
G2L["9"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["ScrollBarThickness"] = 0;
G2L["9"]["Position"] = UDim2.new(0.5, 0, 0, 100);
G2L["9"]["Visible"] = false;
G2L["9"]["Name"] = [[SuggestionsList]];

-- StarterGui.BetterCommandBar.SuggestionsList.UIListLayout
G2L["a"] = Instance.new("UIListLayout", G2L["9"]);
G2L["a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["a"]["Padding"] = UDim.new(0, 10);
G2L["a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.BetterCommandBar.Templates
G2L["b"] = Instance.new("Frame", G2L["1"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Visible"] = false;
G2L["b"]["Name"] = [[Templates]];

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplateBig
G2L["c"] = Instance.new("Frame", G2L["b"]);
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(67, 67, 75);
G2L["c"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["c"]["BackgroundTransparency"] = 0.3499999940395355;
G2L["c"]["Size"] = UDim2.new(0, 500, 0, 100);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Position"] = UDim2.new(0.5, 0, 0, 40);
G2L["c"]["Name"] = [[SuggestionTemplateBig]];

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplateBig.UICorner
G2L["d"] = Instance.new("UICorner", G2L["c"]);
G2L["d"]["CornerRadius"] = UDim.new(0, 20);

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplateBig.Title
G2L["e"] = Instance.new("TextLabel", G2L["c"]);
G2L["e"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["RichText"] = true;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e"]["TextSize"] = 16;
G2L["e"]["TextColor3"] = Color3.fromRGB(186, 186, 186);
G2L["e"]["Size"] = UDim2.new(1, -40, 0, 40);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Text"] = [[Unnamed]];
G2L["e"]["Name"] = [[Title]];
G2L["e"]["BackgroundTransparency"] = 1;
G2L["e"]["Position"] = UDim2.new(0, 20, 0, 0);

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplateBig.Description
G2L["f"] = Instance.new("TextLabel", G2L["c"]);
G2L["f"]["TextWrapped"] = true;
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f"]["TextSize"] = 14;
G2L["f"]["TextColor3"] = Color3.fromRGB(184, 184, 184);
G2L["f"]["Size"] = UDim2.new(1, -40, 1, -52);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Text"] = [[No description given]];
G2L["f"]["Name"] = [[Description]];
G2L["f"]["BackgroundTransparency"] = 1;
G2L["f"]["Position"] = UDim2.new(0, 20, 0, 40);

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplateBig.ClickPart
G2L["10"] = Instance.new("TextButton", G2L["c"]);
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

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplate
G2L["11"] = Instance.new("Frame", G2L["b"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(67, 67, 75);
G2L["11"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["11"]["BackgroundTransparency"] = 0.3499999940395355;
G2L["11"]["Size"] = UDim2.new(0, 500, 0, 40);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Position"] = UDim2.new(0.5, 0, 0, 40);
G2L["11"]["Name"] = [[SuggestionTemplate]];

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplate.UICorner
G2L["12"] = Instance.new("UICorner", G2L["11"]);
G2L["12"]["CornerRadius"] = UDim.new(0, 20);

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplate.Title
G2L["13"] = Instance.new("TextLabel", G2L["11"]);
G2L["13"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["RichText"] = true;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13"]["TextSize"] = 16;
G2L["13"]["TextColor3"] = Color3.fromRGB(186, 186, 186);
G2L["13"]["Size"] = UDim2.new(0.5, -20, 1, 0);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Text"] = [[Unnamed]];
G2L["13"]["Name"] = [[Title]];
G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["Position"] = UDim2.new(0, 20, 0, 0);

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplate.Description
G2L["14"] = Instance.new("TextLabel", G2L["11"]);
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14"]["TextSize"] = 14;
G2L["14"]["TextColor3"] = Color3.fromRGB(184, 184, 184);
G2L["14"]["Size"] = UDim2.new(0.5, -20, 1, 0);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[No description given]];
G2L["14"]["Name"] = [[Description]];
G2L["14"]["BackgroundTransparency"] = 1;
G2L["14"]["Position"] = UDim2.new(0.5, 0, 0, 0);

-- StarterGui.BetterCommandBar.Templates.SuggestionTemplate.ClickPart
G2L["15"] = Instance.new("TextButton", G2L["11"]);
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


return G2L["1"], require;
