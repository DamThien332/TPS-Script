--//Made By DamThien\\--
_G.Primary = Color3.fromRGB(70, 200, 255)
_G.Dark = Color3.fromRGB(30, 30, 30)

local Alert = loadstring(game:HttpGet("https://raw.githubusercontent.com/DamThien332/TPS-Script/main/Notification.lua"))()

Alert:create("Welcome to Byte Hub")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = _G.Dark
Frame.BackgroundTransparency = 0
Frame.Position = UDim2.new(0.370578766, 0, 0.300341278, 0)
Frame.Size = UDim2.new(0, 360, 0, 200)

local FrameCorner = Instance.new("UICorner")
FrameCorner.Parent = Frame
FrameCorner.CornerRadius = UDim.new(0, 5)

local FrameLine = Instance.new("Frame")
FrameLine.Parent = Frame
FrameLine.BackgroundColor3 = _G.Primary
FrameLine.BackgroundTransparency = 0
FrameLine.Position = UDim2.new(0, 10, 0, 60)
FrameLine.Size = UDim2.new(0, 340, 0, 1)

local logo = Instance.new("ImageLabel")
logo.Name = "logo"
logo.Parent = Frame
logo.BackgroundTransparency = 1
logo.Position = UDim2.new(0, 10, 0, 5)
logo.Size = UDim2.new(0, 50, 0, 50)
logo.Image = "rbxassetid://17872490085" --Logo do BYTE HUB
logo.ImageColor3 = _G.Primary

local logoDc = Instance.new("ImageButton")
logoDc.Name = "Dc"
logoDc.Parent = Frame
logoDc.BackgroundTransparency = 1
logoDc.Position = UDim2.new(0, 300, 0, 5)
logoDc.Size = UDim2.new(0, 50, 0, 50)
logoDc.Image = "rbxassetid://12817601924"
logoDc.ImageColor3 = _G.Primary

logoDc.MouseButton1Click:Connect(function()
    Frame.Visible = false
end)

local key = Instance.new("ImageLabel")
key.Name = "key"
key.Parent = Frame
key.BackgroundTransparency = 1
key.Position = UDim2.new(0, 15, 0, 80)
key.Size = UDim2.new(0, 50, 0, 50)
key.Image = "rbxassetid://12817057882"
key.ImageColor3 = _G.Primary

local KeyBox = Instance.new("TextBox")
KeyBox.Name = "KeyBox"
KeyBox.Parent = Frame
KeyBox.BackgroundColor3 = _G.Primary
KeyBox.BackgroundTransparency = 1
KeyBox.Position = UDim2.new(0, 75, 0, 90)
KeyBox.Size = UDim2.new(0, 265, 0, 35)
KeyBox.Font = Enum.Font.SourceSans
KeyBox.Text = "Enter key here..."
KeyBox.TextXAlignment = Enum.TextXAlignment.Left
KeyBox.TextColor3 = Color3.fromRGB(200, 200, 200)
KeyBox.TextSize = 14.000
KeyBox.ClearTextOnFocus = true
KeyBox.ClipsDescendants = true

local GetKey = Instance.new("TextButton")
GetKey.Name = "GetKey"
GetKey.Parent = Frame
GetKey.BackgroundColor3 = _G.Primary
GetKey.BackgroundTransparency = .8
GetKey.Position = UDim2.new(0, 15, 0, 150)
GetKey.Size = UDim2.new(0, 160, 0, 35)
GetKey.Text = "Get Key"
GetKey.Font = Enum.Font.GothamSemibold
GetKey.TextColor3 = Color3.fromRGB(200, 200, 200)
GetKey.TextSize = 15.000

GetKey.MouseButton1Click:Connect(function()
setclipboard("https://discord.com/invite/Eh94ypjGcY")
Alert:create("Link Copied!")
end)

local Enter = Instance.new("TextButton")
Enter.Name = "Enter"
Enter.Parent = Frame
Enter.BackgroundColor3 = _G.Primary
Enter.BackgroundTransparency = .8
Enter.Position = UDim2.new(0, 185, 0, 150)
Enter.Size = UDim2.new(0, 160, 0, 35)
Enter.Text = "Check Key"
Enter.Font = Enum.Font.GothamSemibold
Enter.TextColor3 = Color3.fromRGB(200, 200, 200)
Enter.TextSize = 15.000

local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 80, 0, 5)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Text = "Byte Hub | Get Key"
TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextSize = 20.000

local function EnableDrag(frame)
    local dragging
    local dragStart
    local startPos
    
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

EnableDrag(Frame)

Enter.MouseButton1Click:Connect(function()
    if KeyBox.Text == 'tuhbvdd477Tnbcthb6377773%$2?)+?(;nbbryggg' then
        Frame.Visible = false
        Alert:create("Valid Key!")
        wait(1)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DamThien332/TPS-Script/main/PC-Version.lua"))()
    else
        Alert:create("Invalid Key!")
    end
end)
--//Made By DamThien\\--
