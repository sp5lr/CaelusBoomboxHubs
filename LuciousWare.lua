-- LuciousWare - Caelus.lol 2020 Compatible (Dec 30, 2025)
-- Audio format: https://www.caelus.lol/catalog/ID/song

local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

-- Auto-update on respawn
plr.CharacterAdded:Connect(function(newChar)
    char = newChar
    hum = newChar:WaitForChild("Humanoid")
    root = newChar:WaitForChild("HumanoidRootPart")
end)

-- === GLOBALS ===
_G.Speed = 1
_G.WaveInt = 3
_G.Distance = 5
_G.Responsiveness = 200
_G.Bass = 100
_G.VisAngle = "Y"      -- Default: Circle
_G.WavesAngle = "Y"
_G.WavesOn = "Off"
_G.WaveCount = 1
_G.target = plr.Name

local visualizerActive = false
local visParts = {}

-- === GUI ===
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LuciousWare"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = plr:WaitForChild("PlayerGui")

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 569, 0, 329)
Main.Position = UDim2.new(0.23, 0, 0.24, 0)
Main.BackgroundColor3 = Color3.fromRGB(29, 32, 58)
Main.Parent = ScreenGui

-- Drag
local UIS = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos
Main.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = Main.Position
    end
end)
Main.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)
UIS.InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        local delta = input.Position - dragStart
        Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)
Main.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

-- Title Bar
local Bar = Instance.new("Frame")
Bar.Size = UDim2.new(0, 144, 1, 0)
Bar.BackgroundColor3 = Color3.fromRGB(36, 40, 72)
Bar.Parent = Main

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 50)
Title.BackgroundTransparency = 1
Title.Text = "LUCIOUS"
Title.TextColor3 = Color3.new(1,1,1)
Title.Font = Enum.Font.GothamSemibold
Title.TextSize = 22
Title.Parent = Bar

local Subtitle = Instance.new("TextLabel")
Subtitle.Size = UDim2.new(1, 0, 0, 50)
Subtitle.Position = UDim2.new(0, 0, 0.058, 0)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "WARE"
Subtitle.TextColor3 = Color3.new(1,1,1)
Subtitle.Font = Enum.Font.GothamSemibold
Subtitle.TextSize = 22
Subtitle.Parent = Bar

-- Close & Minimize
local Close = Instance.new("TextButton")
Close.Size = UDim2.new(0, 15, 0, 15)
Close.Position = UDim2.new(0.933, 0, 0.18, 0)
Close.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
Close.Text = "X"
Close.Parent = Main
Close.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)

local Minify = Instance.new("TextButton")
Minify.Size = UDim2.new(0, 15, 0, 15)
Minify.Position = UDim2.new(0.875, 0, 0.18, 0)
Minify.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
Minify.Text = "-"
Minify.Parent = Main
Minify.MouseButton1Click:Connect(function()
    Main.Size = Main.Size == UDim2.new(0, 569, 0, 329) and UDim2.new(0, 569, 0, 24) or UDim2.new(0, 569, 0, 329)
end)

-- Frames
local Frames = Instance.new("Frame")
Frames.Size = UDim2.new(0, 425, 1, 0)
Frames.Position = UDim2.new(0.253, 0, 0, 0)
Frames.BackgroundColor3 = Color3.fromRGB(29, 32, 58)
Frames.Parent = Main

local Frame1 = Instance.new("Frame")  -- Home
Frame1.Size = UDim2.new(1, 0, 1, 0)
Frame1.BackgroundColor3 = Color3.fromRGB(29, 32, 58)
Frame1.Parent = Frames

local Frame2 = Instance.new("Frame")  -- Visualizer
Frame2.Size = UDim2.new(1, 0, 1, 0)
Frame2.BackgroundColor3 = Color3.fromRGB(29, 32, 58)
Frame2.Visible = false
Frame2.Parent = Frames

local LogFrame = Instance.new("Frame")  -- Logger
LogFrame.Size = UDim2.new(1, 0, 1, 0)
LogFrame.BackgroundColor3 = Color3.fromRGB(29, 32, 58)
LogFrame.Visible = false
LogFrame.Parent = Frames

