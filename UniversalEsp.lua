-- Universal Esp by zzerexx#3970
if typeof(Drawing.new) ~= "function" then
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Universal Esp",
        Text = "Your exploit does not have a Drawing Library",
        Duration = 10
    })
    return
end
if typeof(getgenv().UNIVERSALESP_OBJECTS) == "table" then
    for i,v in next, getgenv().UNIVERSALESP_OBJECTS do
        v:Remove()
        table.remove(getgenv().UNIVERSALESP_OBJECTS,i)
    end
end

local players = game:GetService("Players")
local player = players.LocalPlayer
local camera = workspace.CurrentCamera
local mouse = game:GetService("UserInputService"):GetMouseLocation()
local RunService = game:GetService("RunService")
local ss = getgenv().EspSettings
getgenv().UNIVERSALESP_OBJECTS = {}

function Box(plr)
    local box = Drawing.new("Square")
    box.Visible = true
    box.Transparency = ss.Boxes.Transparency
    box.Color = ss.Boxes.Color
    box.Thickness = 1
    box.Filled = false
    local rs = RunService.RenderStepped:Connect(function()
        ss = getgenv().EspSettings
        if ss.Boxes.Enabled and plr and plr ~= player and plr.Character and plr.Character:FindFirstChild("Head") and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
            local vector, inViewport = camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
            
            local root = plr.Character.HumanoidRootPart
            local head = plr.Character.Head
            local rootpos = camera:WorldToViewportPoint(root.Position)
            local headpos = camera:WorldToViewportPoint(head.Position + Vector3.new(0,0.5,0))
            local legpos = camera:WorldToViewportPoint(root.Position - Vector3.new(0,3,0))

            if inViewport then
                box.Transparency = ss.Boxes.Transparency
                box.Size = Vector2.new(1000 / rootpos.Z, headpos.Y - legpos.Y)
                box.Position = Vector2.new(rootpos.X - box.Size.X / 2, rootpos.Y - (box.Size.Y / 2))

                if ss.TeamCheck and plr.Team == player.Team then
                    box.Visible = false
                else
                    box.Visible = true
                end
            else
                box.Visible = false
            end
            if ss.Boxes.UseTeamColor then
                box.Color = plr.TeamColor.Color
            else
                box.Color = ss.Boxes.Color
            end
        else
            box.Visible = false
        end
    end)
    players.PlayerRemoving:Connect(function(p)
        if p == plr then
            box:Remove()
            rs:Disconnect()
        end
    end)
    table.insert(getgenv().UNIVERSALESP_OBJECTS,#getgenv().UNIVERSALESP_OBJECTS+1,box)
end

function Tracer(plr)
    local tracer = Drawing.new("Line")
    tracer.Visible = true
    tracer.Transparency = ss.Tracers.Transparency
    tracer.Color = ss.Tracers.Color
    tracer.Thickness = ss.Tracers.Thickness
    local rs = RunService.RenderStepped:Connect(function()
        ss = getgenv().EspSettings
        if ss.Tracers.Enabled and plr and plr ~= player and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
            local vector, inViewport = camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
            
            local top = Vector2.new(camera.ViewportSize.X / 2, 0)
            local center = Vector2.new(camera.ViewportSize.X / 2,camera.ViewportSize.Y / 2)
            local bottom = Vector2.new(camera.ViewportSize.X / 2,camera.ViewportSize.Y)
            mouse = game:GetService("UserInputService"):GetMouseLocation()
            local origin = top
            if ss.Tracers.Origin:lower() == "top" then
                origin = top
            elseif ss.Tracers.Origin:lower() == "center" then
                origin = center
            elseif ss.Tracers.Origin:lower() == "bottom" then
                origin = bottom
            elseif ss.Tracers.Origin:lower() == "mouse" then
                origin = mouse
            end

            if inViewport then
                tracer.Transparency = ss.Tracers.Transparency
                tracer.Thickness = ss.Tracers.Thickness
                tracer.From = origin
                tracer.To = Vector2.new(vector.X,vector.Y)

                if ss.TeamCheck and plr.Team == player.Team then
                    tracer.Visible = false
                else
                    tracer.Visible = true
                end
            else
                tracer.Visible = false
            end
            if ss.Tracers.UseTeamColor then
                tracer.Color = plr.TeamColor.Color
            else
                tracer.Color = ss.Tracers.Color
            end
        else
            tracer.Visible = false
        end
    end)
    players.PlayerRemoving:Connect(function(p)
        if p == plr then
            tracer:Remove()
            rs:Disconnect()
        end
    end)
    table.insert(getgenv().UNIVERSALESP_OBJECTS,#getgenv().UNIVERSALESP_OBJECTS+1,tracer)
end

function Name(plr)
    local name = Drawing.new("Text")
    name.Visible = true
    name.Transparency = ss.Names.Transparency
    name.Color = ss.Names.Color
    name.Text = plr.Name
    name.Size = ss.Names.Size
    name.Center = true
    name.Outline = ss.Names.Outline
    name.OutlineColor = ss.Names.OutlineColor
    name.Font = ss.Names.Font
    local rs = RunService.RenderStepped:Connect(function()
        ss = getgenv().EspSettings
        if ss.Names.Enabled and plr and plr ~= player and plr.Character and plr.Character:FindFirstChild("Head") and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
            local vector, inViewport = camera:WorldToViewportPoint(plr.Character.Head.Position)
            if inViewport then
                name.Transparency = ss.Names.Transparency
                name.Size = ss.Names.Size
                name.Outline = ss.Names.Outline
                name.OutlineColor = ss.Names.OutlineColor
                name.Position = Vector2.new(vector.X,vector.Y-30)
                name.Font = ss.Names.Font
                if ss.TeamCheck and plr.Team == player.Team then
                    name.Visible = false
                else
                    name.Visible = true
                end
                local mag = (player.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude
                local health = plr.Character:FindFirstChildOfClass("Humanoid").Health
                local maxhealth = plr.Character:FindFirstChildOfClass("Humanoid").MaxHealth
                if ss.Names.ShowDistance and ss.Names.ShowHealth then
                    name.Text = plr.Name.." [ "..math.floor(mag).." ] [ "..math.floor(health).."/"..math.floor(maxhealth).." ]"
                elseif ss.Names.ShowDistance then
                    name.Text = plr.Name.." [ "..math.floor(mag).." ]"
                elseif ss.Names.ShowHealth then
                    name.Text = plr.Name.." [ "..math.floor(health).."/"..math.floor(maxhealth).." ]"
                else
                    name.Text = plr.Name
                end
            else
                name.Visible = false
            end
            if ss.Names.UseTeamColor then
                name.Color = plr.TeamColor.Color
            else
                name.Color = ss.Names.Color
            end
        else
            name.Visible = false
        end
    end)
    players.PlayerRemoving:Connect(function(p)
        if p == plr then
            name:Remove()
            rs:Disconnect()
        end
    end)
    table.insert(getgenv().UNIVERSALESP_OBJECTS,#getgenv().UNIVERSALESP_OBJECTS+1,name)
end

for i,v in next, players:GetPlayers() do
    if ss.Boxes.Enabled then
        Box(v)
    end
    if ss.Tracers.Enabled then
        Tracer(v)
    end
    if ss.Names.Enabled then
        Name(v)
    end
end
players.PlayerAdded:Connect(function(v)
    if ss.Boxes.Enabled then
        Box(v)
    end
    if ss.Tracers.Enabled then
        Tracer(v)
    end
    if ss.Names.Enabled then
        Name(v)
    end
end)
