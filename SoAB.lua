-- First GUI
-- Made my Waza80#8017

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow(
    {
        Name = "SKYDIVE OFF A BUILDING V1.4", 
        HidePremium = true, 
        SaveConfig = false, 
        IntroEnabled = false
    }
)

local ScriptTab = Window:MakeTab(
    {
        Name = "Auto Farm",
        PremiumOnly = false
    }
)

ScriptTab:AddSlider(
    {
        Name = "Money per Skydive",
        Min = 0,
        Max = 1000000000,
        Default = 1000000000,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 50000,
        ValueName = "money",
        Flag = "slider"
    }
)

ScriptTab:AddToggle(
    {
        Name = "Auto Buy Floors",
        Default = false,
        Flag = "floors"
    }
)

ScriptTab:AddToggle(
    {
        Name = "Auto Buy Levels",
        Default = false,
        Flag = "levels"
    }
)

ScriptTab:AddToggle(
    {
        Name = "Auto Lucky Blocks",
        Default = false,
        Flag = "luckies"
    }
)

local format = function(String)
    String = String:gsub("%$", ''):gsub(" ", ''):gsub(",", "")
    multiplier = string.sub(String, -1)
    if tonumber(multiplier) then
        return tonumber(String)
    end
    if multiplier == "k" then
        return tonumber(String:sub(1, -2)) * 1000
    end
    if multiplier == "m" then
        return tonumber(String:sub(1, -2)) * 1000000
    end
    if multiplier == "b" then
        return tonumber(String:sub(1, -2)) * 1000000000
    end
    if multiplier == "t" then
        return tonumber(String:sub(1, -2)) * 1000000000000
    end
    return math.huge
end

function TweenObject(obj, properties, duration, ...)
    game:GetService("TweenService"):Create(obj, TweenInfo.new(duration, ...), properties):Play()
end

