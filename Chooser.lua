--Loader
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Icon = Instance.new("ImageLabel")
local Line = Instance.new("Frame")
local Chose = Instance.new("TextLabel")
local Beta = Instance.new("TextButton")
local Pc = Instance.new("TextButton")
local Mobile = Instance.new("TextButton")
local Premium = Instance.new("TextButton")
local UICornerFrame = Instance.new("UICorner")
local UICornerIcon = Instance.new("UICorner")
local UICornerBeta = Instance.new("UICorner")
local UICornerPc = Instance.new("UICorner")
local UICornerMobile = Instance.new("UICorner")
local UICornerPremium = Instance.new("UICorner")

--Properties
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 1.5, 0) -- Start position off-screen
Frame.Size = UDim2.new(0, 320, 0, 300)
Frame.ClipsDescendants = true
Frame.Active = true
Frame.Draggable = true

UICornerFrame.CornerRadius = UDim.new(0, 8)
UICornerFrame.Parent = Frame

Title.Parent = Frame
Title.AnchorPoint = Vector2.new(0.5, 0)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.5, 0, 0, 0)
Title.Size = UDim2.new(0, 320, 0, 40)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Byte Hub Choose Script"
Title.TextColor3 = Color3.fromRGB(43, 169, 228)
Title.TextSize = 30

UICornerIcon.CornerRadius = UDim.new(0, 5)
UICornerIcon.Parent = Icon

Line.Parent = Title
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.Size = UDim2.new(1, 0, 0, 5)
Line.Position = UDim2.new(0, 0, 1.1, 0)

Beta.Parent = Frame
Beta.AnchorPoint = Vector2.new(0.5, 0)
Beta.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Beta.Position = UDim2.new(0.5, 0, 0, 95)
Beta.Size = UDim2.new(0, 190, 0, 40)
Beta.Font = Enum.Font.SourceSans
Beta.Text = "Beta"
Beta.TextColor3 = Color3.fromRGB(255, 255, 255)
Beta.TextSize = 25

UICornerBeta.CornerRadius = UDim.new(0, 8)
UICornerBeta.Parent = Beta

Pc.Parent = Frame
Pc.AnchorPoint = Vector2.new(0.5, 0)
Pc.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Pc.Position = UDim2.new(0.5, 0, 0, 145)
Pc.Size = UDim2.new(0, 190, 0, 40)
Pc.Font = Enum.Font.SourceSans
Pc.Text = "Solara:PC"
Pc.TextColor3 = Color3.fromRGB(255, 255, 255)
Pc.TextSize = 23

UICornerPc.CornerRadius = UDim.new(0, 8)
UICornerPc.Parent = Pc

Mobile.Parent = Frame
Mobile.AnchorPoint = Vector2.new(0.5, 0)
Mobile.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Mobile.Position = UDim2.new(0.5, 0, 0, 195)
Mobile.Size = UDim2.new(0, 190, 0, 40)
Mobile.Font = Enum.Font.SourceSans
Mobile.Text = "Mobile:Patched"
Mobile.TextColor3 = Color3.fromRGB(255, 255, 255)
Mobile.TextSize = 23

UICornerMobile.CornerRadius = UDim.new(0, 8)
UICornerMobile.Parent = Mobile

Premium.Parent = Frame
Premium.AnchorPoint = Vector2.new(0.5, 0)
Premium.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Premium.Position = UDim2.new(0.5, 0, 0, 245)
Premium.Size = UDim2.new(0, 190, 0, 40)
Premium.Font = Enum.Font.SourceSans
Premium.Text = "Auto Farm Goal"
Premium.TextColor3 = Color3.fromRGB(255, 255, 255)
Premium.TextSize = 23

UICornerPremium.CornerRadius = UDim.new(0, 8)
UICornerPremium.Parent = Premium

--Animation
local tweenService = game:GetService("TweenService")
local curve = Enum.EasingStyle.Sine
local direction = Enum.EasingDirection.Out

local frameIn = {
  Position = UDim2.new(0.5, 0, 0.5, 0), -- Target position
}

local frameOut = {
  Position = UDim2.new(0.5, 0, 1.5, 0),
}

-- Function to animate the entrance
function animateIn()
  local frameTween = tweenService:Create(Frame, TweenInfo.new(2, curve, direction), frameIn)
  frameTween:Play()
end

function animateOut()
  local frameTween = tweenService:Create(Frame, TweenInfo.new(2, curve, direction), frameOut)
  frameTween:Play()
  frameTween.Completed:Connect(function()
    ScreenGui:Destroy()
  end)
end

-- Start the entrance animation
animateIn()

Beta.MouseButton1Click:Connect(function()
  animateOut()
  wait(0.1)
  --Soon
end)

Pc.MouseButton1Click:Connect(function()
  animateOut()
  wait(0.1)
  loadstring(game:HttpGet("https://raw.githubusercontent.com/DamThien332/TPS-Script/main/Key.System-PC.lua"))()
end)

Mobile.MouseButton1Click:Connect(function()
  animateOut()
  wait(0.1)
  loadstring(game:HttpGet("https://raw.githubusercontent.com/DamThien332/TPS-Script/main/Mobile-Version.lua"))()
end)

Premium.MouseButton1Click:Connect(function()
  animateOut()
  wait(0.1)
  loadstring(game:HttpGet("https://raw.githubusercontent.com/DamThien332/TPS-Script/main/AutoFarmGoals.lua"))()
end)
