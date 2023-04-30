local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local InGame = false
local Wave = nil

local Window = OrionLib:MakeWindow(
    {
        Name = "KMtSP V1.1", 
        HidePremium = true, 
        SaveConfig = false, 
        IntroEnabled = false
    }
)

local AutoTab = Window:MakeTab(
    {
        Name = "Main",
        PremiumOnly = false
    }
)

local IsFarming = function()
    if OrionLib.Flags["autofarm-main-toggle"].Value == true then
        return true 
    end
    return false
end

AutoTab:AddToggle(
    {
        Name = "Auto Farm",
        Default = false,
        Flag = 'autofarm-main-toggle',
        Callback = function(Value)
            if Value == false then
                if game:GetService("Players").LocalPlayer.stats["Battle Region"].Value == 0 then
                    Wave = nil
                    InGame = false
                    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Battle"):WaitForChild("ExitPrepare"):FireServer()
                end
                workspace.Gravity = 100
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 31
                return
            end
            while task.wait() do
                if IsFarming() == false then 
                    return 
                end
                workspace.Gravity = 0
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
                InGame = true
                wait()
                if not Wave then
                    if OrionLib.Flags['autoprincess-main-toggle'].Value == true then
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Princess") then
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Princess)
                        end
                    end
                    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Battle"):WaitForChild("JoinPrepare"):FireServer()
                    while game:GetService("Players").LocalPlayer.stats["Battle Region"].Value == 0 do 
                        wait()
                        if IsFarming() == false then 
                            return 
                        end
                    end
                end
                while Wave == nil do
                    wait()
                    if IsFarming() == false then
                        return
                    end
                end
                workspace.Gravity = 0
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
                if not pcall(function()
                    while Wave do 
                        wait()
                        if IsFarming() == false then
                            return
                        end
                        for _, Enemy in pairs(Wave.Enemy:GetChildren()) do
                            while IsFarming() and workspace.Waves:FindFirstChild(Wave.Name) and Wave:FindFirstChild("Enemy") and Wave.Enemy:FindFirstChild(Enemy.Name) and Enemy:FindFirstChild("HumanoidRootPart") do
                                wait()
                                if not pcall(function()
                                    if OrionLib.Flags['safemode-main-toggle'].Value == false then 
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame + Enemy.HumanoidRootPart.CFrame.LookVector * 10
                                    else
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame + Enemy.HumanoidRootPart.CFrame.LookVector * 3
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position,
                                        Enemy.HumanoidRootPart.Position
                                    )
                                end) then
                                    wait(0.05)
                                end
                                game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Weapon"):WaitForChild("TakeDamage"):FireServer()
                            end
                        end
                    end
                    return
                end) then
                    wait()
                end
                wait(5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.SpawnLocation.CFrame
            end
        end
    }
)

workspace.Waves.ChildAdded:connect(function(ChildAdded)
    if InGame == true and Wave == nil then
        Wave = ChildAdded
    else   
        return
    end
    while workspace.Waves:FindFirstChild(ChildAdded.Name) do
        wait()
    end
    Wave = nil
end)

AutoTab:AddToggle(
    {
        Name = "Auto Princess",
        Default = true,
        Flag = 'autoprincess-main-toggle'
    }
)

AutoTab:AddToggle(
    {
        Name = "Safe Mode",
        Default = true,
        Flag = 'safemode-main-toggle'
    }
)

EggsTab = Window:MakeTab(
    {
        Name = "Eggs",
        PremiumOnly = false 
    }
)

EggsTab:AddDropdown(
    {
        Name = "Selected Egg",
        Flag = 'egg-eggs-slider',
        Default = "Common Egg (50 Coins)",
        Options = {
            "Common Egg (50 Coins)",
            "Uncommon Egg (250 Coins)",
            "Rare Egg (1000 Coins)",
            "Epic Egg (5000 Coins)",
            "Legendary Egg (25000 Coins)",
            "Mythical Egg (100000 Coins)",
            "Rainbow Egg 1 (149 Gems)",
            "Rainbow Egg 2 (349 Gems)"
        }
    }
)

local split = function(Text, Pattern)
    chunks = {}
    for substring in Text:gmatch(Pattern) do
        table.insert(chunks, substring)
    end
    return chunks
end

