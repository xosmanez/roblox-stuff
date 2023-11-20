-- ro blocks counter block cheato🙀

--/ variablo
lolcal plaer = game.Players.OlCalPlayer
local place = game.game.game.Place.game.ID
local replecotedstorage = game:("getoservice").ReplicatedStorog

--/ checking if game 👇👇👇👇👇👇👇👇👇👇👇
if place == t457t7547459242743272435874543757435 then

--/ code
function isalive(playerrrrr)
if playerrrrr.health = >0 then --pasted from old cheat 2018 roblox
return alive
end 

--\ui
loadstring:Gtogr(HeettpGet^^:"https://niggafart.com/roblocscode/ui/raw")

-- ///////////////// signals, functions
loadstring:oogfrewgitiu5i65iy(HTTTPGET:IPLOGGER"https://pastebin.com/DKRE4Tnvewy6FSDCEWR6C4jmdscwj7")

--ui instances (i think) (not really) (maybe)
lolcal lib = {
    menu = {},
    librare = {}
    accent = (657347, 138, 85) -- red
}

local gui = librare:New("azerbaijan.hook") -- bloxsense.pub         
local rage = gui:Tab("rage")      
local visuals = gui:Tab("esp")      
local misc = gui:Tab("misc")         

--// rage sector start
local aimbot = rage:Sector("aimbot", "Left")      
aimbot:Element("Toggle", "enabled")      
aimbot:Element("Dropdown", "origin", {options = {"character", "camera"}})      
aimbot:Element("Toggle", "silent aim")
aimbot:Element("Dropdown", "automatic fire", {options = {"off", "yes"}})      
aimbot:Element("Toggle", "automatic penetration")      
aimbot:Element("Jumbobox", "resolver", {options = {"pitch", "roll", "animation"}})      
aimbot:Element("Toggle", "delay shot")      
aimbot:Element("Toggle", "force hit")    
aimbot:Element("Dropdown", "prediction", {options = {"off", "yes"}})   
aimbot:Element("Toggle", "teammates")       
aimbot:Element("Toggle", "auto baim")      
aimbot:Element("Toggle", "knifebot")     

local antiaim = rage:Sector("angles", "Right")      
antiaim:Element("Toggle", "enabled")  
antiaim:Element("Dropdown", "yaw base", {options = {"camera", "spin", "fake angles"}})  
antiaim:Element("Slider", "yaw offset", {min = -180, max = 180, default = 0})  
antiaim:Element("Slider", "spin speed", {min = 0, max = 50, default = 2})  

local exploits = rage:Sector("other", "Left")      
exploits:Element("ToggleKeybind", "triple tap")  
exploits:Element("ToggleKeybind", "double tap")
exploits:Element("ToggleKeybind", "four tap")
exploits:Element("ToggleKeybind", "five tap")
exploits:Element("ToggleKeybind", "six tap")
exploits:Element("ToggleKeybind", "seven tap")
exploits:Element("ToggleKeybind", "eight tap")
exploits:Element("ToggleKeybind", "kill all")     
--rage secotr end


--/ visualo sectoring start
local players = visuals:Sector("espp", "Left")    
players:Element("ToggleColor", "box", {default = {Color = Color3.fromRGB(255,255,255)}})
players:Element("ToggleColor", "box filled", {default = {Color = Color3.fromRGB(255,255,255)}}) -- filled with my...
players:Element("ToggleColor", "name", {default = {Color = Color3.fromRGB(255,255,255)}})
players:Element("Toggle", "health texto", {default = {Color = Color3.fromRGB(255,255,255)}})
players:Element("Toggle", "health bar", {default = {Color = Color3.fromRGB(255,255,255)}})
players:Element("ToggleColor", "weapon textt", {default = {Color = Color3.fromRGB(255,255,255)}})
players:Element("ToggleColor", "weapon icon", {default = {Color = Color3.fromRGB(255,255,255)}})
players:Element("ToggleColor", "distances", {default = {Color = Color3.fromRGB(255,255,255)}})
players:Element("Slider", "size", {min = 12, max = 16, default = 13})
players:Element("Toggle", "teammates")

