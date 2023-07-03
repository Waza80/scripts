--[[
    By Waza80

    Bad notification script that I use in some of my scripts

    Skid if you want, but don't forget to use gethui() instead
]]

-- variables
local G2L1, G2L2, G2L3, N = {}, {}, {}, {}

-- services
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

-- functions
function N:Notify(Text, ButtonText, NotificationTweenTime, WaitForClick)
    if Text == nil then return end
    ButtonText = ButtonText or "I understand"
    NotificationTweenTime = NotificationTweenTime or 0.5
    WaitForClick = WaitForClick or false

    G2L1["1"] = Instance.new("ScreenGui", CoreGui);
    G2L1["1"]["Name"] = "Notification";
    G2L1["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

    G2L1["2"] = Instance.new("Frame", G2L1["1"]);
    G2L1["2"]["BorderSizePixel"] = 0;
    G2L1["2"]["BackgroundColor3"] = Color3.fromRGB(67, 67, 67);
    G2L1["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L1["2"]["Size"] = UDim2.new(0, 350, 0, 200);
    G2L1["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L1["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    G2L1["2"]["BackgroundTransparency"] = 1;

    G2L1["3"] = Instance.new("Frame", G2L1["2"]);
    G2L1["3"]["BorderSizePixel"] = 0;
    G2L1["3"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
    G2L1["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L1["3"]["Size"] = UDim2.new(0, 340, 0, 190);
    G2L1["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L1["3"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    G2L1["3"]["BackgroundTransparency"] = 1;

    G2L1["4"] = Instance.new("UICorner", G2L1["3"]);

    G2L1["5"] = Instance.new("TextLabel", G2L1["2"]);
    G2L1["5"]["TextWrapped"] = true;
    G2L1["5"]["BorderSizePixel"] = 0;
    G2L1["5"]["TextScaled"] = true;
    G2L1["5"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
    G2L1["5"]["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L1["5"]["TextColor3"] = Color3.fromRGB(236, 236, 236);
    G2L1["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L1["5"]["Size"] = UDim2.new(0, 300, 0, 100);
    G2L1["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L1["5"]["Text"] = Text;
    G2L1["5"]["Position"] = UDim2.new(0.5, 0, 0.35, 0);
    G2L1["5"]["BackgroundTransparency"] = 1;
    G2L1["5"]["TextTransparency"] = 1;

    G2L1["6"] = Instance.new("TextButton", G2L1["2"]);
    G2L1["6"]["BorderSizePixel"] = 0;
    G2L1["6"]["BackgroundColor3"] = Color3.fromRGB(236, 236, 236);
    G2L1["6"]["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L1["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
    G2L1["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L1["6"]["Size"] = UDim2.new(0, 300, 0, 50);
    G2L1["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L1["6"]["Text"] = ButtonText;
    G2L1["6"]["TextScaled"] = true;
    G2L1["6"]["Position"] = UDim2.new(0.5, 0, 0.7625, 0);
    G2L1["6"]["BackgroundTransparency"] = 1;
    G2L1["6"]["TextTransparency"] = 1;

    G2L1["7"] = Instance.new("UICorner", G2L1["6"]);

    G2L1["8"] = Instance.new("UICorner", G2L1["2"]);

    G2L1["9"] = Instance.new("BlurEffect", workspace.CurrentCamera);
    G2L1["9"]["Size"] = 0;

    local Clicked = nil

    G2L1["6"].MouseButton1Click:Connect(function()
        G2L1["1"]:Destroy()
        G2L1["9"]:Destroy()
        Clicked = true
    end)

    TweenService:Create(G2L1["2"], TweenInfo.new(NotificationTweenTime, Enum.EasingStyle.Linear), {BackgroundTransparency = 0}):Play()
    TweenService:Create(G2L1["3"], TweenInfo.new(NotificationTweenTime, Enum.EasingStyle.Linear), {BackgroundTransparency = 0}):Play()
    TweenService:Create(G2L1["6"], TweenInfo.new(NotificationTweenTime, Enum.EasingStyle.Linear), {BackgroundTransparency = 0}):Play()
    TweenService:Create(G2L1["5"], TweenInfo.new(NotificationTweenTime, Enum.EasingStyle.Linear), {TextTransparency = 0}):Play()
    TweenService:Create(G2L1["6"], TweenInfo.new(NotificationTweenTime, Enum.EasingStyle.Linear), {TextTransparency = 0}):Play()
    TweenService:Create(G2L1["9"], TweenInfo.new(NotificationTweenTime, Enum.EasingStyle.Linear), {Size = 10}):Play()

    if WaitForClick then
        repeat task.wait() until Clicked == true
    end
end

function N:Prompt(Text, YesText, NoText, PromptTweenTime)
    if Text == nil then return end
    YesText = YesText or "Yes"
    NoText = NoText or "No"
    PromptTweenTime = PromptTweenTime or 0.5

    G2L2["1"] = Instance.new("ScreenGui", CoreGui);
    G2L2["1"]["Name"] = "Prompt"
    G2L2["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

    G2L2["2"] = Instance.new("Frame", G2L2["1"]);
    G2L2["2"]["BorderSizePixel"] = 0;
    G2L2["2"]["BackgroundColor3"] = Color3.fromRGB(67, 67, 67);
    G2L2["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L2["2"]["Size"] = UDim2.new(0, 450, 0, 200);
    G2L2["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    G2L2["2"]["BackgroundTransparency"] = 1;

    G2L2["3"] = Instance.new("Frame", G2L2["2"]);
    G2L2["3"]["BorderSizePixel"] = 0;
    G2L2["3"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
    G2L2["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L2["3"]["Size"] = UDim2.new(0, 440, 0, 190);
    G2L2["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["3"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    G2L2["3"]["BackgroundTransparency"] = 1;

    G2L2["4"] = Instance.new("UICorner", G2L2["3"]);

    G2L2["5"] = Instance.new("TextLabel", G2L2["2"]);
    G2L2["5"]["TextWrapped"] = true;
    G2L2["5"]["BorderSizePixel"] = 0;
    G2L2["5"]["TextScaled"] = true;
    G2L2["5"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
    G2L2["5"]["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L2["5"]["TextColor3"] = Color3.fromRGB(236, 236, 236);
    G2L2["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L2["5"]["Size"] = UDim2.new(0, 400, 0, 100);
    G2L2["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["5"]["Text"] = Text;
    G2L2["5"]["Position"] = UDim2.new(0.5, 0, 0.35, 0);
    G2L2["5"]["TextTransparency"] = 1;
    G2L2["5"]["BackgroundTransparency"] = 1;

    G2L2["6"] = Instance.new("TextButton", G2L2["2"]);
    G2L2["6"]["TextWrapped"] = true;
    G2L2["6"]["BorderSizePixel"] = 0;
    G2L2["6"]["TextScaled"] = true;
    G2L2["6"]["BackgroundColor3"] = Color3.fromRGB(255, 213, 122);
    G2L2["6"]["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L2["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L2["6"]["Size"] = UDim2.new(0, 200, 0, 50);
    G2L2["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["6"]["Text"] = YesText;
    G2L2["6"]["Position"] = UDim2.new(0.2625, 0, 0.7625, 0);
    G2L2["6"]["TextTransparency"] = 1;
    G2L2["6"]["BackgroundTransparency"] = 1;

    G2L2["7"] = Instance.new("UICorner", G2L2["6"]);

    G2L2["8"] = Instance.new("UICorner", G2L2["2"]);

    G2L2["9"] = Instance.new("TextButton", G2L2["2"]);
    G2L2["9"]["TextWrapped"] = true;
    G2L2["9"]["BorderSizePixel"] = 0;
    G2L2["9"]["TextScaled"] = true;
    G2L2["9"]["BackgroundColor3"] = Color3.fromRGB(248, 39, 22);
    G2L2["9"]["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L2["9"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L2["9"]["Size"] = UDim2.new(0, 200, 0, 50);
    G2L2["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["9"]["Text"] = NoText;
    G2L2["9"]["Position"] = UDim2.new(0.735, 0, 0.7625, 0);
    G2L2["9"]["TextTransparency"] = 1;

    G2L2["10"] = Instance.new("UICorner", G2L2["9"]);

    G2L2["11"] = Instance.new("TextButton", G2L2["2"]);
    G2L2["11"]["TextWrapped"] = true;
    G2L2["11"]["BorderSizePixel"] = 0;
    G2L2["11"]["TextScaled"] = true;
    G2L2["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L2["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L2["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L2["11"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L2["11"]["Size"] = UDim2.new(0, 175, 0, 25);
    G2L2["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L2["11"]["Text"] = "Click to dismiss";
    G2L2["11"]["BackgroundTransparency"] = 1;
    G2L2["11"]["TextTransparency"] = 1;
    G2L2["11"]["Position"] = UDim2.new(0.5, 0, 1.05, 0);

    G2L2["12"] = Instance.new("BlurEffect", workspace.CurrentCamera);
    G2L2["12"]["Size"] = 0;

    local Chosen = "no choice"

    G2L2["6"].MouseButton1Click:Connect(function()
        G2L2["1"]:Destroy()
        G2L2["12"]:Destroy()
        Chosen = true
    end)

    G2L2["9"].MouseButton1Click:Connect(function()
        G2L2["1"]:Destroy()
        G2L2["12"]:Destroy()
        Chosen = false
    end)

    G2L2["11"].MouseButton1Click:Connect(function()
        G2L2["1"]:Destroy()
        G2L2["12"]:Destroy()
        Chosen = nil
    end)

    TweenService:Create(G2L2["2"], TweenInfo.new(PromptTweenTime, Enum.EasingStyle.Linear), {BackgroundTransparency = 0}):Play()
    TweenService:Create(G2L2["3"], TweenInfo.new(PromptTweenTime, Enum.EasingStyle.Linear), {BackgroundTransparency = 0}):Play()
    TweenService:Create(G2L2["6"], TweenInfo.new(PromptTweenTime, Enum.EasingStyle.Linear), {BackgroundTransparency = 0}):Play()
    TweenService:Create(G2L2["9"], TweenInfo.new(PromptTweenTime, Enum.EasingStyle.Linear), {BackgroundTransparency = 0}):Play()
    TweenService:Create(G2L2["5"], TweenInfo.new(PromptTweenTime, Enum.EasingStyle.Linear), {TextTransparency = 0}):Play()
    TweenService:Create(G2L2["6"], TweenInfo.new(PromptTweenTime, Enum.EasingStyle.Linear), {TextTransparency = 0}):Play()
    TweenService:Create(G2L2["9"], TweenInfo.new(PromptTweenTime, Enum.EasingStyle.Linear), {TextTransparency = 0}):Play()
    TweenService:Create(G2L2["11"], TweenInfo.new(PromptTweenTime, Enum.EasingStyle.Linear), {TextTransparency = 0}):Play()
    TweenService:Create(G2L2["12"], TweenInfo.new(PromptTweenTime, Enum.EasingStyle.Linear), {Size = 10}):Play()

    repeat task.wait() until Chosen ~= "no choice"
    return Chosen
end

function N:Info(Title, Description, ButtonText, InfoTweenTime, WaitForClick)
    if Title == nil then return end
    if Description == nil then return end
    ButtonText = ButtonText or "Okay"
    InfoTweenTime = InfoTweenTime or 0.5
    WaitForClick = WaitForClick or false

    G2L3["1"] = Instance.new("ScreenGui", CoreGui);
    G2L3["1"]["Name"] = "Info"
    G2L3["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

    G2L3["2"] = Instance.new("Frame", G2L3["1"]);
    G2L3["2"]["BorderSizePixel"] = 0;
    G2L3["2"]["BackgroundColor3"] = Color3.fromRGB(67, 67, 67);
    G2L3["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L3["2"]["Size"] = UDim2.new(0, 350, 0, 200);
    G2L3["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L3["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

    G2L3["3"] = Instance.new("Frame", G2L3["2"]);
    G2L3["3"]["BorderSizePixel"] = 0;
    G2L3["3"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
    G2L3["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L3["3"]["Size"] = UDim2.new(0, 340, 0, 190);
    G2L3["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L3["3"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

    G2L3["4"] = Instance.new("UICorner", G2L3["3"]);

    G2L3["5"] = Instance.new("TextLabel", G2L3["2"]);
    G2L3["5"]["TextWrapped"] = true;
    G2L3["5"]["BorderSizePixel"] = 0;
    G2L3["5"]["TextScaled"] = true;
    G2L3["5"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
    G2L3["5"]["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L3["5"]["TextColor3"] = Color3.fromRGB(236, 236, 236);
    G2L3["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L3["5"]["Size"] = UDim2.new(0, 300, 0, 65);
    G2L3["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L3["5"]["Text"] = Description;
    G2L3["5"]["Position"] = UDim2.new(0.5, 0, 0.4, 0);
    G2L3["5"]["BackgroundTransparency"] = 1;
    G2L3["5"]["TextTransparency"] = 1;

    G2L3["6"] = Instance.new("TextButton", G2L3["2"]);
    G2L3["6"]["TextWrapped"] = true;
    G2L3["6"]["BorderSizePixel"] = 0;
    G2L3["6"]["TextScaled"] = true;
    G2L3["6"]["BackgroundColor3"] = Color3.fromRGB(236, 236, 236);
    G2L3["6"]["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L3["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
    G2L3["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L3["6"]["Size"] = UDim2.new(0, 300, 0, 50);
    G2L3["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L3["6"]["Text"] = ButtonText;
    G2L3["6"]["TextTransparency"] = 1;
    G2L3["6"]["Position"] = UDim2.new(0.5, 0, 0.75, 0);

    G2L3["7"] = Instance.new("UICorner", G2L3["6"]);

    G2L3["8"] = Instance.new("UICorner", G2L3["2"]);

    G2L3["9"] = Instance.new("TextLabel", G2L3["2"]);
    G2L3["9"]["TextWrapped"] = true;
    G2L3["9"]["BorderSizePixel"] = 0;
    G2L3["9"]["TextScaled"] = true;
    G2L3["9"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
    G2L3["9"]["FontFace"] = Font.new("rbxasset://fonts/families/HighwayGothic.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L3["9"]["TextColor3"] = Color3.fromRGB(236, 236, 236);
    G2L3["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L3["9"]["Size"] = UDim2.new(0, 300, 0, 50);
    G2L3["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L3["9"]["Text"] = Title;
    G2L3["9"]["TextTransparency"] = 1;
    G2L3["9"]["BackgroundTransparency"] = 1;
    G2L3["9"]["Position"] = UDim2.new(0.5, 0, 0.15, 0);

    G2L3["10"] = Instance.new("BlurEffect", workspace.CurrentCamera);
    G2L3["10"]["Size"] = 0;

    local Clicked = nil

    G2L3["6"].MouseButton1Click:Connect(function()
        G2L3["1"]:Destroy()
        G2L3["10"]:Destroy()
        Clicked = true
    end)

    TweenService:Create(G2L3["2"], TweenInfo.new(InfoTweenTime, Enum.EasingStyle.Linear), {BackgroundTransparency = 0}):Play()
    TweenService:Create(G2L3["3"], TweenInfo.new(InfoTweenTime, Enum.EasingStyle.Linear), {BackgroundTransparency = 0}):Play()
    TweenService:Create(G2L3["6"], TweenInfo.new(InfoTweenTime, Enum.EasingStyle.Linear), {BackgroundTransparency = 0}):Play()
    TweenService:Create(G2L3["5"], TweenInfo.new(InfoTweenTime, Enum.EasingStyle.Linear), {TextTransparency = 0}):Play()
    TweenService:Create(G2L3["6"], TweenInfo.new(InfoTweenTime, Enum.EasingStyle.Linear), {TextTransparency = 0}):Play()
    TweenService:Create(G2L3["9"], TweenInfo.new(InfoTweenTime, Enum.EasingStyle.Linear), {TextTransparency = 0}):Play()
    TweenService:Create(G2L3["10"], TweenInfo.new(InfoTweenTime, Enum.EasingStyle.Linear), {Size = 10}):Play()

    if WaitForClick then
        repeat task.wait() until Clicked == true
    end
end

return N;
