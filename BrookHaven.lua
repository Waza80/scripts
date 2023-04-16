local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow(
    {
        Name = "Brookhaven Script", 
        HidePremium = true, 
        SaveConfig = false, 
        IntroEnabled = false
    }
)

local ScriptTab = Window:MakeTab(
    {
        Name = "Troll TP",
        PremiumOnly = false
    }
)

local AllPlayers = {}
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
    table.insert(AllPlayers, v.Name)
end

ScriptTab:AddDropdown(
    {
        Name = "Player",
        Default = AllPlayers[1],
        Options = AllPlayers,
        Flag = "player"
    }
)

ScriptTab:AddSlider(
    {
        Name = "TP Speed",
        Min = 0,
        Max = 5,
        Default = 0.1,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 0.05,
        ValueName = "sec",
        Flag = "slider"
    }
)

ScriptTab:AddToggle(
    {
        Name = "SPAM TP to user",
        Default = false,
        Flag = "tp",
        Callback = function(Value)
            while Value do
                if OrionLib.Flags["tp"].Value == false then
                    break
                end
                game.Players[OrionLib.Flags["player"].Value].Character:WaitForChild("HumanoidRootPart", 15)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[OrionLib.Flags["player"].Value].Character.HumanoidRootPart.CFrame
                wait(OrionLib.Flags["slider"].Value)
            end
        end
    }
)

ScriptTab:AddSlider(
    {
        Name = "Tween Interval",
        Min = 0,
        Max = 5,
        Default = 0.1,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 0.05,
        ValueName = "sec",
        Flag = "tween-interval"
    }
)

ScriptTab:AddSlider(
    {
        Name = "Tween Duration",
        Min = 0,
        Max = 10,
        Default = 0.1,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 0.05,
        ValueName = "sec",
        Flag = "speed-slider"
    }
)

function TweenObject(obj, properties, duration, ...)
    game:GetService("TweenService"):Create(obj, TweenInfo.new(duration, ...), properties):Play()
end

ScriptTab:AddToggle(
    {
        Name = "SPAM Tween to user",
        Default = false,
        Flag = "tween",
        Callback = function(Value)
            while Value do
                if OrionLib.Flags["tween"].Value == false then
                    break
                end
                game.Players[OrionLib.Flags["player"].Value].Character:WaitForChild("HumanoidRootPart", 15)
                TweenObject(game.Players.LocalPlayer.Character.HumanoidRootPart, {CFrame = game.Players[OrionLib.Flags["player"].Value].Character.HumanoidRootPart.CFrame}, OrionLib.Flags["speed-slider"].Value)
                wait(OrionLib.Flags["tween-interval"].Value)
            end
        end
    }
)

OrionLib:Init()