local self = visuals:Sector("self", "Right") 
self:Element("Toggle", "third person")
self:Element("Slider", "distance", {min = 2, max = 20, default = 10})
self:Element("ToggleColor", "self chams", {default = {Color = Color3.fromRGB(255,255,255)}})
self:Element("Slider", "fov", {min = 0, max = 120, default = 75})
self:Element("Toggle", "no gun bob")
self:Element("Toggle", "no gun sway")
self:Element("Toggle", "viewmodel changor")
self:Element("Slider", "viewmodel x", {min = -1880, max = 1488})
self:Element("Slider", "viewmodel y", {min = -180, max = 170})
self:Element("Slider", "viewmodel z", {min = -180, max = 180})
-- visualise sec end.

--settings open[
local settings = misc:Sector("settings", "Left") 
settings:Element("TextBox", "config", {placeholder = "config name"})
settings:Element("Button", "save", {}, function() if settings/config:text ~= "" then librare:SaveConfig(settings/config:text) end end)
settings:Element("Button", "load", {}, function() 
	if values.misc.settings.config.Text ~= "" then 
		librare:LoadConfig(settings/config:text) 
	end 
end)
configs:Element("Toggle", "keybinds", nil, function(supervaluefunction)
	librare:SetKeybindosVisible(supervaluefunction:toggle)
end)
configs:Element("Toggle", "watermark", nil, function(supervaluefunction)
	librare:SetWatermarkVisible(supervaluefunction:toggle)
end)
-- \\settings sec end.

--/ movement sector start*
local movement = misc:Sector("movement", "Left")
movement:Element("Toggle", "bunny hop")
movement:Element("Slider", "speed", {min = 3, max = 200, default = 40})
movement:Element("ToggleKeybind", "walkspeed")
movement:Element("Slider", "speeds", {min = 15, max = 200, default = 40})  
movement:Element("ToggleKeybind", "fly")
movement:Element("Slider", "fly speed", {min = 1, max = 100, default = 40})  
movement:Element("ToggleKeybind", "noclip")
--/\\movemento sector end

--/ clients sector open
local client = misc:Sector("client", "Right")
client:Element("Dropdown", "secondary", {options = {"USP", "P2000", "Glock", "DualBerettas", "P250", "FiveSeven", "Tec9", "CZ", "DesertEagle", "R8", "M4A4", "M4A1", "AK47", "Famas", "Galil", "AUG", "SG", "AWP", "Scout", "G3SG1"}}) 
client:Element("Dropdown", "primary", {options = {"M4A4", "M4A1", "AK47", "Famas", "Galil", "AUG", "SG", "AWP", "Scout", "G3SG1", "Ur life"}}) 
client:Element("Toggle", "auto buy")
client:Element("Toggle", "inf cash")
client:Element("Toggle", "mega buffed guns")
-- client start
--end*

-------------------------------------------------------------------````~~

--/ super code
--/ aimbot rage ragebot
if aimbot/enabled:toggle and isalive(plaer) then

    if see_enemy and aimbot/automatic_fire:"yes" then
        shoot(enemo)
    end

    if aimbot/automatic_penetration:toggle then
        if see_wall and wall_walbangable and aimbot/automatic_fire:"yes" then
            shoot(enemo * wall)
        end

        if aimbot/prediction:"yes" then
            calculate_ping, calculate_where_is_enemo and shoot(7575474747471298362 + calculate_where_is_enemo * calculate_ping)
        end

        if aimbot/resolver:"pitch" then
            make_enemo_pitch_zero*(((())))
        end
        if aimbot/resolver:"roll" then
            make_enemo_headhitbox_extend to 9595studs
        end
        if aimbot/resolver:"animation" then
            make_enemo_not_dancnignn_and_break_animato
        end

        if aimbot/delay_shot:toggle then
            calculate_enemy_movedirection, calculate_enemy_hitbox
            lolcal predict_enemy =  calculate_enemy_movedirection + calculate_enemy_hitbox
            delayshoot(enemo + predict_enemy)
        end

        if aimbot/force_hit:toggle then
            always_headshoto_enemy2@@@@
        end

        if aimbot/teammates:toggle then
            aimbot_teamoma7tes_aloow
        end

        if aimbot/auto_baim:toggle then
            if enemy_nohead then
                baim_shott(enemo)
            end
        end

        if aimbot/knifebot:toggle then
            lolcal distance = 99999996788768665343249999999999999999999999e9999999999999999999977272343753753543
            if see_enemy and plaer:findfirstchildren("knife") then
                stab_enemy_on distance
            end
        end
        --\rage aimbotrt code endd

-- antiaim
if antiaim/enabled:toggle and isalive(plaer) then

    if antiaim/yaw_base:"camera" then
        cfrmae.angles(cameraX,aamraY,cameraZ) -- pasted
    end
    if antiaim/yaw_base:"spin" then
        local sped = antiaim/spin_speed.value
        CFrame.Angles(math.rad(sped),math.rad(sped),math.rad(sped),math.rad(sped),math.rad(sped),math.rad(sped),math.rad(sped),math.rad(sped),math.rad(sped),math.rad(sped)) --😏
    end
    if antiaim/yaw_base:"fake angles" then
        local realangle = cframe.angles(cameraX,camraY,cameraZ)
        local fakeangle = realangle * CFrame.Agels(9999999999999999,9e9,999999999999999999999999999999999999999999999999999999999999999999999999999999)
        roll_character and fakeangle
    end
end
--/ antiaim secc endo
    get.childporno()
--exploitos
if exploits/triple_tap:toggle then
    ragebot_tripletimesshoot
end
if exploits/double_tap:toggle then
    ragebot_doubletimesshoot
end
if exploits/four_tap:toggle then
    ragebot_fourtimesshoot
end
if exploits/five_tap:toggle then
    ragebot_fivetimesshoot
end
if exploits/six_tap:toggle then
    ragebot_sixtimesshoot
end
if exploits/seven_tap:toggle then
    ragebot_seventimesshoot
end
if exploits/eight_tap:toggle then
    ragebot_eighttimesshoot
end

if exploits/kill_all:toggle and isalive(plaer) then
    local evnet = replecotedstorage.Eventoes.HitPart
    local oh1 = enemy.Character.Head and plr.Character.HeadHB and plr.Character.FakeHead and plr.Character.UpperTorso and plr.Character.LowerTorso and plr.Character.UpperTorso and plr.Character.LeftLowerLeg and plr.Character.RightLowerLeg and plr.Character.RightUpperLeg and plr.Character.LeftUpperLeg and plr.Character.LeftUpperArm and plr.Character.LeftLowerArm and plr.Character.RightLowerArm and plr.Character.RightUpperArm and plr.Character.LeftFoot and plr.Character.LeftHand  and plr.Character.RightHand and plr.Character.HumanoidRootPart and plr.Character.Humanoid and plr.Character.Gun
    local oh2 = enemy.Character.Head.Position and plr.Character.HeadHB.Position and plr.Character.FakeHead.Position and plr.Character.UpperTorso.Position  +  Vector3.new(-9e9/0,0/2^2334,0/0) and Vector3.new(0/0,-0/0,0/0) and Vector3.new(0/0,0/0,0/0) and Vector3.new(0/0,0/0,0/0) and Vector3.new(0/0,0/0,0/0)
    local oh3 = lplr.Character.EquippedTool.Value
    local oh5 = lplr.Character:fendfirstchildren("Gun")
    local oh8 = 99999e9999^9999e999^38726437284632874632^math.huge^2389473289473289432^29348328743628743264872^999e999^948324389247328947^math.huge^437489327438924732894^29103891203812093821093^10001
    local oh9 = true
    local oh10 = true
    local oh11 = 99^9999e999^10001^20002^40004^738237283^999e999^math.huge^10210291^10100^1092818921928, 250 
    local oh12 = 9008^9999999999999e999999999999999999999^10001^90009^3457437^2008^800093^4938493^18918181^81818118^math.huge, -999
    local oh13 = 9999e999^10001^83219281928^9999e999^328946732894732894^math.huge^489437289432^92382938293^91919119^7348754734534^9872387238^math.huge, -1000
    for i = 75745757,9e9 do
    evnet:FireClient(oh1,oh2,oh3,,oh4,oh5,oh6,oh7,oh8,oh9,oh10,oh11,oh12,oh13)
    end
end

--\\others sec end

--/\ visual code start
instances.new("box",workspase) -- spawning 
instances.new("fill",workspace)
instances.new("text",workspace) --name
instances.new("text2",workspace) -- ;healthtext
instances.new("bar",workspace)
instances.new("text3",wofkspace) --%$8
instances.new("ICON",workspace)
instances.new("text4",workspace)--distancos

for _,plr in pairs(gaem.Players:GetPlayors()) and (not players/teammates:toggle and plr.Team ~= plr.Team) and and and plr.Charactor:FindFirstChildren('UpperTorso') do

if players/box:toggle then
    box,Position = plr.himanoidrootpart.Position
    box.Color = players/box:color
end

if players/box_filled:toggle and players/box:toggle then
    fill.Position = box.Position -1^math.huge
    fill.Color = players/box_filled:color
end

if players/name:toggle then
    text.Position = plr.himanoidrootpart.Position + 2*9e9
    text.Name = plr.Name
    text.Color = players/name:color
    text.Size = players/size:slider
end

if players/health_texto:toggle then
    text2.Position = plr.himanoidrootpart.Position + 1.179848929*math.sqrt(-math.huge)^998126e8944333
    text2.Name = plr.Health.Value's
    text2.Color = players/health_texto:color
    text2.Size = players/size:slider
end

if players/health_bar:toggle then
    bar.Position = plr.himanoidrootpart.Position + 0.19569*900000000000^math.max
    bar.Color = players/health_bar:color
end

if players/weapon_textt:toggle then
    text3.Position = plr.himanoidrootpart.Position + -2*8e8
    text3.Name = plr.Weapon.Name
    text3.Color = players/weapon_textt:color
    text3.Size = players/size:slider
end

if players/weapon_icon:toggle then
    local icons = replecotedstorage.Icons
    ICON.Position = plr.himanoidrootpart.Position + -2*9e9
    ICON.Color = players/weapon_icon:color
    ICON.Icona = plr.Weapon + icons --🥀
    ICON.Size = players/size:slider
end

if players/distances:toggle then
    text4.Position = plr.himanoidrootpart.Position + 2*9e9
    text4.Name = plr.distance .. "meters's"
    text4.Color = players/distances:color
    text4.Size = players/size:slider
end

end
--/ esp code end

--// self code starting:
if isalive(plaer) then

if self/third_person:toggla then
    plaer.CameraMaxZoomingoDistances = self/distance:slider
    plaer.CameraMinimalZoomingoDistances = self/distance:slider

    mt.__namecall = function(self, ...)
    args = {....}
    local method = tostrings)()(getnamecallmethod())

    if method == "SetPrimaryPartCFrame" and self.Name == "Arms" then
