local LoadUI = Instance.new("ScreenGui")
local SUCCESS = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local IN = Instance.new("Frame")
local LOAD = Instance.new("Frame")
local LOGO = Instance.new("TextLabel")
local Drop = Instance.new("ImageLabel")
local TOTEXT = Instance.new("TextLabel")
LoadUI.Name = "LoadUI"
LoadUI.Parent = game.CoreGui
SUCCESS.Name = "SUCCESS"
SUCCESS.Parent = LoadUI
SUCCESS.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
SUCCESS.Position = UDim2.new(0.344470978, 0, 0.349606305, 0)
SUCCESS.Size = UDim2.new(0.311058074, 0, 0.299212605, 0)
UICorner.Parent = SUCCESS
IN.Name = "IN"
IN.Parent = SUCCESS
IN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IN.BackgroundTransparency = 0.5
IN.BorderSizePixel = 0
IN.Position = UDim2.new(0, 0, 0.542105258, 0)
IN.Size = UDim2.new(1, 0, 0.147368416, 0)
IN.ZIndex = 2
LOAD.Name = "LOAD"
LOAD.Parent = SUCCESS
LOAD.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
LOAD.BorderSizePixel = 0
LOAD.Position = UDim2.new(0, 0, 0.542105258, 0)
LOAD.Size = UDim2.new(0.0639386177, 0, 0.147368416, 0)
LOAD.ZIndex = 3
LOGO.Name = "LOGO"
LOGO.Parent = SUCCESS
LOGO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LOGO.BackgroundTransparency = 1
LOGO.Position = UDim2.new(0.25, 0, 0.2, 0)
LOGO.Size = UDim2.new(0.5, 0, 0.263157904, 0)
LOGO.Font = Enum.Font.LuckiestGuy
LOGO.Text = "Byte Hub"
LOGO.TextColor3 = Color3.fromRGB(255, 255, 255)
LOGO.TextScaled = true
LOGO.TextSize = 14
LOGO.TextWrapped = true
Drop.Name = "Drop"
Drop.Parent = SUCCESS
Drop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Drop.BackgroundTransparency = 1
Drop.BorderColor3 = Color3.fromRGB(27, 42, 53)
Drop.Position = UDim2.new(0.28187114, 0, 0.163157895, 0)
Drop.Size = UDim2.new(0.132856071, 0, 0.262992293, 0)
Drop.Image = "rbxassetid://0"
Drop.ImageColor3 = Color3.fromRGB(255, 255, 255)
TOTEXT.Name = "TOTEXT"
TOTEXT.Parent = SUCCESS
TOTEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TOTEXT.BackgroundTransparency = 1
TOTEXT.Position = UDim2.new(0.166240424, 0, 0.768421054, 0)
TOTEXT.Size = UDim2.new(0.667519152, 0, 0.157894731, 0)
TOTEXT.Font = Enum.Font.SourceSans
TOTEXT.TextColor3 = Color3.fromRGB(255, 255, 255)
TOTEXT.TextScaled = true
TOTEXT.TextSize = 14
TOTEXT.TextWrapped = true
TOTEXT.Text = "Loading..."
wait(4)
TOTEXT.Text = "Verify Game Nickname..."
wait(6)
TOTEXT.Text = "Verify Game Support..."
local sp = false
local supportedPlaceIds = {335760407, 13762482705, 13804242208, 13804254727} --Normal,Ranked 50,200,500
if table.find(supportedPlaceIds, game.PlaceId) then
    sp = true
else
    TOTEXT.Text = "Game Not Supported :("
    game:GetService("TweenService"):Create(SUCCESS, TweenInfo.new(0.5), {Size = UDim2.new(0, 0, 0, 0)}):Play()
    wait(0.5)
    LoadUI:Destroy()
    wait(3)
    Notif.New("Game Not Supported :(", 10)
end
repeat
    wait()
until sp == true
--Animacao
wait(1)
game:GetService("TweenService"):Create(LOAD, TweenInfo.new(1), {Size = UDim2.new(0.629, 0, 0.147, 0)}):Play()
--PC ou Mobile
if not game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled then
    TOTEXT.Text = "Your Device is: PC"
else
    TOTEXT.Text = "Your Device is: Mobile"
end
wait(2)
if code then
    TOTEXT.Text = "User: " .. game.Players.LocalPlayer.Name .. " | From: " .. code
else
    TOTEXT.Text = "User: " .. game.Players.LocalPlayer.Name .. " | From: [?]"
end
wait(1)
TOTEXT.Text = "Sucess! Loading script..."
game:GetService("TweenService"):Create(LOAD, TweenInfo.new(1), {Size = UDim2.new(1, 0, 0.147, 0)}):Play()
wait(1)
game:GetService("TweenService"):Create(SUCCESS, TweenInfo.new(0.5), {Size = UDim2.new(0, 0, 0, 0)}):Play()
wait(0.5)
LoadUI:Destroy()
loadstring(game:HttpGet"https://raw.githubusercontent.com/DamThien332/TPS-Script/main/Chooser.lua")()