local Frame3 = Instance.new("Frame")  -- Settings/Scripts
Frame3.Size = UDim2.new(1, 0, 1, 0)
Frame3.BackgroundColor3 = Color3.fromRGB(29, 32, 58)
Frame3.Visible = false
Frame3.Parent = Frames

-- Tab Buttons
local function makeTab(text, pos, targetFrame)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 153, 0, 39)
    btn.Position = pos
    btn.BackgroundTransparency = 1
    btn.Text = text
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Font = Enum.Font.GothamSemibold
    btn.TextSize = 14
    btn.Parent = Bar
    btn.MouseButton1Click:Connect(function()
        Frame1.Visible = (targetFrame == Frame1)
        Frame2.Visible = (targetFrame == Frame2)
        LogFrame.Visible = (targetFrame == LogFrame)
        Frame3.Visible = (targetFrame == Frame3)
    end)
end

makeTab("Home", UDim2.new(0.125, 0, 0.267, 0), Frame1)
makeTab("Visualizer", UDim2.new(0.125, 0, 0.407, 0), Frame2)
makeTab("Logger", UDim2.new(0.125, 0, 0.547, 0), LogFrame)
makeTab("Settings", UDim2.new(0.097, 0, 0.696, 0), Frame3)

-- === VISUALIZER ===
local AudioId = Instance.new("TextBox")
AudioId.Size = UDim2.new(0, 141, 0, 26)
AudioId.Position = UDim2.new(0.5, -70.5, 0.067, 0)
AudioId.BackgroundColor3 = Color3.fromRGB(67, 75, 135)
AudioId.PlaceholderText = "Audio ID"
AudioId.Parent = Frame2

local VisualizeBtn = Instance.new("TextButton")
VisualizeBtn.Size = UDim2.new(0, 80, 0, 27)
VisualizeBtn.Position = UDim2.new(0.656, 0, 0.144, 0)
VisualizeBtn.BackgroundColor3 = Color3.fromRGB(85, 125, 255)
VisualizeBtn.Text = "Visualize"
VisualizeBtn.Parent = Frame2

local SyncBtn = Instance.new("TextButton")
SyncBtn.Size = UDim2.new(0, 80, 0, 27)
SyncBtn.Position = UDim2.new(0.176, 0, 0.145, 0)
SyncBtn.BackgroundColor3 = Color3.fromRGB(85, 125, 255)
SyncBtn.Text = "Sync"
SyncBtn.Parent = Frame2

local TpInput = Instance.new("TextBox")
TpInput.Size = UDim2.new(0, 80, 0, 27)
TpInput.Position = UDim2.new(0.77, 0, 0.027, 0)
TpInput.PlaceholderText = "Time Pos"
TpInput.Parent = Frame2

TpInput.FocusLost:Connect(function(enter)
    if enter then
        for _, tool in pairs(char:GetChildren()) do
            if tool:IsA("Tool") then
                local sound = tool:FindFirstChild("Handle") and tool.Handle:FindFirstChildOfClass("Sound")
                if sound then
                    sound.TimePosition = tonumber(TpInput.Text) or 0
                end
            end
        end
        TpInput.Text = ""
    end
end)

-- Settings
local function makeSetting(name, pos, globalVar, default)
    local box = Instance.new("TextBox")
    box.Size = UDim2.new(0, 80, 0, 27)
    box.Position = pos
    box.BackgroundColor3 = Color3.fromRGB(67, 75, 135)
    box.PlaceholderText = name
    box.Text = tostring(default)
    box.Parent = Frame2
    box.FocusLost:Connect(function()
        _G[globalVar] = tonumber(box.Text) or default
    end)
end

makeSetting("Distance", UDim2.new(0.034, 0, 0.719, 0), "Distance", 5)
makeSetting("WaveCount", UDim2.new(0.034, 0, 0.863, 0), "WaveCount", 1)
makeSetting("Responsiveness", UDim2.new(0.257, 0, 0.856, 0), "Responsiveness", 200)
makeSetting("Wave Int", UDim2.new(0.494, 0, 0.862, 0), "WaveInt", 3)
makeSetting("Bass Int", UDim2.new(0.725, 0, 0.86, 0), "Bass", 100)
makeSetting("Speed", UDim2.new(0.257, 0, 0.719, 0), "Speed", 1)