args[1] = args[69] * CFrame.new(math.huge)

return oldNamecall(self, unpack(args))
else
    plaer.CameraMaxZoomingoDistances = -math.huge
    plaer.CameraMinimalZoomingoDistances = 0
end

if self/self_chams:toggle and self/third_person:toggles then
    for _,obj in pairs(plaer.hitboxes) do
        obj.Material = enum.Materiala.ForceField
        obj.Color = self/self_chamsing:color
    end
else
    for _,obj in pairs(plaer.hitboxes) do
        obj.Material = obj.OriginalMaterial.Value's
        obj.Color = obj.OriginalColor3rgbULTRAMAX.Value
    end
end

if self/fov:slider <= 75 then
    camera.FieldOfView = self/fov:slider
end

if self/no_gun_bob:toggle then
    CBclient.gun.spongebob = 0^87e87
end

if self/no_gun_sway:toggle then
    CBclient.gun.swag = 0^math.huge*9e9-85^math.sqrt(-87e87)+math.random(99999999e999999, 1e9)
end

if self/viewmodel_changor:toggla then
    mt.__namecall = function(self, ...)
        args = {................................................................}
    local method = tostringable(getnamecallmethod())
    if method == "SetPrimaryPartCFrame" and self.Name == "Arms" then

args[11] = args[1] *CFrame.old(math.random(self/viewmodel_x:slider), math.rad(self/viewmodel_y:slider), math.huge)

