--[[
    By Waza80

    Bad notification script that I use in some of my scripts
    [16/01/2024] Updated the UI

    Skid if you want, but don't forget to use gethui() instead
]]

-- variables
local G2L1, G2L2, G2L3, N = {}, {}, {}, {}

-- services
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

-- functions
function N:Notify(Text, ButtonText, TweenTime, WaitForClick)
    if Text == nil then return end
    ButtonText = ButtonText or "I understand"
    TweenTime = TweenTime or 0.5
    WaitForClick = WaitForClick or false

    G2L1["1"] = Instance.new("ScreenGui", CoreGui);
    G2L1["1"]["Name"] = "Notification";
    G2L1["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

    G2L1["2"] = Instance.new("Frame", G2L1["1"]);
    G2L1["2"]["BorderSizePixel"] = 0;
    G2L1["2"]["BackgroundColor3"] = Color3.fromRGB(24, 29, 36);
    G2L1["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L1["2"]["Size"] = UDim2.new(0, 300, 0, 100);
    G2L1["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L1["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    G2L1["2"]["BackgroundTransparency"] = 1;

    G2L1["3"] = Instance.new("UICorner", G2L1["2"]);
    G2L1["3"]["CornerRadius"] = UDim.new(0, 6);

    G2L1["4"] = Instance.new("UIStroke", G2L1["2"]);
    G2L1["4"]["Color"] = Color3.fromRGB(47, 53, 65);
    G2L1["4"]["Thickness"] = 4;

    G2L1["5"] = Instance.new("TextLabel", G2L1["2"]);
    G2L1["5"]["TextWrapped"] = true;
    G2L1["5"]["BorderSizePixel"] = 0;
    G2L1["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L1["5"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L1["5"]["TextSize"] = 30;
    G2L1["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L1["5"]["Size"] = UDim2.new(1, -20, 1, -60);
    G2L1["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L1["5"]["Text"] = Text;
    G2L1["5"]["Name"] = "Label";
    G2L1["5"]["BackgroundTransparency"] = 1;
    G2L1["5"]["Position"] = UDim2.new(0, 10, 0, 0);
    G2L1["5"]["TextTransparency"] = 1;

    G2L1["6"] = Instance.new("TextButton", G2L1["2"]);
    G2L1["6"]["TextWrapped"] = true;
    G2L1["6"]["BorderSizePixel"] = 0;
    G2L1["6"]["BackgroundColor3"] = Color3.fromRGB(219, 219, 219);
    G2L1["6"]["TextSize"] = 100;
    G2L1["6"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L1["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
    G2L1["6"]["AnchorPoint"] = Vector2.new(0, 1);
    G2L1["6"]["Size"] = UDim2.new(1, -20, 0, 40);
    G2L1["6"]["Name"] = "Ok";
    G2L1["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L1["6"]["Text"] = ButtonText;
    G2L1["6"]["Position"] = UDim2.new(0, 10, 1, -10);
    G2L1["6"]["BackgroundTransparency"] = 1;
    G2L1["6"]["TextTransparency"] = 1;

    G2L1["7"] = Instance.new("UICorner", G2L1["6"]);

    G2L1["8"] = Instance.new("UIStroke", G2L1["6"]);
    G2L1["8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    G2L1["9"] = Instance.new("UITextSizeConstraint", G2L1["6"]);
    G2L1["9"]["MaxTextSize"] = 22;

    G2L1["10"] = Instance.new("BlurEffect", workspace.CurrentCamera);
    G2L1["10"]["Size"] = 0;

    local Clicked = nil

    G2L1["6"].MouseButton1Click:Connect(function()
        G2L1["1"]:Destroy()
        G2L1["10"]:Destroy()
        Clicked = true
    end)

    for i = 0, math.floor(G2L1["5"]["TextBounds"]["X"] / G2L1["2"]["AbsoluteSize"]["X"]) do
        G2L1["2"]["Size"] = UDim2.new(0, G2L1["2"]["AbsoluteSize"]["X"], 0, G2L1["2"]["AbsoluteSize"]["Y"] + 30)
    end

    for i = 1, select(2, G2L1["5"]["Text"]:gsub("\n", "")) do
        G2L1["2"]["Size"] = UDim2.new(0, G2L1["2"]["AbsoluteSize"]["X"], 0, G2L1["2"]["AbsoluteSize"]["Y"] + 30)
    end

    local tweens = {
        ["2"] = {BackgroundTransparency = 0},
        ["5"] = {TextTransparency = 0},
        ["6"] = {BackgroundTransparency = 0, TextTransparency = 0},
        ["10"] = {Size = 10}
    }

    for i, Properties in pairs(tweens) do
        TweenService:Create(G2L1[i], TweenInfo.new(TweenTime), Properties):Play()
    end

    if WaitForClick then
        repeat task.wait() until Clicked == true
    end
end

function N:Prompt(Text, YesText, NoText, TweenTime)
    if Text == nil then return end
    YesText = YesText or "Yes"
    NoText = NoText or "No"
    TweenTime = TweenTime or 0.5

    G2L2["1"] = Instance.new("ScreenGui", CoreGui);
    G2L2["1"]["Name"] = "Prompt";
    G2L2["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

    G2L2["2"] = Instance.new("Frame", G2L2["1"]);
    G2L2["2"]["BorderSizePixel"] = 0;
    G2L2["2"]["BackgroundColor3"] = Color3.fromRGB(24, 29, 36);
    G2L2["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L2["2"]["Size"] = UDim2.new(0, 400, 0, 100);
    G2L2["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    G2L2["2"]["BackgroundTransparency"] = 1;

    G2L2["3"] = Instance.new("UICorner", G2L2["2"]);
    G2L2["3"]["CornerRadius"] = UDim.new(0, 6);

    G2L2["4"] = Instance.new("UIStroke", G2L2["2"]);
    G2L2["4"]["Color"] = Color3.fromRGB(47, 53, 65);
    G2L2["4"]["Thickness"] = 4;

    G2L2["5"] = Instance.new("TextLabel", G2L2["2"]);
    G2L2["5"]["TextWrapped"] = true;
    G2L2["5"]["BorderSizePixel"] = 0;
    G2L2["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L2["5"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L2["5"]["TextSize"] = 30;
    G2L2["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L2["5"]["Size"] = UDim2.new(1, -20, 1, -60);
    G2L2["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["5"]["Text"] = Text;
    G2L2["5"]["Name"] = "Label";
    G2L2["5"]["BackgroundTransparency"] = 1;
    G2L2["5"]["Position"] = UDim2.new(0, 10, 0, 0);
    G2L2["5"]["TextTransparency"] = 1;

    G2L2["6"] = Instance.new("TextButton", G2L2["2"]);
    G2L2["6"]["TextWrapped"] = true;
    G2L2["6"]["BorderSizePixel"] = 0;
    G2L2["6"]["TextScaled"] = true;
    G2L2["6"]["BackgroundColor3"] = Color3.fromRGB(255, 213, 122);
    G2L2["6"]["TextSize"] = 100;
    G2L2["6"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L2["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["6"]["AnchorPoint"] = Vector2.new(0, 1);
    G2L2["6"]["Size"] = UDim2.new(0.5, -15, 0, 40);
    G2L2["6"]["Name"] = "Yes";
    G2L2["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["6"]["Text"] = YesText;
    G2L2["6"]["Position"] = UDim2.new(0, 10, 1, -10);
    G2L2["6"]["BackgroundTransparency"] = 1;
    G2L2["6"]["TextTransparency"] = 1;

    G2L2["7"] = Instance.new("UIStroke", G2L2["6"]);
    G2L2["7"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    G2L2["8"] = Instance.new("UITextSizeConstraint", G2L2["6"]);
    G2L2["8"]["MaxTextSize"] = 22;

    G2L2["9"] = Instance.new("UICorner", G2L2["6"]);

    G2L2["a"] = Instance.new("TextButton", G2L2["2"]);
    G2L2["a"]["TextWrapped"] = true;
    G2L2["a"]["BorderSizePixel"] = 0;
    G2L2["a"]["BackgroundColor3"] = Color3.fromRGB(248, 39, 22);
    G2L2["a"]["TextSize"] = 100;
    G2L2["a"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L2["a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["a"]["AnchorPoint"] = Vector2.new(0, 1);
    G2L2["a"]["Size"] = UDim2.new(0.5, -15, 0, 40);
    G2L2["a"]["Name"] = "No";
    G2L2["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["a"]["Text"] = NoText;
    G2L2["a"]["Position"] = UDim2.new(0.5, 5, 1, -10);
    G2L2["a"]["BackgroundTransparency"] = 1;
    G2L2["a"]["TextTransparency"] = 1;

    G2L2["b"] = Instance.new("UICorner", G2L2["a"]);

    G2L2["c"] = Instance.new("UIStroke", G2L2["a"]);
    G2L2["c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    G2L2["d"] = Instance.new("UITextSizeConstraint", G2L2["a"]);
    G2L2["d"]["MaxTextSize"] = 22;

    G2L2["e"] = Instance.new("Frame", G2L2["2"]);
    G2L2["e"]["BorderSizePixel"] = 0;
    G2L2["e"]["BackgroundColor3"] = Color3.fromRGB(47, 53, 65);
    G2L2["e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L2["e"]["Size"] = UDim2.new(0, 30, 0, 30);
    G2L2["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["e"]["Position"] = UDim2.new(1, 2, 0, -2);
    G2L2["e"]["BackgroundTransparency"] = 1;

    G2L2["f"] = Instance.new("ImageLabel", G2L2["e"]);
    G2L2["f"]["BorderSizePixel"] = 0;
    G2L2["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L2["f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L2["f"]["Image"] = "rbxassetid://15579335924";
    G2L2["f"]["Size"] = UDim2.new(0, 20, 0, 20);
    G2L2["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["f"]["Name"] = "Icon";
    G2L2["f"]["BackgroundTransparency"] = 1;
    G2L2["f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    G2L2["f"]["ImageTransparency"] = 1;

    G2L2["10"] = Instance.new("TextButton", G2L2["e"]);
    G2L2["10"]["BorderSizePixel"] = 0;
    G2L2["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L2["10"]["TextSize"] = 14;
    G2L2["10"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L2["10"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["10"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L2["10"]["Name"] = "ClickPart";
    G2L2["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["10"]["Text"] = "";
    G2L2["10"]["BackgroundTransparency"] = 1;

    G2L2["11"] = Instance.new("UICorner", G2L2["e"]);

    G2L2["12"] = Instance.new("UIStroke", G2L2["e"]);
    G2L2["12"]["Color"] = Color3.fromRGB(24, 29, 36);

    G2L2["13"] = Instance.new("BlurEffect", workspace.CurrentCamera);
    G2L2["13"]["Size"] = 0;

    local Chosen = "no choice"

    G2L2["6"].MouseButton1Click:Connect(function()
        G2L2["1"]:Destroy()
        G2L2["13"]:Destroy()
        Chosen = true
    end)

    G2L2["a"].MouseButton1Click:Connect(function()
        G2L2["1"]:Destroy()
        G2L2["13"]:Destroy()
        Chosen = false
    end)

    G2L2["10"].MouseButton1Click:Connect(function()
        G2L2["1"]:Destroy()
        G2L2["13"]:Destroy()
        Chosen = nil
    end)

    for i = 0, math.floor(G2L2["5"]["TextBounds"]["X"] / G2L2["2"]["AbsoluteSize"]["X"]) do
        G2L2["2"]["Size"] = UDim2.new(0, G2L2["2"]["AbsoluteSize"]["X"], 0, G2L2["2"]["AbsoluteSize"]["Y"] + 30)
    end

    for i = 1, select(2, G2L2["5"]["Text"]:gsub("\n", "")) do
        G2L2["2"]["Size"] = UDim2.new(0, G2L2["2"]["AbsoluteSize"]["X"], 0, G2L2["2"]["AbsoluteSize"]["Y"] + 30)
    end

    G2L2["f"].MouseEnter:Connect(function()
        G2L2["f"]["ImageColor3"] = Color3.fromRGB(255, 0, 0)
    end)

    G2L2["f"].MouseLeave:Connect(function()
        G2L2["f"]["ImageColor3"] = Color3.fromRGB(255, 255, 255)
    end)

    local tweens = {
        ["2"] = {BackgroundTransparency = 0},
        ["5"] = {TextTransparency = 0},
        ["6"] = {BackgroundTransparency = 0, TextTransparency = 0},
        ["a"] = {BackgroundTransparency = 0, TextTransparency = 0},
        ["e"] = {BackgroundTransparency = 0},
        ["f"] = {ImageTransparency = 0},
        ["13"] = {Size = 10}
    }

    for i, Properties in pairs(tweens) do
        TweenService:Create(G2L2[i], TweenInfo.new(TweenTime), Properties):Play()
    end

    repeat task.wait() until Chosen ~= "no choice"
    return Chosen
end

function N:Info(Title, Description, ButtonText, TweenTime, WaitForClick)
    if Title == nil then return end
    if Description == nil then return end
    ButtonText = ButtonText or "Okay"
    TweenTime = TweenTime or 0.5
    WaitForClick = WaitForClick or false

    G2L3["1"] = Instance.new("ScreenGui", CoreGui);
    G2L3["1"]["Name"] = "Info";

    G2L3["2"] = Instance.new("Frame", G2L3["1"]);
    G2L3["2"]["BorderSizePixel"] = 0;
    G2L3["2"]["BackgroundColor3"] = Color3.fromRGB(24, 29, 36);
    G2L3["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L3["2"]["Size"] = UDim2.new(0, 300, 0, 150);
    G2L3["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L3["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    G2L3["2"]["BackgroundTransparency"] = 1;

    G2L3["3"] = Instance.new("UICorner", G2L3["2"]);
    G2L3["3"]["CornerRadius"] = UDim.new(0, 6);

    G2L3["4"] = Instance.new("UIStroke", G2L3["2"]);
    G2L3["4"]["Color"] = Color3.fromRGB(47, 53, 65);
    G2L3["4"]["Thickness"] = 4;

    G2L3["5"] = Instance.new("TextLabel", G2L3["2"]);
    G2L3["5"]["TextWrapped"] = true;
    G2L3["5"]["BorderSizePixel"] = 0;
    G2L3["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L3["5"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L3["5"]["TextSize"] = 30;
    G2L3["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L3["5"]["Size"] = UDim2.new(1, -20, 1, -110);
    G2L3["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L3["5"]["Text"] = Description;
    G2L3["5"]["Name"] = "Label";
    G2L3["5"]["BackgroundTransparency"] = 1;
    G2L3["5"]["Position"] = UDim2.new(0, 10, 0, 50);
    G2L3["5"]["TextTransparency"] = 1;

    G2L3["6"] = Instance.new("TextButton", G2L3["2"]);
    G2L3["6"]["TextWrapped"] = true;
    G2L3["6"]["BorderSizePixel"] = 0;
    G2L3["6"]["BackgroundColor3"] = Color3.fromRGB(219, 219, 219);
    G2L3["6"]["TextSize"] = 100;
    G2L3["6"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L3["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
    G2L3["6"]["AnchorPoint"] = Vector2.new(0, 1);
    G2L3["6"]["Size"] = UDim2.new(1, -20, 0, 40);
    G2L3["6"]["Name"] = ButtonText;
    G2L3["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L3["6"]["Text"] = "Okay";
    G2L3["6"]["Position"] = UDim2.new(0, 10, 1, -10);
    G2L3["6"]["BackgroundTransparency"] = 1;
    G2L3["6"]["TextTransparency"] = 1;

    G2L3["7"] = Instance.new("UICorner", G2L3["6"]);

    G2L3["8"] = Instance.new("UIStroke", G2L3["6"]);
    G2L3["8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    G2L3["9"] = Instance.new("UITextSizeConstraint", G2L3["6"]);
    G2L3["9"]["MaxTextSize"] = 22;

    G2L3["a"] = Instance.new("TextLabel", G2L3["2"]);
    G2L3["a"]["TextWrapped"] = true;
    G2L3["a"]["BorderSizePixel"] = 0;
    G2L3["a"]["TextScaled"] = true;
    G2L3["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L3["a"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
    G2L3["a"]["TextSize"] = 24;
    G2L3["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L3["a"]["Size"] = UDim2.new(1, -20, 0, 30);
    G2L3["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L3["a"]["Text"] = Title;
    G2L3["a"]["Name"] = "Title";
    G2L3["a"]["Position"] = UDim2.new(0, 10, 0, 10);
    G2L3["a"]["BackgroundTransparency"] = 1;
    G2L3["a"]["TextTransparency"] = 1;

    G2L3["b"] = Instance.new("UIStroke", G2L3["a"]);
    G2L3["b"]["Color"] = Color3.fromRGB(219, 219, 219);
    G2L3["b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    G2L3["c"] = Instance.new("UITextSizeConstraint", G2L3["a"]);
    G2L3["c"]["MaxTextSize"] = 24;

    G2L3["d"] = Instance.new("UICorner", G2L3["a"]);

    G2L3["e"] = Instance.new("BlurEffect", workspace.CurrentCamera);
    G2L3["e"]["Size"] = 0;

    local Clicked = nil

    G2L3["6"].MouseButton1Click:Connect(function()
        G2L3["1"]:Destroy()
        G2L3["e"]:Destroy()
        Clicked = true
    end)

    for i = 0, math.floor(G2L3["5"]["TextBounds"]["X"] / G2L3["2"]["AbsoluteSize"]["X"]) do
        G2L3["2"]["Size"] = UDim2.new(0, G2L3["2"]["AbsoluteSize"]["X"], 0, G2L3["2"]["AbsoluteSize"]["Y"] + 30)
    end

    for i = 1, select(2, G2L3["5"]["Text"]:gsub("\n", "")) do
        G2L3["2"]["Size"] = UDim2.new(0, G2L3["2"]["AbsoluteSize"]["X"], 0, G2L3["2"]["AbsoluteSize"]["Y"] + 30)
    end

    local tweens = {
        ["2"] = {BackgroundTransparency = 0},
        ["5"] = {TextTransparency = 0},
        ["6"] = {BackgroundTransparency = 0, TextTransparency = 0},
        ["a"] = {BackgroundTransparency = 0.9, TextTransparency = 0},
        ["e"] = {Size = 10}
    }

    for i, Properties in pairs(tweens) do
        TweenService:Create(G2L3[i], TweenInfo.new(TweenTime), Properties):Play()
    end

    if WaitForClick then
        repeat task.wait() until Clicked == true
    end
end

return N;
