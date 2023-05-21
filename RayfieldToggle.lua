--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88 
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER
]=]

-- Instances: 6 | Scripts: 1 | Modules: 0
local G2L = {};
local CoreGui = game:GetService("CoreGui");
local Rayfield = game:GetObjects("rbxassetid://10804731440")[1];
local VirtualUser = game:GetService('VirtualUser');
VirtualUser:CaptureController();

-- StarterGui.RayfieldToggle
G2L["1"] = Instance.new("ScreenGui");
G2L["1"]["Name"] = [[RayfieldToggle]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

if get_hidden_gui or gethui then
	local hiddenUI = get_hidden_gui or gethui
    G2L["1"]["Parent"] = hiddenUI()
elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
	syn.protect_gui(G2L["1"])
    G2L["1"]["Parent"] = CoreGui
elseif COREGUI:FindFirstChild('RobloxGui') then
	G2L["1"]["Parent"] = CoreGui.RobloxGui
else
	G2L["1"]["Parent"] = CoreGui
end

-- StarterGui.RayfieldToggle.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(111, 5, 110);
G2L["2"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 100, 0, 50);
G2L["2"]["Position"] = UDim2.new(0, 0, 0.25, 0);

-- StarterGui.RayfieldToggle.Frame.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);


-- StarterGui.RayfieldToggle.Frame.TextButton
G2L["4"] = Instance.new("TextButton", G2L["2"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(111, 5, 110);
G2L["4"]["TextSize"] = 30;
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["Size"] = UDim2.new(0, 100, 0, 50);
G2L["4"]["Text"] = [[Toggle]];

-- StarterGui.RayfieldToggle.Frame.TextButton.UICorner
G2L["5"] = Instance.new("UICorner", G2L["4"]);

G2L["4"].MouseButton1Click:Connect(function()
    if gethui then
        for _, Interface in ipairs(gethui():GetChildren()) do
            if Interface.Name == Rayfield.Name and Interface ~= Rayfield then
                if Interface.Enabled == true then
                    Interface.Enabled = false
                else
                    Interface.Enabled = true
                end
            end
        end
    else
        for _, Interface in ipairs(CoreGui:GetChildren()) do
            if Interface.Name == Rayfield.Name and Interface ~= Rayfield then
                if Interface.Enabled == true then
                    Interface.Enabled = false
                else
                    Interface.Enabled = true
                end
            end
        end
    end
end)

return G2L["1"], require;