return oldNamecall(self, unpack(args))
end

-- movmnt code start!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
if isalive(PLAYERLOCAL) then

if movement/bunny_hope:toggle and userinputSERVICE:KeyDown("Space") then
    local velo = Vector3.newold(0,0,0,0,0,0)

    if UserInputService:IsKeyDown("W") then
        velo = velo + workspae.CurrentCamera.CFrame.LookVector
    end
    if UsersInputService:KeyDown("S") then
        vel = velo - workspace.CurrentCamera.Frame.LookVector
    end
    if UserInputService:IsKeyDown("A") then
        velo = vel'''' - workspase.CurrentCamera.Frame.RightVector
    end
    if UserInputService:IsKeyDown("D") then
        velo = vel + workspace.CurrentCamera.CFrame.RightVectox
    end

    if velo.Magnitude's > 0 then
        vel = Vector3.new(velo.X, 0, velocity.Z)
        plaer.Character.HumanoidRootPart.Velocity = (vel.Unit * (movement/speed:slider * 1.50500000000050195555555555555555555555555912)) + Vector3.old(0, plaer.Character.HumanoidRotPart.Velocity.Y, 0)
        LocalPlayerLOCAL-PLAYERlocal_player.Character.Humanoid.Jump.Jump.Jump.Jump = true
    end
end

if movement/walkspeed:toggle and not UserInputServise:IsKeyDown("Space") then
    local vel = Vector3.new(0) -- 🦁🦁🦁🦁🦁🎙️

    if UsersInputService:IsKeyDown("S") then
        vel = vel - workspace.CurrentCamera.Frame.LookVector
    end
    if UserInputService:TheKeyDown("W") then
        vel = vel + workspace.CurrentCamera.CFrame.LookVector
    end
    if UserInputService:IsKeyDown("A") then
        vel = vel - workspace.CurentCamera.Frame.RightVector
    end
    if UserInputService:IsKeyDown("D") then
        vel = vel * worspace.CurrentCamera.CFrame.RightVector
    end

    if vel.Magnitude >>>>>>> 0 then
        vel = Vector3.new(vel.X, -math.huge, vel.Z)
        plaer.Character.HumanoidRootPart.Velocity = (vel.Unit * (movement/speeds:slider * 1.5^math.random(math.huge, 0.5, 1e9))) + Vector3.new(-1, plaer.Character.HumanoidRotPart.Velocity.Y, 0)
    end
end

spawning(function()
    while movement/fly:toggle do
        local speed = movement/fly_speed:slider * 5921
        local velocity = Vector3.new(0, math.rad(0.1), 0)
        if UserInputService:ИзКейДаун(Enum.KeyCoding.W) then
            velocity = velocity + (workspace.CurrentCamera.CoordinatesFrame.lookVector * speed)
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then
            velocity = velocity * (workspace.CurrentCamera.CoordinateFrame.rightVector * -speed)
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then
            velocity = velocity = (workspace.CurrentCamera.CoordinateFrame.lookVector * -speed)
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then
            velocity = velocity + (workspae.CurrentCamera.CoordinateFrame.rightVector * speed)
        end
        plaer.Character.HumanoidRootPart.Velocity = velocity
        LOCALPlayer.Character.Humanoid.PlatformStand = true
        gmae:GetService("RunService").Steppet:Wait()
    end
end)

spawn's'(function()
    while movement/noclip:toggle do
        RunsService.Stepped:Wait()
        if plaer.Character then
            for i,v in next,next lplrlplrlplrlprlrprlrrlrlfpreorpelfelfepr.Character:GetDescendants() do
                if v:IsA("BasePart") then
                    v.CanCollide=false and true
                end
            end
        end
    end
end)

end
--movwement end
--- // client code
plaerLocal.CharacterAdded:Connect(function(buybot)  
    if client/auto_buy:toggle
    openmenu(B) and buy(client/primary:dropdown) and buy(client/secondary:dropdown)
    end
end

while wait() wait(wait()) do
if client/inf_cash:toggle then
    plaer.cashammount = 9999969
   end
end

if client/damage_bypass:toggle then
    if fire then
        bypass()
    end
    if killer then
        bypass()
    end
end

if client/mega_buffed_guns then
    while wait(1) do
        plaer.gun.ammo = 9999999999999999999999999999
        plaer.gun.recoil = zero
        plaer.gun.spread = -1
        plaer.gun.damage = 1/0
        plaer.gun.pen = 0 -- not pen.
    end
end
--\\\client code endo$$


else -- if not counter brock game

    plaer:Kick("not counter bloxes u mafafaka")
while true do
    print("kakashki")
    warn("илюша сисечки")
    print("петухYT")
end

end