-- Presets
local function makePreset(text, pos, angle)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 95, 0, 24)
    btn.Position = pos
    btn.BackgroundColor3 = Color3.fromRGB(85, 125, 255)
    btn.Text = text
    btn.Parent = Frame2
    btn.MouseButton1Click:Connect(function()
        _G.VisAngle = angle
    end)
end

makePreset("Circle 1", UDim2.new(0.08, 0, 0.35, 0), "X")
makePreset("Circle 2", UDim2.new(0.08, 0, 0.4, 0), "Y")
makePreset("Circle 3", UDim2.new(0.08, 0, 0.45, 0), "Z")
makePreset("Infinity", UDim2.new(0.08, 0, 0.5, 0), "8")

-- Waves
local function makeWave(text, pos, angle)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 95, 0, 24)
    btn.Position = pos
    btn.BackgroundColor3 = Color3.fromRGB(85, 125, 255)
    btn.Text = text
    btn.Parent = Frame2
    btn.MouseButton1Click:Connect(function()
        _G.WavesAngle = angle
    end)
end

makeWave("UP", UDim2.new(0.7, 0, 0.35, 0), "UP")
makeWave("X", UDim2.new(0.7, 0, 0.4, 0), "X")
makeWave("Y", UDim2.new(0.7, 0, 0.45, 0), "Y")
makeWave("Z", UDim2.new(0.7, 0, 0.5, 0), "Z")

-- Waves Toggle
local WavesOn = Instance.new("TextButton")
WavesOn.Size = UDim2.new(0, 16, 0, 16)
WavesOn.Position = UDim2.new(0.653, 0, 0.766, 0)
WavesOn.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
WavesOn.Parent = Frame2
WavesOn.MouseButton1Click:Connect(function()
    _G.WavesOn = (_G.WavesOn == "On") and "Off" or "On"
end)

-- Target
local targetBox = Instance.new("TextBox")
targetBox.Size = UDim2.new(0, 80, 0, 26)
targetBox.Position = UDim2.new(0.148, 0, 0.068, 0)
targetBox.BackgroundColor3 = Color3.fromRGB(67, 75, 135)
targetBox.PlaceholderText = "Target"
targetBox.Text = plr.Name
targetBox.Parent = Frame2
targetBox.FocusLost:Connect(function()
    _G.target = targetBox.Text ~= "" and targetBox.Text or plr.Name
end)

-- Mass Play
local MassPlay = Instance.new("TextButton")
MassPlay.Size = UDim2.new(0, 80, 0, 27)
MassPlay.Position = UDim2.new(0.418, 0, 0.147, 0)
MassPlay.BackgroundColor3 = Color3.fromRGB(85, 125, 255)
MassPlay.Text = "Mass Play"
MassPlay.Parent = Frame2

MassPlay.MouseButton1Click:Connect(function()
    local id = AudioId.Text:gsub("%D+", "")
    if id == "" then return end
    for _, tool in pairs(plr.Backpack:GetChildren()) do
        if tool:IsA("Tool") then
            tool.Parent = char
            local sound = tool:FindFirstChild("Handle") and tool.Handle:FindFirstChildOfClass("Sound")
            if sound then
                sound.SoundId = "https://www.caelus.lol/catalog/" .. id .. "/song"
                sound:Play()
            end
        end
    end
end)

-- Dupe
local Amount = Instance.new("TextBox")
Amount.Size = UDim2.new(0, 80, 0, 27)
Amount.Position = UDim2.new(0.405, 0, 0.406, 0)
Amount.PlaceholderText = "Dupe Value"
Amount.Parent = Frame2

local DupeBtn = Instance.new("TextButton")
DupeBtn.Size = UDim2.new(0, 80, 0, 27)
DupeBtn.Position = UDim2.new(0.405, 0, 0.526, 0)
DupeBtn.BackgroundColor3 = Color3.fromRGB(85, 125, 255)
DupeBtn.Text = "Dupe"
DupeBtn.Parent = Frame2

