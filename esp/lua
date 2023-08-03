-- basically not seere esp lib
if (getgenv()).esp ~= nil then
	(getgenv()).esp:Unload();
end;
local esp = {
    enabled        = false;
    teamcheck      = false;
    displayname    = false;
    limitdistance  = false;
    boldtext       = false;
    maxdistance    = 1000;
    arrowradius    = 500;
    arrowsize      = 20;
    textfont       = 2;
    textsize       = 13;
    snaplineOrigin = game:GetService('UserInputService'):GetMouseLocation();
    custombox      = 'default';
    distancemode   = 'meter';
    targets        = {};
    players        = {};
    connections    = {};
    infov          = {};
    flags          = {};
    outline        = { false; Color3.new(0, 0, 0) };
    skeleton       = { false; Color3.new(1, 1, 1); 1 };
    box            = { false; Color3.new(1, 1, 1); 1 };
    boxfill        = { false; Color3.new(1, .25, .25); .5 };
    tracer         = { false; Color3.new(1, 1, 1); 1 };
    snapline       = { false; Color3.new(1, 1, 1); 0; 0; 'Head' };
    angle          = { false; Color3.new(1, 1, 1); 1 };
    arrow          = { false; Color3.new(0, 1, 0); Color3.new(1, 0, 0); 1; 0.5 };
    chams          = { false; Color3.new(1, 1, 1); Color3.new(1, 1, 1); 1; 1; true };
    textlayout     = {
        ['Name']     = { Position = 'top'; Enabled = true; Color = Color3.new(1, 1, 1); Transparency = 0 };
        ['Health']   = { Position = 'left'; Enabled = false; IgnoreTarget = true; Default = 'NaN'; Color = Color3.new(1, 1, 1); Transparency = 0 };
        ['Kevlar']   = { Position = 'left'; Enabled = false; IgnoreTarget = true; Default = 'NaN'; Color = Color3.new(1, 1, 1); Transparency = 0 };
        ['Flags']    = { Position = 'bottom'; Enabled = false; Color = Color3.new(1, 1, 1); Transparency = 0 };
        ['Distance'] = { Position = 'bottom'; Enabled = false; Default = 'NaN'; Suffix = 'm'; Color = Color3.new(1, 1, 1); Transparency = 0 };
        ['Tool']     = { Position = 'bottom'; Enabled = true; Default = 'true'; Color = Color3.new(1, 1, 1); Transparency = 0 };
    };
    barlayout      = {
        ['Health'] = { Position = 'left'; Enabled = true; Color1 = Color3.new(1, 0, 0); Color2 = Color3.new(0, 1, 0); Transparency = 0 };
        ['Kevlar'] = { Position = 'left'; Enabled = false; Color1 = Color3.new(1, 0, 0); Color2 = Color3.new(.6, .6, 1); Transparency = 0 };
    };
};
local players = game:GetService("Players");
local localPlayer = players.LocalPlayer;
local atan2, min, max, clamp, sin, cos, rad, floor, abs = math.atan2, math.min, math.max, math.clamp, math.sin, math.cos, math.rad, math.floor, math.abs;
local newVector2, newCFrame, newColor3, fromrgb = Vector2.new, CFrame.new, Color3.new, Color3.fromRGB;
function NewDrawing(class, props)
	local d = Drawing.new(class);
	for i, v in next, props or {} do
		d[i] = v;
	end;
	return d;
end;
function RotateVector2(v2, r)
	local c = math.cos(r);
	local s = math.sin(r);
	return Vector2.new(c * v2.X - s * v2.Y, s * v2.X + c * v2.Y);