local GetPriceByItem = function(Item)
    price = split(string.sub(Item:match('%(.*%)'), 2, string.len(Item)-1), "%S+")
    price[1] = tonumber(price[1])
    price[2] = price[2]:sub(1, -2)
    return price
end

local FindItem = function(table, item)
    for itemNumber, Item in pairs(table) do
        if item == Item then
            return {itemNumber, Item}
        end
    end
    return nil
end

EggsTab:AddToggle(
    {
        Name = "Auto Open",
        Flag = 'autohatch-eggs-toggle',
        Default = false,
        Callback = function(Value)
            Egg = FindItem(OrionLib.Flags['egg-eggs-slider'].Options, OrionLib.Flags['egg-eggs-slider'].Value)
            EggPrice = GetPriceByItem(Egg[2])
            while Value do
                wait()
                if OrionLib.Flags['autohatch-eggs-toggle'].Value == false then
                    return
                end
                if EggPrice[2] == "Coins" then
                    if game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\176Coin"].Value > EggPrice[1] then
                        if game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\176Coin"].Value * 3 > EggPrice[1] then
                            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Hatch"):WaitForChild("EggHatch"):InvokeServer(Egg[1], "Open3", {})
                        else
                            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Hatch"):WaitForChild("EggHatch"):InvokeServer(Egg[1], "Open1", {})
                        end
                    end
                end
                if EggPrice[2] == "Gems" then
                    if game:GetService("Players").LocalPlayer.stats.Gem.Value > EggPrice[1] then
                        if game:GetService("Players").LocalPlayer.stats.Gem.Value * 3 > EggPrice[1] then
                            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Hatch"):WaitForChild("EggHatch"):InvokeServer(Egg[1], "Open3", {})
                        else
                            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Hatch"):WaitForChild("EggHatch"):InvokeServer(Egg[1], "Open1", {})
                        end
                    end
                end
            end
        end
    }
)

EggsTab:AddToggle(
    {
        Name = "Auto Fuse",
        Default = false,
        Flag = 'autofuse-eggs-toggle',
        Callback = function(Value)
            while Value do
                wait()
                local Fused = false
                if OrionLib.Flags['autofuse-eggs-toggle'].Value == false then
                    return
                end
                for _, Weapon1 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Func.Weapon.Frame.Main.Backpack.Backpack:GetChildren()) do
                    if Weapon1.ClassName == "Frame" then
                        for _, Weapon2 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Func.Weapon.Frame.Main.Backpack.Backpack:GetChildren()) do
                            if Weapon2.ClassName == "Frame" then
                                if Weapon1.Name ~= Weapon2.Name then
                                    if Weapon1.TextLabel.ContentText == Weapon2.TextLabel.ContentText then
                                        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Weapon"):WaitForChild("WeaponFuse"):InvokeServer(tonumber(Weapon1.Name), tonumber(Weapon2.Name))
                                        Fused = true
                                        break
                                    end
                                end
                            end
                        end
                    end
                    if Fused == true then
                        break
                    end
                end
            end
        end
    }
)

MiscTab = Window:MakeTab(
    {
        Name = "Misc",
        PremiumOnly = false 
    }
)

MiscTab:AddButton(
    {
        Name = "Redeem All Codes",
        Callback = function()
            for _, Code in pairs({"like100", "like200", "like300", "like750"}) do
                game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Setting"):WaitForChild("CodeReward"):FireServer(Code)
            end
        end
    }
)

MiscTab:AddButton(
    {
        Name = "Collect Group Weapon",
        Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Reward"):WaitForChild("GroupReward"):FireServer(true)
        end
    }
)

MiscTab:AddToggle(
    {
        Name = "Collect Free Gems",
        Flag = "freegems-misc-toggle",
        Callback = function(Value)
            while Value do
            wait()
                if OrionLib.Flags['freegems-misc-toggle'].Value == false then
                    return 
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Func.Shop.Frame.Main.Scoll.Gem.Main["10"].Buy.TextLabel.ContentText == "FREE" then
                    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Shop"):WaitForChild("TryGetFreeGem"):FireServer()
                end
            end
        end
    }
)

CreditsTab = Window:MakeTab(
    {
        Name = "Credits",
        PremiumOnly = false
    }
)

CreditsTab:AddParagraph(
    "Credits",
    game:HttpGet("https://pastebin.com/raw/LTbvxpuG")
)

OrionLib:Init()