DupeBtn.MouseButton1Click:Connect(function()
    local amt = tonumber(Amount.Text) or 1
    for i = 1, amt do
        for _, tool in pairs(plr.Backpack:GetChildren()) do
            if tool:IsA("Tool") then tool.Parent = char end
        end
        root.CFrame = CFrame.new(0, 9999, 0)
        hum.Health = 0
        plr.CharacterAdded:Wait()
        char = plr.Character
        hum = char:WaitForChild("Humanoid")
        root = char:WaitForChild("HumanoidRootPart")
    end
end)

-- === VISUALIZER LOGIC ===
local function startVisualizer()
    if visualizerActive then return end
    visualizerActive = true
    visParts = {}

    local tools = {}
    for _, tool in pairs(plr.Backpack:GetChildren()) do
        if tool:IsA("Tool") then
            table.insert(tools, tool)
            tool.Parent = char
        end
    end

    wait(2.7)

    for _, tool in pairs(tools) do
        local handle = tool:FindFirstChild("Handle")
        if handle then
            local sound = handle:FindFirstChildOfClass("Sound")
            if not sound then
                sound = Instance.new("Sound", handle)
            end
            local id = AudioId.Text:gsub("%D+", "")
            if id ~= "" then
                sound.SoundId = "https://www.caelus.lol/catalog/" .. id .. "/song"
            end
            sound:Play()

            local fake = Instance.new("Part")
            fake.Transparency = 1
            fake.CanCollide = false
            fake.Anchored = true
            fake.Size = Vector3.new(0,0,0)
            fake.CFrame = handle.CFrame
            fake.Parent = workspace

            local att0 = Instance.new("Attachment", handle)
            local att1 = Instance.new("Attachment", fake)
            local ap = Instance.new("AlignPosition", handle)
            ap.Attachment0 = att0
            ap.Attachment1 = att1
            ap.RigidityEnabled = true
            ap.Responsiveness = _G.Responsiveness

            local ao = Instance.new("AlignOrientation", handle)
            ao.Attachment0 = att0
            ao.Attachment1 = att1
            ao.RigidityEnabled = true
            ao.Responsiveness = _G.Responsiveness

            table.insert(visParts, {handle = handle, fake = fake})
        end
    end

    spawn(function()
        while visualizerActive and char.Parent do
            local targetRoot = workspace:FindFirstChild(_G.target) and workspace[_G.target]:FindFirstChild("HumanoidRootPart") or root
            local loudness = 0
            for _, p in pairs(visParts) do
                local s = p.handle:FindFirstChildOfClass("Sound")
                if s and s.IsPlaying then
                    loudness = math.max(loudness, s.PlaybackLoudness)
                end
            end

            local boost = loudness / (_G.Bass or 100)
            local dist = (_G.Distance or 5) + boost

            local spin = tick() * (_G.Speed or 1) * 10

            for i, p in pairs(visParts) do
                local angle = math.rad(spin + i * (360 / #visParts))
                local cf = targetRoot.CFrame

                if _G.VisAngle == "X" then cf = cf * CFrame.Angles(angle, 0, 0)
                elseif _G.VisAngle == "Y" then cf = cf * CFrame.Angles(0, angle, 0)
                elseif _G.VisAngle == "Z" then cf = cf * CFrame.Angles(0, 0, angle)
                elseif _G.VisAngle == "8" then cf = cf * CFrame.Angles(angle, angle, angle)
                end

                local wave = 0
                if _G.WavesOn == "On" then
                    local w = math.sin(tick() * (_G.WaveInt or 3) + i)
                    if _G.WavesAngle == "X" then wave = w * (_G.WaveCount or 1) * 3
                    elseif _G.WavesAngle == "Y" then wave = w * (_G.WaveCount or 1) * 3
                    elseif _G.WavesAngle == "Z" then wave = w * (_G.WaveCount or 1) * 3
                    elseif _G.WavesAngle == "UP" then wave = math.abs(w) * 5
                    end
                end

                p.fake.CFrame = cf * CFrame.new(0, wave, dist)
            end
            wait()
        end

        for _, p in pairs(visParts) do
            if p.fake then p.fake:Destroy() end
        end
        visParts = {}
        visualizerActive = false
    end)
end

VisualizeBtn.MouseButton1Click:Connect(startVisualizer)

-- === LOGGER ===
local AudioLogs = Instance.new("ScrollingFrame")
AudioLogs.Size = UDim2.new(0, 381, 0, 226)
AudioLogs.Position = UDim2.new(0.054, 0, 0.058, 0)
AudioLogs.BackgroundColor3 = Color3.fromRGB(29, 32, 58)
AudioLogs.Parent = LogFrame

local function refreshLogs(scope)
    AudioLogs:ClearAllChildren()
    local layout = Instance.new("UIListLayout")
    layout.Parent = AudioLogs

    local sounds = (scope == "workspace") and workspace:GetDescendants() or game:GetDescendants()
    for _, v in pairs(sounds) do
        if v:IsA("Sound") and v.IsLoaded then
            local frame = Instance.new("Frame")
            frame.Size = UDim2.new(1, 0, 0, 40)
            frame.BackgroundColor3 = Color3.fromRGB(56, 63, 113)
            frame.Parent = AudioLogs

            local nameLabel = Instance.new("TextLabel")
            nameLabel.Size = UDim2.new(0.7, 0, 1, 0)
            nameLabel.BackgroundTransparency = 1
            nameLabel.Text = v.Parent.Name .. " - " .. v.SoundId
            nameLabel.TextColor3 = Color3.new(1,1,1)
            nameLabel.Parent = frame

            local selectBtn = Instance.new("TextButton")
            selectBtn.Size = UDim2.new(0.3, 0, 1, 0)
            selectBtn.Position = UDim2.new(0.7, 0, 0, 0)
            selectBtn.Text = "Select"
            selectBtn.Parent = frame
            selectBtn.MouseButton1Click:Connect(function()
                AudioId.Text = v.SoundId:match("%d+")
            end)
        end
    end
    AudioLogs.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)
end

-- Add logger buttons (WorkspaceL, GameL, etc.) as in original

-- === SETTINGS/SCRIPTS ===
-- Steal Tools
local stealActive = false
local StealBtn = Instance.new("TextButton")
StealBtn.Size = UDim2.new(0, 134, 0, 29)
StealBtn.Position = UDim2.new(0.558, 0, 0.414, 0)
StealBtn.BackgroundColor3 = Color3.fromRGB(62, 69, 124)
StealBtn.Text = "Steal Tools"
StealBtn.Parent = Frame3
StealBtn.MouseButton1Click:Connect(function()
    stealActive = not stealActive
end)

spawn(function()
    while wait(0.2) do
        if stealActive then
            for _, tool in pairs(workspace:GetChildren()) do
                if tool:IsA("Tool") then
                    hum:EquipTool(tool)
                end
            end
        end
    end
end)

-- Anti-Logger
local Antilog = Instance.new("TextBox")
Antilog.Size = UDim2.new(0, 174, 0, 28)
Antilog.Position = UDim2.new(0.518, 0, 0.208, 0)
Antilog.PlaceholderText = "Antilogger"
Antilog.Parent = Frame3

Antilog.FocusLost:Connect(function(enter)
    if enter and Antilog.Text ~= "" then
        local id = Antilog.Text:gsub("%D+", "")
        local obfuscated = string.rep("\n", 10) .. id .. string.rep(" ", 50) .. "LuciousWare"
        for _, tool in pairs(char:GetChildren()) do
            if tool:IsA("Tool") then
                local re = tool:FindFirstChildOfClass("RemoteEvent")
                if re then
                    re:FireServer("PlaySong", obfuscated)
                end
            end
        end
        Antilog.Text = ""
    end
end)

-- Remove Mesh
local RemoveMeshBtn = Instance.new("TextButton")
RemoveMeshBtn.Size = UDim2.new(0, 85, 0, 20)
RemoveMeshBtn.Position = UDim2.new(0.048, 0, 0.386, 0)
RemoveMeshBtn.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
RemoveMeshBtn.Text = "Remove Mesh"
RemoveMeshBtn.Parent = Frame3
RemoveMeshBtn.MouseButton1Click:Connect(function()
    for _, tool in pairs(char:GetChildren()) do
        if tool:IsA("Tool") then
            for _, mesh in pairs(tool:GetDescendants()) do
                if mesh:IsA("SpecialMesh") or mesh:IsA("BlockMesh") then
                    mesh:Destroy()
                end
            end
        end
    end
end)

print("LuciousWare Loaded - Caelus.lol Compatible!")