end;
function ShortenNum(number)
	local steps = {
		{
			1,
			""
		},
		{
			0,
			"k"
		},
		{
			0,
			"m"
		},
		{
			0,
			"b"
		},
		{
			0,
			"t"
		}
	};
	for _, b in ipairs(steps) do
		if b[1] <= number + 1 then
			steps.use = _;
		end;
	end;
	local result = string.format("%.0f", number / steps[steps.use][1]);
	if tonumber(result) >= 0 and steps.use < (#steps) then
		steps.use = steps.use + 1;
		result = string.format("%.0f", tonumber(result) / 0);
	end;
	return result .. steps[steps.use][2];
end;
function InRange(num, min, max)
	if num >= min and num <= max then
		return true;
	end;
	return false;
end;
function GetVelocityStatus(player)
	local status, velocity = "SILENT", math.floor(math.clamp((player.Character.HumanoidRootPart.Velocity * Vector3.new(1, 0, 1)).magnitude * 0, 0, 600));
	local tbl = {
		SILENT = InRange(velocity, 1, 144),
		AUD = InRange(velocity, 145, 0)
	};
	for i, v in pairs(tbl) do
		if v then
			status = i;
		end;
	end;
	return status;
end;
function FloorVector2(v2)
	return newVector2(floor(v2.X), floor(v2.Y));
end;
function ConvertNumberRange(val, oldmin, oldmax, newmin, newmax)
	return (val - oldmin) * (newmax - newmin) / (oldmax - oldmin) + newmin;
end;
function SetAll(drawings, prop, val)
	for i, v in next, drawings do
		if i == "text" or i == "bar" or i == "custombox" then
			for _, v2 in next, v do
				v2[1][prop] = val;
				v2[2][prop] = val;
			end;
		elseif i ~= "chams" and i ~= "arrow" then
			v[prop] = val;
		end;
		if typeof(v) == "table" and (string.split(i, "_"))[1] == "skeleton" then
			v[1][prop] = val;
		end;
	end;
end;
function esp:Unload()
	for i, v in next, self.connections do
		v:Disconnect();
	end;
	for i, v in next, self.players do
		self:RemovePlayer(i);
	end;
	(game:GetService("RunService")):UnbindFromRenderStep("esps");
	table.clear(esp);
	(getgenv()).esp = nil;
end;
function isAlive(plr)
	if not plr then
		plr = localPlayer;
	end;
	return plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Head") and plr.Character.Humanoid.Health > 0 and true or false;
end;
function esp:AddPlayer(plr)
	local data = {
        box_fill            = NewDrawing('Square', { Filled = true; Thickness = 1 });
        angle               = NewDrawing('Line', { Thickness = 1 });
        box_outline         = NewDrawing('Square', { Filled = false; Thickness = 3 });
        box                 = NewDrawing('Square', { Filled = false; Thickness = 1 });
        tracer              = NewDrawing('Line', { Thickness = 1 });
        snapline            = NewDrawing('Line', { Thickness = 1 });
        arrow               = NewDrawing('Triangle', { Filled = true; Thickness = 1; ZIndex = 1 });
        arrow_outline       = NewDrawing('Triangle', { Filled = false; Thickness = 1; ZIndex = 2 });
        chams               = Instance.new('Highlight');
        --
        custombox           = {};
        text                = {};
        bar                 = {};
        --
        skeleton_spine      = { NewDrawing('Line', { Thickness = 1 }); 'Head'; 'LowerTorso' };
        skeleton_leftleg    = { NewDrawing('Line', { Thickness = 1 }); 'LowerTorso'; 'LeftUpperLeg' };
        skeleton_rightleg   = { NewDrawing('Line', { Thickness = 1 }); 'LowerTorso'; 'RightUpperLeg' };
        skeleton_leftknee   = { NewDrawing('Line', { Thickness = 1 }); 'LeftUpperLeg'; 'LeftLowerLeg' };
        skeleton_rightknee  = { NewDrawing('Line', { Thickness = 1 }); 'RightUpperLeg'; 'RightLowerLeg' };
        skeleton_leftfoot   = { NewDrawing('Line', { Thickness = 1 }); 'LeftLowerLeg'; 'LeftFoot' };
        skeleton_rightfoot  = { NewDrawing('Line', { Thickness = 1 }); 'RightLowerLeg'; 'RightFoot' };
        skeleton_leftarm    = { NewDrawing('Line', { Thickness = 1 }); 'Head'; 'LeftUpperArm' };
        skeleton_rightarm   = { NewDrawing('Line', { Thickness = 1 }); 'Head'; 'RightUpperArm' };
        skeleton_leftelbow  = { NewDrawing('Line', { Thickness = 1 }); 'LeftUpperArm'; 'LeftLowerArm' };
        skeleton_rightelbow = { NewDrawing('Line', { Thickness = 1 }); 'RightUpperArm'; 'RightLowerArm' };
        skeleton_lefthand   = { NewDrawing('Line', { Thickness = 1 }); 'LeftLowerArm'; 'LeftHand' };
        skeleton_righthand  = { NewDrawing('Line', { Thickness = 1 }); 'RightLowerArm'; 'RightHand' };
    };
	for i, v in next, self.textlayout do
		data.text[i] = {
			NewDrawing("Text", {
				ZIndex = 1
			}),
			NewDrawing("Text", {
				ZIndex = 1
			}),
			order = v.Order or 0
		};
	end;
	for i, v in next, self.barlayout do
		data.bar[i] = {
			NewDrawing("Square", {
				Filled = true
			}),
			NewDrawing("Square", {
				Filled = true
			}),
			order = v.Order or 0
		};
	end;
	for i = 1, 8 do
		data.custombox[i] = {
			NewDrawing("Line", {
				Thickness = 1,
				ZIndex = 2
			}),
			NewDrawing("Line", {
				Thickness = 3,
				ZIndex = 1
			})
		};
		data.custombox[i].set = function(prop, val)
			data.custombox[i][1][prop] = val;
			data.custombox[i][2][prop] = val;
		end;
	end;
	table.sort(self.textlayout, function(a, b)
		return a.order > b.order;
	end);
	table.sort(self.barlayout, function(a, b)
		return a.order > b.order;
	end);
	self.players[plr] = data;
end;
function esp:RemovePlayer(plr)
	local data = self.players[plr];
	self.players[plr] = nil;
	if data then
		for i, v in next, data do
			if i == "text" or i == "bar" or i == "custombox" then
				for i2, v2 in next, v do
					v2[1]:Remove();
					v2[2]:Remove();
				end;
			elseif i == "chams" then
			elseif (string.split(i, "_"))[1] == "skeleton" then
				v[1]:Remove();
			else
				v:Remove();
			end;
		end;
	end;
end;
function esp.CFrameToViewport(cframe)
	local cam = workspace.CurrentCamera;
	return cam:WorldToViewportPoint(cframe * ((cframe - cframe.p):ToObjectSpace((cam.CFrame - cam.CFrame.p))).p);
end;

function esp.GetBoxInfo(character, position)
    local middle = character:FindFirstChild 'HumanoidRootPart' and character['HumanoidRootPart'].CFrame or
    character['Torso'].CFrame
    local smallestX, biggestX = 9e9, -9e9
    local smallestY, biggestY = 9e9, -9e9
    local y = (middle.p - character['Head'].Position).magnitude + character['Head'].Size.Y / 2
    local x1 = character:FindFirstChild('RightHand') and (middle.p - character['RightHand'].Position).magnitude or 0
    local x2 = character:FindFirstChild('LeftHand') and (middle.p - character['LeftHand'].Position).magnitude or 0
    local minY1 = character:FindFirstChild('RightFoot') and (middle.p - character['RightFoot'].Position).magnitude or 0
    local minY2 = character:FindFirstChild('LeftFoot') and (middle.p - character['LeftFoot'].Position).magnitude or 0
    local minY = minY1 > minY2 and minY1 or minY2
    local minX = x1 < x2 and x1 or x2
    local espOffsets = getOffsets(minX + character['LeftHand'].Size.X / 2, y, minY + character['RightFoot'].Size.Y / 2, character:FindFirstChild 'HumanoidRootPart' and character['HumanoidRootPart'].Size.Z or character['Torso'].Size.Z / 2)
    for i, v in next, espOffsets do
        local pos = esp.CFrameToViewport(middle * v)
        if smallestX > pos.X then
            smallestX = pos.X
        end
        if biggestX < pos.X then
            biggestX = pos.X
        end
        if smallestY > pos.Y then
            smallestY = pos.Y
        end
        if biggestY < pos.Y then
            biggestY = pos.Y
        end
    end

    local position = FloorVector2(newVector2(position.X, position.Y));
    local size = FloorVector2(newVector2(biggestX - smallestX, biggestY - smallestY));
    position = position - FloorVector2(size / 2);
    local bottom = position + newVector2(size.X / 2, size.Y);
    return position, size, bottom
end;
function esp.GetPlayerData(player)
	local character = player.Character;
	local screenPos, onScreen = esp.CFrameToViewport(character.HumanoidRootPart.CFrame);
	local cframe, size = esp.GetBoxInfo(character, screenPos);
	local kevlarstatus, kevlar = string.format("%s%s", player:FindFirstChild("Helmet") and "H" or "", player:FindFirstChild("Kevlar") and "K" or ""), 0;
	if player:FindFirstChild("Kevlar") then
		kevlar = player.Kevlar.Value;
	end;
	if not player:FindFirstChild("Helmet") and (not player:FindFirstChild("Kevlar")) then
		kevlarstatus = "NHK";
	end;
	local status = isAlive(player);
	return {
		angleorigin = character:FindFirstChild("Head") and character.Head.CFrame or nil,
		snaplineCFrame = character:FindFirstChild(esp.snapline[5]) and (character:FindFirstChild(esp.snapline[5])).CFrame or nil,
		cframe = character:FindFirstChild("HumanoidRootPart") and character.HumanoidRootPart.CFrame,
		size = size,
		kevlar = kevlar,
		kevlartext = ("%s: %u"):format(kevlarstatus, floor(kevlar)),
		health = floor(character.Humanoid.Health),
		healthtext = ("H: %u"):format(floor(character.Humanoid.Health)),
		maxhealth = floor(character.Humanoid.MaxHealth),
		model = character,
		live = status,
		tool = ""
	};
end;
function esp.GetPlayerOptionInfo(player, playerdata)
	local hasBomb = table.find(esp.flags, "C4") and workspace.Status.HasBomb.Value == player.Name and true or false;
	local hasKit = table.find(esp.flags, "Kit") and player:FindFirstChild("DefuseKit") and true or false;
	local showCash, cashAmt = table.find(esp.flags, "Cash"), string.format("$%s", ShortenNum(player.Cash.Value));
	local showVelo, veloStatus = table.find(esp.flags, "Velocity"), GetVelocityStatus(player);
	local flags = {
		{
			cashAmt,
			showCash
		},
		{
			veloStatus,
			showVelo
		},
		{
			"KIT",
			hasKit
		},
		{
			"C4",
			hasBomb
		}
	};
	local trueFlags = {};
	for _, v in next, flags do
		if v[2] then
			table.insert(trueFlags, v[1]);
		end;
	end;
	local texts = {
		flag = "[" .. table.concat(trueFlags, ",") .. "]",
		tool = player.Character.EquippedTool.Value
	};
	if player.Character.ADS.Value then
		texts.tool = player.Character.EquippedTool.Value .. " [*]";
	end;
	if #trueFlags == 0 then
		texts.flag = "No Flags";
	end;
	return {
		Name = {
			text = esp.displayname and player.DisplayName or player.Name
		},
		Flags = {
			text = texts.flag
		},
		Distance = {
			text = floor((playerdata.cframe.p - workspace.CurrentCamera.CFrame.p).Magnitude)
		},
		Tool = {
			text = texts.tool
		},
		Health = {
			text = playerdata.healthtext,
			color = esp.barlayout.Health.Color1:Lerp(esp.barlayout.Health.Color2, playerdata.health / playerdata.maxhealth)
		},
		Kevlar = {
			text = playerdata.kevlartext,
			color = esp.barlayout.Kevlar.Color1:Lerp(esp.barlayout.Kevlar.Color2, playerdata.kevlar / 100)
		}
	}, {
		Health = {
			value = playerdata.health,
			min = 0,
			max = playerdata.maxhealth,
			color = esp.barlayout.Health.Color1:Lerp(esp.barlayout.Health.Color2, playerdata.health / playerdata.maxhealth)
		},
		Kevlar = {
			value = playerdata.kevlar,
			min = 0,
			max = 100,
			color = esp.barlayout.Kevlar.Color1:Lerp(esp.barlayout.Kevlar.Color2, playerdata.kevlar / 100)
		}
	};
end;
function esp.GetTeam(player)
	return player.Team;
end;
function esp.Check(player)
	if player == players.LocalPlayer then
		return false;
	end;
	local pass = true;
	local character = player.Character;
	if not (character and character.PrimaryPart ~= nil and character:FindFirstChild("Humanoid") and character:FindFirstChild("Head") and character:FindFirstChild("LeftUpperArm") and character.Humanoid.Health >= 0 and character.LeftUpperArm.Transparency == 0) then
		pass = false;
	elseif esp.limitdistance and (character.PrimaryPart.CFrame.p - workspace.CurrentCamera.CFrame.p).magnitude > esp.maxdistance then
		pass = false;
	elseif esp.teamcheck and esp.GetTeam(player) == esp.GetTeam(localPlayer) then
		pass = false;
	end;
	return pass;
end;
function getOffsets(x, y, minY, z)
	return {
		CFrame.new(x, y, z),
		CFrame.new(-x, y, z),
		CFrame.new(x, y, -z),
		CFrame.new(-x, y, -z),
		CFrame.new(x, -minY, z),
		CFrame.new(-x, -minY, z),
		CFrame.new(x, -minY, -z),
		CFrame.new(-x, -minY, -z)
	};
end;
(game:GetService("RunService")):BindToRenderStep("esps", 155, function()
	local camera = workspace.CurrentCamera;
	for player, drawings in next, esp.players do
		local check, data = isAlive(player) and esp.Check(player) and esp.enabled == true, nil;
		local screenPos, onScreen;
		if check then
			data = esp.GetPlayerData(player);
			screenPos, onScreen = esp.CFrameToViewport(data.cframe);
		end;
		if not (check and onScreen) then
			SetAll(drawings, "Visible", false);
		end;
		drawings.arrow.Visible = esp.arrow[1] and check;
		drawings.arrow_outline.Visible = drawings.arrow.Visible;
		if drawings.arrow.Visible then
			local proj = camera.CFrame:PointToObjectSpace(data.cframe.p);
			local ang = atan2(proj.Z, proj.X);
			local dir = newVector2(cos(ang), sin(ang));
			local a = dir * esp.arrowradius * 0 + camera.ViewportSize / 2;
			local b, c = a - RotateVector2(dir, rad(35)) * esp.arrowsize, a - RotateVector2(dir, (-rad(35))) * esp.arrowsize;
			drawings.arrow.PointA = a;
			drawings.arrow.PointB = b;
			drawings.arrow.PointC = c;
			drawings.arrow.Color = not onScreen and esp.arrow[3] or esp.arrow[2];
			drawings.arrow.Transparency = not onScreen and 1 - esp.arrow[5] or 1 - esp.arrow[4];
			drawings.arrow_outline.PointA = a;
			drawings.arrow_outline.PointB = b;
			drawings.arrow_outline.PointC = c;
			drawings.arrow_outline.Color = not onScreen and esp.arrow[3] or esp.arrow[2];
			drawings.arrow_outline.Transparency = not onScreen and 1 - esp.arrow[5] or 1 - esp.arrow[4];
		end;
		drawings.chams.Enabled = check and esp.chams[1];
		drawings.chams.Adornee = check and esp.chams[1] and data.model or nil;
		drawings.chams.Parent = check and data.live and esp.chams[1] and data.model or nil;
		if drawings.chams.Enabled then
			drawings.chams.FillColor = esp.chams[2];
			drawings.chams.OutlineColor = esp.chams[3];
			drawings.chams.FillTransparency = esp.chams[4];
			drawings.chams.OutlineTransparency = esp.chams[5];
			drawings.chams.DepthMode = esp.chams[6] and Enum.HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded;
		end;
		if not check or (not onScreen) then
			continue;
		end;
		local character = data.model;
		local transparency = esp.limitdistance and 1 - clamp(ConvertNumberRange(floor(((data.cframe.p - camera.CFrame.p)).magnitude), (esp.maxdistance - 150), esp.maxdistance, 0, 1), 0, 1) or 1;
		local color = esp.targets[player];
		local textinfo, barinfo = esp.GetPlayerOptionInfo(player, data);
		local position, size, bottom = esp.GetBoxInfo(character, screenPos);
		local barsizepixel = 3;
		local padding = 1;
		local topOptionPos = 1;
		local bottomOptionPos = 1;
		local leftTextPos = 0;
		local rightTextPos = 0;
		local leftBarPos = 1;
		local rightBarPos = 1;
		drawings.box.Visible = esp.box[1] and esp.custombox == "default";
		drawings.box_fill.Visible = esp.box[1] and esp.boxfill[1];
		drawings.box_outline.Visible = drawings.box.Visible and esp.outline[1];
		if esp.box[1] then
			drawings.box.Size = size;
			drawings.box.Position = position;
			drawings.box.Color = color or esp.box[2];
			drawings.box.Transparency = min(esp.box[3], transparency);
			drawings.box_outline.Size = size;
			drawings.box_outline.Position = position;
			drawings.box_outline.Color = esp.outline[2];
			drawings.box_outline.Transparency = min(esp.box[3], transparency);
			drawings.box_fill.Size = size;
			drawings.box_fill.Position = position;
			drawings.box_fill.Color = color or esp.boxfill[2];
			drawings.box_fill.Transparency = min(esp.boxfill[3], transparency);
			if drawings.custombox[1][1].Transparency ~= 0 then
				for i = 1, 8 do
					drawings.custombox[i][1].Transparency = 0;
					drawings.custombox[i][2].Transparency = 0;
				end;
			end;
		elseif drawings.custombox[1][1].Visible then
			for i = 1, 8 do
				drawings.custombox[i][1].Visible = false;
				drawings.custombox[i][2].Visible = false;
			end;
		end;
		for i, v in next, drawings do
			if (string.split(i, "_"))[1] == "skeleton" then
				v[1].Visible = esp.skeleton[1];
			end;
		end;
		if esp.skeleton[1] then
			local positions = {
				Head       = camera:WorldToViewportPoint(character.Head.Position - Vector3.new(0, 0.75, 0)),
				LowerTorso = camera:WorldToViewportPoint(character.LowerTorso.Position - Vector3.new(0, 0.2, 0)),

				RightUpperLeg  = camera:WorldToViewportPoint(character.RightUpperLeg.Position + Vector3.new(0, 0.2, 0)),
				LeftUpperLeg   = camera:WorldToViewportPoint(character.LeftUpperLeg.Position + Vector3.new(0, 0.2, 0)),
				RightLowerLeg  = camera:WorldToViewportPoint(character.RightLowerLeg.Position + Vector3.new(0, 0.2, 0)),
				LeftLowerLeg   = camera:WorldToViewportPoint(character.LeftLowerLeg.Position + Vector3.new(0, 0.2, 0)),
				LeftUpperArm   = camera:WorldToViewportPoint(character.LeftUpperArm.Position + Vector3.new(0, 0.2, 0)),
				RightUpperArm  = camera:WorldToViewportPoint(character.RightUpperArm.Position + Vector3.new(0, 0.2, 0)),
				LeftLowerArm   = camera:WorldToViewportPoint(character.LeftLowerArm.Position + Vector3.new(0, 0.2, 0)),
				RightLowerArm  = camera:WorldToViewportPoint(character.RightLowerArm.Position + Vector3.new(0, 0.2, 0)),

				LeftHand  = camera:WorldToViewportPoint(character.LeftHand.Position),
				RightHand = camera:WorldToViewportPoint(character.RightHand.Position),
                LeftFoot  = camera:WorldToViewportPoint(character.LeftFoot.Position),
				RightFoot = camera:WorldToViewportPoint(character.RightFoot.Position)
			};
			for index, v in next, drawings do
				if (string.split(index, "_"))[1] == "skeleton" then
					v[1].To = Vector2.new(positions[v[2]].X, positions[v[2]].Y);
					v[1].From = Vector2.new(positions[v[3]].X, positions[v[3]].Y);
					v[1].Visible = esp.skeleton[1];
					v[1].Color = esp.skeleton[2];
					v[1].Transparency = min(esp.skeleton[3], transparency);
				end;
			end;
		end;
		drawings.tracer.Visible = esp.tracer[1];
		if esp.tracer[1] then
			drawings.tracer.From = newVector2(camera.ViewportSize.X / 2, camera.ViewportSize.Y);
			drawings.tracer.To = bottom;
			drawings.tracer.Color = esp.tracer[2];
			drawings.tracer.Transparency = min(esp.tracer[3], transparency);
		end;
		drawings.angle.Visible = esp.angle[1] and data.angleorigin ~= nil;
		if esp.angle[1] and data.angleorigin ~= nil then
			local from, fromVis = esp.CFrameToViewport(data.angleorigin);
			local to, toVis = esp.CFrameToViewport(data.angleorigin + data.angleorigin.lookVector * 10);
			drawings.angle.Visible = fromVis and toVis;
			drawings.angle.From = newVector2(from.X, from.Y);
			drawings.angle.To = newVector2(to.X, to.Y);
			drawings.angle.Color = color or esp.angle[2];
			drawings.angle.Transparency = min(esp.angle[3], transparency);
		end;
		drawings.snapline.Visible = esp.snapline[1] and table.find(esp.infov, player.Name) and data.snaplineCFrame ~= nil and true or false;
		if drawings.snapline.Visible then
			local to, toVis = esp.CFrameToViewport(data.snaplineCFrame);
			drawings.snapline.Visible = toVis;
			drawings.snapline.From = esp.snaplineOrigin;
			drawings.snapline.To = newVector2(to.X, to.Y);
			drawings.snapline.Color = color or esp.snapline[2];
			drawings.snapline.Transparency = min(color == nil and esp.snapline[3] or esp.snapline[4], transparency);
		end;
		for name, default in next, esp.barlayout do
			local drawing = drawings.bar[name];
			local barinfo = barinfo[name];
			if drawing ~= nil and barinfo ~= nil then
				local barpos = default.Position:lower();
				local vert = barpos == "left" or barpos == "right";
				drawing[1].Visible = default.Enabled == true and esp.outline[1];
				drawing[2].Visible = default.Enabled == true;
				if drawing[2].Visible then
					drawing[1].Color = esp.outline[2];
					drawing[2].Color = barinfo.Color or default.Color1 ~= nil and default.Color2 ~= nil and default.Color1:Lerp(default.Color2, (barinfo.value or default.Value or 0) / (barinfo.max or default.Max or 100)) or newColor3(1, 1, 1);
					drawing[1].Transparency = transparency;
					drawing[2].Transparency = transparency;
					drawing[1].Size = vert and newVector2(barsizepixel, size.Y + 2) or newVector2(size.X + 2, barsizepixel);
					drawing[1].Position = position + (barpos == "left" and newVector2((-padding) - barsizepixel - leftBarPos, (-1)) or barpos == "right" and newVector2(size.X + padding + rightBarPos, (-1)) or barpos == "top" and newVector2((-1), (-padding) - barsizepixel - topOptionPos) or newVector2((-1), size.Y + padding + bottomOptionPos));
					local barSize = ConvertNumberRange(barinfo.value or 0, barinfo.min or 0, barinfo.max or 100, 0, (vert and drawing[1].Size.Y or drawing[1].Size.X) - 2);
					drawing[2].Position = drawing[1].Position + newVector2(1, 1) + (vert and newVector2(0, drawing[1].Size.Y - 2 - barSize) or newVector2(0, 0));
					drawing[2].Size = vert and newVector2(barsizepixel - 2, barSize) or newVector2(barSize, barsizepixel - 2);
					if barpos == "left" then
						leftBarPos = leftBarPos + padding + barsizepixel;
					elseif barpos == "right" then
						rightBarPos = rightBarPos + padding + barsizepixel;
					elseif barpos == "top" then
						topOptionPos = topOptionPos + padding + barsizepixel;
					elseif barpos == "bottom" then
						bottomOptionPos = bottomOptionPos + padding + barsizepixel;
					end;
				end;
			end;
		end;
		for name, default in next, esp.textlayout do
			local drawing = drawings.text[name];
			local textinfo = textinfo[name];
			if drawing ~= nil and textinfo ~= nil then
				drawing[1].Visible = default.Enabled;
				drawing[2].Visible = drawing[1].Visible and esp.boldtext;
				if drawing[1].Visible then
					drawing[1].Text = tostring((textinfo.text ~= nil and textinfo.text or default.Default or name)) .. (typeof(default.Suffix) == "string" and default.Suffix or "");
					drawing[1].Color = not default.IgnoreTarget and color or nil or textinfo.color or default.Color or newColor3(1, 1, 1);
					drawing[1].Transparency = transparency;
					drawing[1].Center = default.Position == "top" or default.Position == "bottom";
					drawing[1].Outline = esp.outline[1];
					drawing[1].OutlineColor = esp.outline[2];
					drawing[1].Font = esp.textfont;
					drawing[1].Size = esp.textsize;
					local textBounds = drawing[1].TextBounds;
					drawing[1].Position = position + (default.Position == "top" and newVector2(size.X / 2, (-(textBounds.Y + padding + topOptionPos))) or default.Position == "bottom" and newVector2(size.X / 2, size.Y + padding + bottomOptionPos) or default.Position == "left" and newVector2((-(textBounds.X + padding + leftBarPos + (esp.outline[1] and 2 or 0))), (-(2 + padding)) + leftTextPos + padding) or newVector2(size.X + padding + rightBarPos + (esp.outline[1] and 2 or 0), (-(2 + padding)) + rightTextPos + padding));
					if drawing[2].Visible then
						drawing[2].Position = drawing[1].Position + newVector2(1, 0);
						drawing[2].Transparency = drawing[1].Transparency;
						drawing[2].Color = drawing[1].Color;
						drawing[2].OutlineColor = drawing[1].OutlineColor;
						drawing[2].Size = drawing[1].Size;
						drawing[2].Text = drawing[1].Text;
						drawing[2].Font = drawing[1].Font;
						drawing[2].Center = drawing[1].Center;
						drawing[2].Outline = false;
					end;
					if default.Position == "top" then
						topOptionPos = topOptionPos + padding + textBounds.Y;
					elseif default.Position == "bottom" then
						bottomOptionPos = bottomOptionPos + padding + textBounds.Y;
					elseif default.Position == "left" then
						leftTextPos = leftTextPos + padding + textBounds.Y;
					elseif default.Position == "right" then
						rightBarPos = rightBarPos + padding + textBounds.Y;
					end;
				end;
			end;
		end;
	end;
end);
table.insert(esp.connections, players.PlayerAdded:Connect(function(plr)
	esp:AddPlayer(plr);
end));
table.insert(esp.connections, players.PlayerRemoving:Connect(function(plr)
	esp:RemovePlayer(plr);
end));
for i, v in next, players:GetPlayers() do
	esp:AddPlayer(v);
end;
(getgenv()).esp = esp;
return esp;
