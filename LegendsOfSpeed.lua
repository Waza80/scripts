local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow(
    {
        Name = "Legends Of Speed",
        HidePremium = true;
        IntroEnabled = false
    }
)

local AutofarmTab = Window:MakeTab(
    {
        Name = "Auto Farm"
    }
)

AutofarmTab:AddToggle(
    {
        Name = "Auto Loops",
        Default = false,
        Flag = "autofarm-loops-toggle",
        Callback = function(Value)
            while Value do
                if OrionLib.Flags["autofarm-loops-toggle"].Value == false then
                    return
                end
                for i, Loop in pairs(workspace.Hoops:GetChildren())
            end
        end
    }
)