ScriptTab:AddToggle(
    {
        Name = "Auto Farm",
        Default = false,
        Flag = "autofarm",
        Callback = function(Value)
            while game:GetService("Players").LocalPlayer.SkydiveServerTags.SkydiveActive.Value == true do
                wait(1)
            end
            
            while Value do
                if OrionLib.Flags["autofarm"].Value == false then
                    break
                end
                if game:GetService("Workspace").Towers[game.Players.LocalPlayer.Name].TowerClient.LocationStatus.Value ~= game.Players.LocalPlayer.Name then
                    TowerPrivacyCFrame = game:GetService("Workspace").Towers[game.Players.LocalPlayer.Name].TowerClient.Buttons.TowerPrivacy.Part.CFrame
                    TweenObject(game.Players.LocalPlayer.Character.HumanoidRootPart, {CFrame = CFrame.new(TowerPrivacyCFrame.x, TowerPrivacyCFrame.y + 10, TowerPrivacyCFrame.z)}, 0.1)
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("leave_tower"):InvokeServer()
                    wait(0.3)
                end
                if OrionLib.Flags["levels"].Value == true then
                    while format(game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\181 Cash"].Value) > format(game:GetService("Workspace").Towers[game.Players.LocalPlayer.Name].TowerClient.Buttons.BuyJetpackLevel.PriceGui.TextLabel.Text) do
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("buy_jetpack_level"):InvokeServer()
                        if OrionLib.Flags["levels"].Value == false then break end
                        wait(OrionLib.Flags["buy-delay"].Value)
                    end
                    wait(0.2)
                end
                if OrionLib.Flags["floors"].Value == true then
                    while format(game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\181 Cash"].Value) > format(game:GetService("Workspace").Towers[game.Players.LocalPlayer.Name].TowerClient.Buttons.BuyFloor.PriceGui.TextLabel.Text) do
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("buy_floor"):InvokeServer()
                        if OrionLib.Flags["floors"].Value == false then break end
                        wait(OrionLib.Flags["buy-delay"].Value)
                    end
                    wait(0.2)
                end
                if OrionLib.Flags["luckies"].Value == true then
                    while workspace.Towers[game.Players.LocalPlayer.Name].TowerClient:FindFirstChild("LuckyBlock") do
                        LuckyBlock = workspace.Towers[game.Players.LocalPlayer.Name].TowerClient:FindFirstChild("LuckyBlock")
                        LuckyBlock.Center.ProximityPrompt.HoldDuration = 0
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = LuckyBlock.Center.CFrame
                        keypress(0x45)
                        wait(0.1)
                        keyrelease(0x45)
                        TopCFrame = workspace.Towers[game.Players.LocalPlayer.Name].TopFloor.ParticleFloor.CFrame
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(TopCFrame.x, TopCFrame.y + 10, TopCFrame.z)
                    end
                    while workspace.Towers[game.Players.LocalPlayer.Name].TowerClient:FindFirstChild("FriendReward") do
                        FriendReward = workspace.Towers[game.Players.LocalPlayer.Name].TowerClient:FindFirstChild("FriendReward")
                        FriendReward.Handle.ProximityPrompt.HoldDuration = 0
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = FriendReward.Center.CFrame
                        keypress(0x45)
                        wait(0.1)
                        keyrelease(0x45)
                        TopCFrame = workspace.Towers[game.Players.LocalPlayer.Name].TopFloor.ParticleFloor.CFrame
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(TopCFrame.x, TopCFrame.y + 10, TopCFrame.z)
                    end
                end
                ParticleFloor = game:GetService("Workspace").Towers[game.Players.LocalPlayer.Name].TopFloor.ParticleFloor
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(ParticleFloor.Position.x, ParticleFloor.Position.y - 3, -2860)
                wait(OrionLib.Flags["auto-delay"].Value)
                local NameCall
                NameCall = hookmetamethod(
                    game, "__namecall", function(Self, ...)
                        local Args = {...}

                        if tostring(Self) == "validate_skydive" then
                            Args[1] = OrionLib.Flags["slider"].Value
                            Args[2] = 50000

                            return Self.FireServer(Self, unpack(Args))
                        end

                        return NameCall(Self, ...)
                    end
                )
                while game:GetService("Players").LocalPlayer.SkydiveServerTags.SkydiveActive.Value == false do
                    wait(0.05)
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(ParticleFloor.Position.x, 0, ParticleFloor.Position.z + 500)
                workspace[game.Players.LocalPlayer.Name]:WaitForChild("Landing", 1)
                while workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Landing") do
                    wait(0.05)
                end
                wait(OrionLib.Flags["auto-delay"].Value)
            end
        end
    }
)

local MiscTab = Window:MakeTab(
    {
        Name = "Misc",
        PremiumOnly = false
    }
)

MiscTab:AddToggle(
    {
        Name = "Show Top Gui",
        Default = true,
        Callback = function(Value)
            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.MainFrame.Frame.FrameCash.Visible = Value
            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.MainFrame.Frame.FrameHeight.Visible = Value
        end
    }
)

MiscTab:AddSlider(
    {
        Name = "Auto Buy Delay",
        Min = 0,
        Max = 3,
        Default = 0.1,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 0.05,
        ValueName = "sec",
        Flag = "buy-delay"
    }
)

MiscTab:AddSlider(
    {
        Name = "Auto Farm Delay",
        Min = 0,
        Max = 3,
        Default = 1,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 0.05,
        ValueName = "sec",
        Flag = "auto-delay"
    }
)

local CreditsTab = Window:MakeTab(
    {
        Name = "Credits",
        PremiumOnly = false
    }
)

CreditsTab:AddParagraph(
    "Credits",
    "Waza80#8017 - Developing \nIcy#4444 - Being Gang"
)

OrionLib:MakeNotification(
    {
        Name = "Script Loaded",
        Content = "Script is ready to use.",
        Time = 5
    }
)

OrionLib:Init()
