local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/DamThien332/UI-Libs/main/UI-InicializadorV2.lua"), "Byte Hub")()
local Window = Library:Window("Byte Hub", function(Script, Func)
    local success, err = pcall(function()
        Func:TryExecuteURL(Script)
    end)
    if not success then
        warn("Failed to execute script:", err)
    end
end, {
    Translate = true
})

Window:Game({
    Status = "Working[All Executor]",
    Script = "https://raw.githubusercontent.com/DamThien332/TPS-Script/main/AutoFarmGoals.lua",
    Custom = {
        Name = "TPS Street Soccer[Farm Goals]"
    },
    UpdateDate = Window:GetDate("Local", "15/06/2024"),
    Creator = "Skinny"
})

Window:Game({
    Status = "Working[All Executor]",
    Script = "https://raw.githubusercontent.com/DamThien332/TPS-Script/main/Mobile-Version.lua",
    Custom = {
        Name = "TPS Street Soccer[Mobile]"
    },
    UpdateDate = Window:GetDate("Local", "27/06/2024"),
    Creator = "Skinny"
})

Window:Game({
    Status = "Working[Wave,Solara,Electron]", 
    Script = "https://raw.githubusercontent.com/DamThien332/TPS-Script/main/Key.System-PC.lua",
    Custom = {
        Name = "TPS Street Soccer[PC]"
    },
    UpdateDate = Window:GetDate("Local", "10/07/2024"),
    Creator = "Skinny"
})

Window:Initiate()
--ID TPS:335760407
