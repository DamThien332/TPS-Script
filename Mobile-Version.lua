
local OutdatedScreen = Instance.new("ScreenGui")
local ImageFrame = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local VersionOutdatedText = Instance.new("TextLabel")
local VexHubLogo = Instance.new("ImageLabel")
local JoinServerButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local Stuff = Instance.new("TextLabel")

--Properties:

OutdatedScreen.Name = "OutdatedScreen"
OutdatedScreen.Parent = game:GetService("CoreGui")
OutdatedScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
OutdatedScreen.ResetOnSpawn = false

ImageFrame.Name = "ImageFrame"
ImageFrame.Parent = OutdatedScreen
ImageFrame.Active = true
ImageFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageFrame.BorderSizePixel = 0
ImageFrame.Position = UDim2.new(0.354136616, 0, 0.284705848, 0)
ImageFrame.Size = UDim2.new(0, 230, 0, 200)
ImageFrame.Image = "http://www.roblox.com/asset/?id=11926598891"
ImageFrame.ImageTransparency = 0.500
ImageFrame.ScaleType = Enum.ScaleType.Crop
ImageFrame.Active = true
ImageFrame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = ImageFrame

VersionOutdatedText.Name = "VersionOutdatedText"
VersionOutdatedText.Parent = ImageFrame
VersionOutdatedText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VersionOutdatedText.BackgroundTransparency = 1.000
VersionOutdatedText.BorderColor3 = Color3.fromRGB(0, 0, 0)
VersionOutdatedText.BorderSizePixel = 0
VersionOutdatedText.Position = UDim2.new(0.469565213, 0, 0.110652164, 0)
VersionOutdatedText.Size = UDim2.new(0, 94, 0, 55)
VersionOutdatedText.Font = Enum.Font.GothamBold
VersionOutdatedText.Text = "Version Outdated!"
VersionOutdatedText.TextColor3 = Color3.fromRGB(255, 255, 255)
VersionOutdatedText.TextSize = 20.000
VersionOutdatedText.TextWrapped = true

VexHubLogo.Name = "VexHubLogo"
VexHubLogo.Parent = ImageFrame
VexHubLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VexHubLogo.BackgroundTransparency = 1.000
VexHubLogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
VexHubLogo.BorderSizePixel = 0
VexHubLogo.Position = UDim2.new(0.0608695634, 0, 0, 0)
VexHubLogo.Size = UDim2.new(0, 100, 0, 100)
VexHubLogo.Image = "rbxassetid://14803348752"

JoinServerButton.Name = "JoinServerButton"
JoinServerButton.Parent = ImageFrame
JoinServerButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JoinServerButton.BackgroundTransparency = 0.900
JoinServerButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
JoinServerButton.BorderSizePixel = 0
JoinServerButton.Position = UDim2.new(0.0652173907, 0, 0.819999993, 0)
JoinServerButton.Size = UDim2.new(0, 200, 0, 23)
JoinServerButton.Font = Enum.Font.GothamMedium
JoinServerButton.Text = "Join Server"
JoinServerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
JoinServerButton.TextSize = 16.000

UICorner_2.Parent = JoinServerButton

UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Thickness = 0.500
UIStroke.Transparency = 0.700
UIStroke.Parent = JoinServerButton

Stuff.Name = "Stuff"
Stuff.Parent = ImageFrame
Stuff.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Stuff.BackgroundTransparency = 1.000
Stuff.BorderColor3 = Color3.fromRGB(0, 0, 0)
Stuff.BorderSizePixel = 0
Stuff.Position = UDim2.new(0.0217391308, 0, 0.495439142, 0)
Stuff.Size = UDim2.new(0, 220, 0, 48)
Stuff.Font = Enum.Font.Gotham
Stuff.Text = "This GUI Is Now Outdated. W-Skinny Hub Has Been Moved To A New, Better GUI. To Download The New GUI, Join Our Discord Server!"
Stuff.TextColor3 = Color3.fromRGB(255, 255, 255)
Stuff.TextSize = 12.000
Stuff.TextWrapped = true
Stuff.TextYAlignment = Enum.TextYAlignment.Top

JoinServerButton.MouseButton1Down:connect(function()
setclipboard("https://discord.gg/gV7eJT9wp4")
end)
