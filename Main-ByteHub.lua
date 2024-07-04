repeat wait(1) until game:IsLoaded()
local ByteHubNotify = function(Text_i,Duration_i)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Byte Hub V2",
        Text = Text_i,
        Duration = Duration_i,
        Icon = "rbxassetid://17872490085"
    })
end
--Key
wait(0.1)
ByteHubNotify("Thanks for using Byte Hub!",5)
wait(0.1)
ByteHubNotify("Premium Script Byte Hub Avaible on Discord, GO BUY!",10)
wait(0.1)
ByteHubNotify("PRICE 80 ROBUX!!!",5)
wait(0.1)
ByteHubNotify("GO BUY BROOO",5)

local TweenService = game:GetService("TweenService")

-- ScreenGui object
local gui = Instance.new("ScreenGui")
gui.Name = "CustomLoader"
gui.ResetOnSpawn = false -- Evitar resetar o GUI quando o jogador reaparece
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 350, 0, 250) -- Tamanho original
frame.Position = UDim2.new(0.5, -175, 0.5, -125) -- Posição original
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.Active = true
frame.Draggable = true
frame.Parent = gui

-- UICorner of the frame
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 5)
corner.Parent = frame

-- Close button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 20, 0, 20) -- Tamanho original
closeButton.Position = UDim2.new(1, -30, 0, 10) -- Posição original
closeButton.BackgroundTransparency = 1
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.TextSize = 12 -- Tamanho original
closeButton.Text = "x"
closeButton.MouseButton1Click:Connect(function()
    animateFrameOut()
end)
closeButton.Parent = frame

-- Icon
local icon = Instance.new("ImageButton")
icon.Size = UDim2.new(0, 150, 0, 150) -- Tamanho original
icon.Position = UDim2.new(0.77, -100, 0.10, 0) -- Movido mais para a direita, altere isso nao porra
icon.AnchorPoint = Vector2.new(0.5, 0)
icon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
icon.Image = "rbxassetid://17386989978"
icon.Parent = frame

-- Loading text
local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(0.8, 0, 0, 30) -- Tamanho original
loadingText.Position = UDim2.new(0.1, 0, 0.76, 0) -- Posição original
loadingText.BackgroundColor3 = Color3.new(0, 0, 0)
loadingText.BackgroundTransparency = 1
loadingText.TextColor3 = Color3.new(1, 1, 1)
loadingText.TextSize = 14 -- Tamanho original
loadingText.Font = Enum.Font.SourceSansBold
loadingText.Text = "Loading Script..."
loadingText.Parent = frame

-- Loading bar frame
local loadingBarFrame = Instance.new("Frame")
loadingBarFrame.Size = UDim2.new(0.6, 0, 0, 10) -- Tamanho original
loadingBarFrame.Position = UDim2.new(0.025, 0, 0.9, 0) -- Posição original
loadingBarFrame.AnchorPoint = Vector2.new(0, 1)
loadingBarFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loadingBarFrame.Parent = frame

-- UICorner of the loading bar frame
local corner_2 = Instance.new("UICorner")
corner_2.CornerRadius = UDim.new(0, 5)
corner_2.Parent = loadingBarFrame

-- Function to animate the loading bar
function animateLoadingBar()
    local progress = 0

    while progress < 100 do
        progress = progress + 1
        updateProgress(progress)
        wait(0.10)
    end
    
    loadingText.Text = "Loading Functions..."
    wait(2.5)
    animateFrameOut()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DamThien332/TPS-Script/main/Chooser.lua"))()
end

-- Function to update the loading progress
function updateProgress(progress)
    loadingBarFrame.Size = UDim2.new(progress / 105, 0, 0, 10)
    loadingText.Text = "Loading Script:" .. progress .. "%"
end


-- Função para animar a entrada do frame
function animateFrameIn()
  frame.Position = UDim2.new(0.5, -175, 1.5, -125) -- Posição abaixo da tela
  frame.Visible = true -- Certifique-se de que o quadro esteja visível antes da animação
  local endPosition = UDim2.new(0.5, -175, 0.5, -125) -- Posição original
  local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0) -- Ajustar duração para 1 segundo
  local tween = TweenService:Create(frame, tweenInfo, {Position = endPosition})
  tween:Play()
end

function animateFrameOut()
  local endPosition = UDim2.new(0.5, -175, 1.5, -125) -- Posição abaixo da tela
  local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.In, 0, false, 0) 
  local tween = TweenService:Create(frame, tweenInfo, {Position = endPosition})
  tween:Play()
  tween.Completed:Connect(function()
      gui:Destroy()
  end)
end

function animateIconBrightness()
    while true do
        TweenService:Create(icon, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
        wait(1)
        TweenService:Create(icon, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {ImageTransparency = 0.5}):Play()
        wait(1)
    end
end

animateFrameIn()
spawn(animateLoadingBar)
spawn(animateIconBrightness)
