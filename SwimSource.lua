local _ = game:GetService("Players");
local l_StarterPlayer_0 = game:GetService("StarterPlayer");
local l_RunService_0 = game:GetService("RunService");
local l_ContextActionService_0 = game:GetService("ContextActionService");
local l_UserInputService_0 = game:GetService("UserInputService");
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
local l_TweenService_0 = game:GetService("TweenService");
local l_Workspace_0 = game:GetService("Workspace");
local l_Lighting_0 = game:GetService("Lighting");
local l_Debris_0 = game:GetService("Debris");
local l_ClientData_0 = require(l_ReplicatedStorage_0.modules:WaitForChild("player"):WaitForChild("ClientData"));
local v11 = require(l_ReplicatedStorage_0.game.WalkSpeedCalculator);
local v12 = require(l_ReplicatedStorage_0.modules.ui.GeneralUILibrary);
local v13 = require(l_ReplicatedStorage_0.modules.misc.ColorPalette);
local v14 = require(l_ReplicatedStorage_0.game.Items);
local _ = require(l_ReplicatedStorage_0.modules.game.KingdomsUtil);
local _ = l_StarterPlayer_0.CharacterWalkSpeed;
local l_top_0 = l_ReplicatedStorage_0:WaitForChild("Water"):WaitForChild("top");
local v18 = l_top_0.Position.Y + l_top_0.Size.Y / 2;
local v19 = NumberRange.new(1, 4);
local _ = l_ReplicatedStorage_0:WaitForChild("remoteInterface"):WaitForChild("character"):WaitForChild("UpdateAir");
local l_LocalPlayer_0 = game:GetService("Players").LocalPlayer;
local l_CurrentCamera_0 = l_Workspace_0.CurrentCamera;
local l_UnderwaterUI_0 = l_LocalPlayer_0:WaitForChild("PlayerGui"):WaitForChild("UnderwaterUI");
local l_ControlModule_0 = require(l_LocalPlayer_0:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule"):WaitForChild("ControlModule"));
local l_Tools_0 = l_ReplicatedStorage_0.remoteInterface.Tools;
local v26 = nil;
local v27 = nil;
local v28 = nil;
local l_waterCollider_0 = l_Workspace_0:WaitForChild("waterCollider");
local v30 = nil;
local v31 = nil;
local v32 = nil;
local v33 = nil;
local v34 = nil;
local v35 = nil;
local v36 = nil;
local v37 = false;
local v38 = {
    SurfaceIdle = 17747325013, 
    SurfaceMove = 17747443928, 
    Rise = 17747781961, 
    Sink = 17747719480, 
    BelowMove = 507784897, 
    GroundMove = 17748002020
};
local v39 = "None";
local v40 = {};
local v41 = Vector3.new(0, 0, 0, 0);
local v42 = 0;
local v43 = "None";
local v44 = {
    State = false, 
    Timer = 0, 
    Max = 1.1
};
local v45 = {
    Current = 0, 
    LowerAmount = 0, 
    LowerIncRate = 0.0025, 
    LowerMax = 0.25, 
    JumpRiseAmount = 100
};
local v46 = 0;
local v47 = 0;
local v48 = os.clock();
local v49 = 0;
local v50 = nil;
local v51 = nil;
local v52 = nil;
local v53 = {
    State = false, 
    Close = false, 
    Timer = 0, 
    Rate = 0.1
};
local v54 = 0;
local v55 = 0;
local v56 = RaycastParams.new();
v56.FilterDescendantsInstances = {
    v31, 
    l_Workspace_0.Characters, 
    l_Workspace_0.AI_Client, 
    l_Workspace_0.AI_Server, 
    l_waterCollider_0
};
v56.FilterType = Enum.RaycastFilterType.Exclude;
local v57 = {
    Set = false, 
    Changed = false
};
local v58 = nil;
local v59 = nil;
local v60 = nil;
local v61 = {};
local v62 = nil;
local v63 = nil;
local v64 = nil;
local v65 = nil;
local v66 = false;
local v67 = 0.05;
local v68 = 0.4;
local v69 = false;
local v70 = false;
local v71 = false;
local v72 = Random.new();
UpdateJumpCosts = function()
    if l_ClientData_0.getRebirthPerks().Athletic > 0 then
        v67 = 0.025;
        v68 = 0.2;
    else
        v67 = 0.05;
        v68 = 0.4;
    end;
    if l_LocalPlayer_0:GetAttribute("KingdomRole") == "Soldier" then
        v67 = v67 - v67 * 0.1;
        v68 = v68 - v68 * 0.1;
    end;
end;
CalcSpeeds = function()
    v46 = v11.GetWalkSpeed();
    v47 = v11.GetSwimSpeed();
end;
CheckGrounded = function(v73)
    local v74 = l_Workspace_0:Raycast(v73, Vector3.new(0, -500, 0, 0), v56);
    if not v74 then
        return;
    elseif not v74.Instance then
        return;
    else
        local l_Magnitude_0 = (Vector3.new(0, v73.Y, 0) - Vector3.new(0, v74.Position.Y, 0)).Magnitude;
        v55 = v74.Position.Y;
        local v76 = false;
        local v77 = false;
        if l_Magnitude_0 <= 3.75 then
            v76 = true;
        end;
        if l_Magnitude_0 <= 5 then
            v77 = true;
        end;
        return v76, v77;
    end;
end;
PlaySingleAnimation = function(v78, v79)
    if not v40[v78] then
        return;
    else
        v40[v78]:Play();
        v40[v78]:AdjustSpeed(v79 or 1);
        return;
    end;
end;
PlayLoopAnimation = function(v80, v81, v82)
    if not v40[v80] then
        return;
    elseif v39 == v80 then
        return;
    else
        if v40[v39] then
            v40[v39]:Stop(v82 or 0.15);
        end;
        v39 = v80;
        v40[v80]:Play(v82 or 0.15);
        v40[v80]:AdjustSpeed(v81 or 1);
        return;
    end;
end;
StopAllAnimations = function(v83)
    for _, v85 in v40 do
        if v85 then
            v85:Stop(v83 or 0.15);
        end;
    end;
    v39 = "None";
end;
GetSwimState = function()
    local v86 = "None";
    if not v32 or not v33 then
        return v86;
    elseif v71 then
        return v86;
    else
        if v33.Position.Y >= v18 - v19.Max and v33.Position.Y <= v18 - v19.Min then
            v86 = "Surface";
        elseif v33.Position.Y < v18 - v19.Max then
            v86 = (not not v53.State or v53.Close) and "Ground" or "Below";
        end;
        if v86 == "Surface" then
            if math.abs(v41.Magnitude) <= 0 then
                EnableDiveButton();
                return v86;
            else
                FadeDiveButton();
                return v86;
            end;
        else
            DisableDiveButton();
            return v86;
        end;
    end;
end;
ChangeSwimState = function(v87)
    if not v32 then
        return;
    elseif not v33 then
        return;
    elseif v37 then
        return;
    elseif v43 == v87 then
        return;
    else
        v43 = v87;
        if v87 == "None" then
            v44.Timer = 0;
            v44.State = false;
            v45.Current = 0;
            v50.Enabled = false;
            v51.Enabled = false;
            v52.Enabled = false;
            l_LocalPlayer_0:SetAttribute("inWater", false);
            v31:SetAttribute("inWater", false);
            l_LocalPlayer_0:SetAttribute("IsUnderwater", false);
            StopAllAnimations();
            v32.WalkSpeed = v46;
            v32.AutoRotate = true;
            return;
        else
            v50.Enabled = true;
            l_LocalPlayer_0:SetAttribute("inWater", true);
            v31:SetAttribute("inWater", true);
            if v43 == "Surface" then
                if v59 and math.abs(v33.AssemblyLinearVelocity.Y) > 10 then
                    v59.SplashWaves:Emit(10);
                    v59.SplashBubbles:Emit(12);
                    v64.PlaybackSpeed = v72:NextNumber(1, 1.05);
                    v64:Play();
                end;
                l_LocalPlayer_0:SetAttribute("IsUnderwater", false);
                v32.AutoRotate = true;
                return;
            else
                if v87 == "Below" then
                    if v69 then
                        v32.AutoRotate = false;
                    else
                        v32.AutoRotate = true;
                    end;
                else
                    v32.AutoRotate = true;
                end;
                l_LocalPlayer_0:SetAttribute("IsUnderwater", true);
                return;
            end;
        end;
    end;
end;
UpdateVisuals = function()
    if v43 ~= "None" and v30.Value < v30:GetAttribute("MaxAir") and not v71 then
        if l_Lighting_0:GetAttribute("inMenu") then
            l_UnderwaterUI_0.Air:SetAttribute("Hidden", true);
        else
            l_UnderwaterUI_0.Air:SetAttribute("Hidden", false);
        end;
    elseif not (v43 ~= "None") or v71 then
        l_UnderwaterUI_0.Air:SetAttribute("Hidden", true);
    end;
    if v59 then
        if v43 == "Surface" then
            if v33 then
                v59.CFrame = CFrame.new((Vector3.new(v33.Position.X, v18, v33.Position.Z)));
            end;
            if math.abs(v41.Magnitude) > 0 then
                v59.PPoint.Wake.Rate = 7;
            else
                v59.PPoint.Wake.Rate = 1;
            end;
        else
            v59.PPoint.Wake.Rate = 0;
        end;
    end;
    if v60 then
        if v43 ~= "Below" and v43 ~= "Ground" then
            v60.Rate = 0;
            return;
        elseif math.abs(v41.Magnitude) > 0 then
            v60.Rate = 7;
            return;
        else
            v60.Rate = 2;
        end;
    end;
end;
ToggleLimbBubbles = function(v88)
    for _, v90 in v61 do
        if v90 then
            v90.Enabled = v88;
        end;
    end;
end;
getgenv().ActivateDive = function(_, v92, _)
    if v92 ~= Enum.UserInputState.Begin then
        return;
    elseif v43 ~= "Surface" then
        return;
    else
        v51.Enabled = false;
        v44.State = true;
        l_TweenService_0:Create(l_UnderwaterUI_0.DiveButton.Frame.Icon, TweenInfo.new(0.01), {
            Size = UDim2.fromScale(0.75, 0.75)
        }):Play();
        task.delay(0.01, function()
            l_TweenService_0:Create(l_UnderwaterUI_0.DiveButton.Frame.Icon, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, true), {
                Size = UDim2.fromScale(0.375, 0.375)
            }):Play();
        end);
        return;
    end;
end;
EnableDiveButton = function()
    if l_UnderwaterUI_0.DiveButton:GetAttribute("Hidden") == 0 then
        return;
    else
        l_UnderwaterUI_0.DiveButton:SetAttribute("Hidden", 0);
        l_ContextActionService_0:BindAction("UseDive", ActivateDive, false, Enum.KeyCode.F, Enum.KeyCode.F, Enum.KeyCode.ButtonX);
        return;
    end;
end;
FadeDiveButton = function()
    if l_UnderwaterUI_0.DiveButton:GetAttribute("Hidden") == 0.75 then
        return;
    else
        l_UnderwaterUI_0.DiveButton:SetAttribute("Hidden", 0.75);
        l_ContextActionService_0:UnbindAction("UseDive");
        return;
    end;
end;
DisableDiveButton = function()
    if l_UnderwaterUI_0.DiveButton:GetAttribute("Hidden") == 1 then
        return;
    else
        l_UnderwaterUI_0.DiveButton:SetAttribute("Hidden", 1);
        l_ContextActionService_0:UnbindAction("UseDive");
        return;
    end;
end;
CancelGyroThread = function()
    if v58 then
        task.cancel(v58);
        v58 = nil;
    end;
end;
SwimUp = function()
    if not (math.abs(v41.Magnitude) > 0) or v43 == "Ground" then
        v42 = 0.5;
        v45.LowerAmount = math.clamp(v45.LowerAmount - v45.JumpRiseAmount / 30, 0, v45.LowerMax);
        v45.Current = math.clamp(v45.Current - (v45.JumpRiseAmount - v45.LowerAmount * 10), 0, (math.abs(v18 - v55)));
        if v45.Current <= 0 then
            v44.Timer = 0;
            v44.State = false;
        end;
        PlaySingleAnimation("Rise", 2.25);
    else
        v49 = 10;
    end;
    local l_IntValue_0 = Instance.new("IntValue");
    l_IntValue_0.Name = "UseStamina";
    l_IntValue_0:SetAttribute("UseStamina", v67);
    l_IntValue_0.Parent = v31;
    l_Debris_0:AddItem(l_IntValue_0, 0.2);
    ToggleLimbBubbles(true);
    task.delay(0.2, function()
        ToggleLimbBubbles(false);
    end);
end;
CheckDied = function()
    if not v71 then
        if v32 then
            if v32.Parent ~= nil then
                if not (v32.Health > 0) or v32:GetState() == Enum.HumanoidStateType.Dead then
                    v71 = true;
                end;
            else
                v71 = true;
            end;
        else
            v71 = true;
        end;
    end;
    if v71 then
        v31 = nil;
        v32 = nil;
        v33 = nil;
        v34 = nil;
        v37 = false;
        DisableDiveButton();
        UpdateVisuals();
        return true;
    else
        return false;
    end;
end;
SetChar = function()
    if v37 then
        return;
    else
        v37 = true;
        while true do
            v31 = l_LocalPlayer_0.Character;
            if v31 then
                v33 = l_LocalPlayer_0.Character.PrimaryPart;
            end;
            if v31 and not v32 then
                v32 = l_LocalPlayer_0.Character:FindFirstChildWhichIsA("Humanoid");
            end;
            if v31 then
                v34 = l_LocalPlayer_0.Character:FindFirstChild("Head");
            end;
            if not (v31 and v33 and v32) or not v34 then
                task.wait(0.5);
            else
                break;
            end;
        end;
        if not v33 then
            return;
        elseif not v32 then
            return;
        else
            v71 = false;
            v31 = l_LocalPlayer_0.Character;
            v32 = v31:WaitForChild("Humanoid");
            v33 = v31:WaitForChild("HumanoidRootPart");
            v34 = v31:WaitForChild("Head");
            v35 = v33:WaitForChild("RootRigAttachment");
            v64 = v33:WaitForChild("Splash");
            v65 = v33:WaitForChild("Swimming");
            v36 = v32:WaitForChild("Animator");
            if l_Workspace_0.ClientFX:FindFirstChild("SwimPPart") then
                v59 = l_Workspace_0.ClientFX.SwimPPart;
            else
                local v95 = l_ReplicatedStorage_0.Particles.SwimPPart:Clone();
                v95.Parent = l_Workspace_0.ClientFX;
                v62 = v95.DashParticles;
                v62.Parent = v33;
                v63 = v95.AtlanteanTridentDash;
                v63.Parent = v33;
                v59 = v95;
            end;
            v32:GetPropertyChangedSignal("Jump"):Connect(function()
                if v71 or v37 then
                    return;
                elseif not v31 or not v32 then
                    return;
                elseif not v32.Jump then
                    return;
                elseif not v33 then
                    return;
                elseif v33.Position.Y > v18 then
                    ChangeSwimState("None");
                    return;
                else
                    if v43 ~= "None" then
                        if v43 == "Surface" and not v44.State then
                            if os.clock() > v48 + 1.5 then
                                v48 = os.clock();
                                v42 = 0.75;
                                ChangeSwimState("None");
                                v31:PivotTo(v31:GetPivot() + Vector3.new(0, 0.20000000298023224, 0, 0));
                                v33.AssemblyLinearVelocity = Vector3.new(v33.AssemblyLinearVelocity.X, v32.JumpPower * 1.25, v33.AssemblyLinearVelocity.Z);
                                return;
                            end;
                        else
                            if os.clock() > v48 + 0.25 then
                                v48 = os.clock();
                                SwimUp();
                            end;
                            if v43 == "Ground" then
                                return;
                            elseif not v26 or not v27 then
                                return;
                            elseif v27.TriggeredBy ~= "OnSwimJump" then
                                return;
                            elseif not l_Tools_0:FindFirstChild(v27.Name) then
                                return;
                            else
                                l_Tools_0[v27.Name]:InvokeServer(v26, v68);
                            end;
                        end;
                    end;
                    return;
                end;
            end);
            local l_AlignPosition_0 = Instance.new("AlignPosition");
            l_AlignPosition_0.Enabled = false;
            l_AlignPosition_0.Mode = Enum.PositionAlignmentMode.OneAttachment;
            l_AlignPosition_0.ApplyAtCenterOfMass = true;
            l_AlignPosition_0.Attachment0 = v35;
            l_AlignPosition_0.ForceLimitMode = Enum.ForceLimitMode.PerAxis;
            l_AlignPosition_0.ForceRelativeTo = Enum.ActuatorRelativeTo.World;
            l_AlignPosition_0.MaxAxesForce = Vector3.new(0, 1e999, 0, 0);
            l_AlignPosition_0.MaxVelocity = 1e999;
            l_AlignPosition_0.Responsiveness = 20;
            l_AlignPosition_0.Position = Vector3.new(0, v18 - v19.Max, 0);
            l_AlignPosition_0.Parent = v33;
            local l_AlignOrientation_0 = Instance.new("AlignOrientation");
            l_AlignOrientation_0.Enabled = false;
            l_AlignOrientation_0.Mode = Enum.OrientationAlignmentMode.OneAttachment;
            l_AlignOrientation_0.AlignType = Enum.AlignType.AllAxes;
            l_AlignOrientation_0.Attachment0 = v35;
            l_AlignOrientation_0.MaxAngularVelocity = 1e999;
            l_AlignOrientation_0.MaxTorque = 1e999;
            l_AlignOrientation_0.Responsiveness = 7;
            l_AlignOrientation_0.CFrame = CFrame.new(0, 0, 0);
            l_AlignOrientation_0.Parent = v33;
            local l_LinearVelocity_0 = Instance.new("LinearVelocity");
            l_LinearVelocity_0.Enabled = false;
            l_LinearVelocity_0.Attachment0 = v35;
            l_LinearVelocity_0.ForceLimitMode = Enum.ForceLimitMode.Magnitude;
            l_LinearVelocity_0.MaxForce = 1000000;
            l_LinearVelocity_0.RelativeTo = Enum.ActuatorRelativeTo.World;
            l_LinearVelocity_0.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector;
            l_LinearVelocity_0.VectorVelocity = Vector3.new(0, 0, 0, 0);
            l_LinearVelocity_0.Parent = v33;
            v50 = l_AlignPosition_0;
            v51 = l_AlignOrientation_0;
            v52 = l_LinearVelocity_0;
            local v99 = l_ReplicatedStorage_0.Particles.PPart.Bubbles:Clone();
            v99.VelocityInheritance = 0.03;
            v99.Rate = 0;
            v99.Enabled = true;
            v99.Parent = v33;
            v60 = v99;
            for _, v101 in {
                "LeftLowerArm", 
                "RightLowerArm", 
                "LeftLowerLeg", 
                "RightLowerLeg"
            } do
                if v31:FindFirstChild(v101) then
                    local v102 = l_ReplicatedStorage_0.Particles.PPart.Bubbles:Clone();
                    v102.VelocityInheritance = 0.025;
                    v102.Parent = v31[v101];
                    table.insert(v61, v102);
                end;
            end;
            v31.ChildAdded:Connect(function(v103)
                if v71 then
                    return;
                elseif not v31 then
                    return;
                elseif not v103 then
                    return;
                elseif v103:IsA("Tool") then
                    if not v103:FindFirstChild("toolModel") then
                        return;
                    elseif not v103.toolModel:GetAttribute("itemId") then
                        return;
                    else
                        local v104 = v14.getItemData(v103.toolModel:GetAttribute("itemId"));
                        if not v104.HasAbility then
                            return;
                        else
                            v26 = v103;
                            v27 = v104.HasAbility;
                            v28 = v103.Name;
                            return;
                        end;
                    end;
                elseif v103.Name ~= "AtlanteanTridentDash" then
                    return;
                else
                    v66 = true;
                    if v62 then
                        v62.Splash.Enabled = true;
                        v62.Swirl1.Enabled = true;
                    end;
                    if not v63 then
                        return;
                    else
                        v63.PlaybackSpeed = v72:NextNumber(v63:GetAttribute("Min"), v63:GetAttribute("Max"));
                        v63:Play();
                        return;
                    end;
                end;
            end);
            v31.ChildRemoved:Connect(function(v105)
                if v105 == v26 and v105.Name == v28 then
                    v26 = nil;
                    v27 = nil;
                    v28 = nil;
                    return;
                elseif not v66 then
                    return;
                elseif v31:FindFirstChild("AtlanteanTridentDash") then
                    return;
                else
                    v66 = false;
                    if v62 then
                        v62.Splash.Enabled = false;
                        v62.Swirl1.Enabled = false;
                    end;
                    return;
                end;
            end);
            SetAnimations();
            v32.HealthChanged:Connect(function()
                CheckDied();
            end);
            v32.AncestryChanged:Connect(function()
                v71 = true;
                CheckDied();
            end);
            UpdateJumpCosts();
            l_ClientData_0.bindToDataChanged("rebirthPerks", UpdateJumpCosts);
            l_LocalPlayer_0:GetAttributeChangedSignal("KingdomRole"):Connect(function()
                UpdateJumpCosts();
            end);
            l_UnderwaterUI_0.Air.Bar.Stroke.Color = v13.White;
            l_ClientData_0.bindToDataChanged("effects", CalcSpeeds);
            l_ClientData_0.bindToDataChanged("rebirthPerks", CalcSpeeds);
            l_ClientData_0.bindToDataChanged("rebirthPerks", UpdateJumpCosts);
            l_LocalPlayer_0:GetAttributeChangedSignal("holdingBow"):Connect(CalcSpeeds);
            l_LocalPlayer_0:GetAttributeChangedSignal("eatingFood"):Connect(CalcSpeeds);
            task.delay(1, function()
                v37 = false;
            end);
            print(l_LocalPlayer_0, " underwater avatar setup complete.");
            return;
        end;
    end;
end;
SetAnimations = function()
    table.clear(v40);
    for v106, v107 in v38 do
        local l_Animation_0 = Instance.new("Animation");
        l_Animation_0.Name = v106;
        l_Animation_0.AnimationId = "rbxassetid://" .. v107;
        local v109 = v36:LoadAnimation(l_Animation_0);
        v109.Priority = Enum.AnimationPriority.Action2;
        if v106 == "Rise" then
            v109.Priority = Enum.AnimationPriority.Action3;
        end;
        v40[v106] = v109;
    end;
end;
SetGui = function()
    if v30 == nil then
        while not l_LocalPlayer_0:FindFirstChild("Air") do
            task.wait(1);
        end;
        v30 = l_LocalPlayer_0.Air;
    end;
    l_UnderwaterUI_0.Air.Visible = false;
    l_UnderwaterUI_0.Air.GroupTransparency = 1;
    l_UnderwaterUI_0.Air:SetAttribute("Hidden", true);
    l_UnderwaterUI_0.Air:SetAttribute("Warning", false);
    l_UnderwaterUI_0.DiveButton:SetAttribute("Hidden", 1);
    local v110 = nil;
    local v111 = nil;
    local v112 = nil;
    v30.Changed:Connect(function()
        if v30.Value >= v30:GetAttribute("MaxAir") and not v71 then
            l_UnderwaterUI_0.Air:SetAttribute("Warning", false);
        elseif v30.Value <= 0 then
            l_UnderwaterUI_0.Air:SetAttribute("Warning", true);
        else
            l_UnderwaterUI_0.Air:SetAttribute("Warning", false);
        end;
        l_UnderwaterUI_0.Air.Bar.Fill.Size = UDim2.fromScale(1, (math.clamp(v30.Value / v30:GetAttribute("MaxAir"), 0.025, 1)));
        l_UnderwaterUI_0.Air.Bar.Fill.Position = UDim2.fromScale(0.5, 1 - v30.Value / v30:GetAttribute("MaxAir"));
    end);
    v30:GetAttributeChangedSignal("MaxAir"):Connect(function()
        l_UnderwaterUI_0.Air.Bar.TopNum.Text = v30:GetAttribute("MaxAir");
        if not l_UnderwaterUI_0.Air:GetAttribute("Hidden") then
            l_UnderwaterUI_0.Air.Bar.Fill.Size = UDim2.fromScale(1, (math.clamp(v30.Value / v30:GetAttribute("MaxAir"), 0.025, 1)));
            l_UnderwaterUI_0.Air.Bar.Fill.Position = UDim2.fromScale(0.5, 1 - v30.Value / v30:GetAttribute("MaxAir"));
        end;
    end);
    l_UnderwaterUI_0.Air.Bar.TopNum.Text = v30:GetAttribute("MaxAir");
    v30:GetAttributeChangedSignal("AirGain"):Connect(function()
        local v113 = math.clamp(l_UnderwaterUI_0.Air.AbsoluteSize.X / 2 - 5, 2, 50);
        local v114 = l_UnderwaterUI_0.Air.OGPulse:Clone();
        v114.Name = "Gain";
        v114.Stroke.Color = v13.Green;
        v114.Stroke.Thickness = 4;
        v114.Visible = true;
        v114.Parent = l_UnderwaterUI_0.Air;
        local v115 = l_TweenService_0:Create(v114, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Size = UDim2.new(0.5, v113, 0.75, v113)
        });
        v115.Completed:Connect(function()
            v114:Destroy();
        end);
        v115:Play();
        l_TweenService_0:Create(v114.Stroke, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
            Transparency = 1
        }):Play();
    end);
    l_UnderwaterUI_0.Air:GetAttributeChangedSignal("Hidden"):Connect(function()
        local l_Attribute_0 = l_UnderwaterUI_0.Air:GetAttribute("Hidden");
        if v111 then
            v111:Cancel();
        end;
        local v117 = UDim2.fromScale(0.65, 0.525);
        local v118 = 1;
        local v119 = 1.5;
        if not l_Attribute_0 then
            v117 = UDim2.fromScale(0.65, 0.5);
            v118 = 0;
            v119 = 0;
        end;
        if l_Attribute_0 and l_Lighting_0:GetAttribute("inMenu") then
            v119 = 0;
        end;
        v111 = l_TweenService_0:Create(l_UnderwaterUI_0.Air, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, v119), {
            Position = v117, 
            GroupTransparency = v118
        });
        v111.Completed:Connect(function()
            v111 = nil;
            if l_Attribute_0 then
                l_UnderwaterUI_0.Air.Visible = false;
            end;
        end);
        v111:Play();
        l_UnderwaterUI_0.Air.Visible = true;
    end);
    l_UnderwaterUI_0.Air:GetAttributeChangedSignal("Warning"):Connect(function()
        if v110 then
            task.cancel(v110);
            v110 = nil;
        end;
        if l_UnderwaterUI_0.Air:GetAttribute("Warning") then
            l_TweenService_0:Create(l_UnderwaterUI_0.Air.Bar.Stroke, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                Color = v13.Red
            }):Play();
            local v120 = math.clamp(l_UnderwaterUI_0.Air.AbsoluteSize.X / 2 - 5, 2, 50);
            v110 = task.spawn(function()
                while true do
                    task.wait(0.5);
                    local v121 = l_UnderwaterUI_0.Air.OGPulse:Clone();
                    v121.Name = "Warn";
                    v121.Visible = true;
                    v121.Parent = l_UnderwaterUI_0.Air;
                    local v122 = l_TweenService_0:Create(v121, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                        Size = UDim2.new(0.5, v120, 0.75, v120)
                    });
                    v122.Completed:Connect(function()
                        v121:Destroy();
                    end);
                    v122:Play();
                    l_TweenService_0:Create(v121.Stroke, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                        Transparency = 1
                    }):Play();
                end;
            end);
            return;
        else
            l_TweenService_0:Create(l_UnderwaterUI_0.Air.Bar.Stroke, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                Color = v13.White
            }):Play();
            return;
        end;
    end);
    l_UnderwaterUI_0.DiveButton:GetAttributeChangedSignal("Hidden"):Connect(function()
        local l_Attribute_1 = l_UnderwaterUI_0.DiveButton:GetAttribute("Hidden");
        if v112 then
            v112:Cancel();
        end;
        v112 = l_TweenService_0:Create(l_UnderwaterUI_0.DiveButton, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
            GroupTransparency = l_Attribute_1
        });
        v112.Completed:Connect(function()
            v112 = nil;
            if l_Attribute_1 >= 1 then
                l_UnderwaterUI_0.DiveButton.Visible = false;
            end;
        end);
        v112:Play();
        l_UnderwaterUI_0.DiveButton.Visible = true;
    end);
    v12:AddBaseButtonInteractions(l_UnderwaterUI_0.DiveButton.Frame);
    l_UnderwaterUI_0.DiveButton.Frame.Button.MouseButton1Up:Connect(function()
        ActivateDive(nil, Enum.UserInputState.Begin);
    end);
    l_UnderwaterUI_0.DiveButton.Frame:GetAttributeChangedSignal("Pressed"):Connect(function()
        if l_UnderwaterUI_0.DiveButton.Frame:GetAttribute("Pressed") then
            l_TweenService_0:Create(l_UnderwaterUI_0.DiveButton.Frame.Stroke, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
                Thickness = 4
            }):Play();
            return;
        else
            l_TweenService_0:Create(l_UnderwaterUI_0.DiveButton.Frame.Stroke, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
                Thickness = 2
            }):Play();
            return;
        end;
    end);
    local function _()
        if l_LocalPlayer_0:GetAttribute("CurrentDevice") == "KeyboardMouse" then
            l_UnderwaterUI_0.DiveButton.Frame.Hotkey.Text = "F";
            return;
        elseif l_LocalPlayer_0:GetAttribute("CurrentDevice") == "Gamepad" then
            l_UnderwaterUI_0.DiveButton.Frame.Hotkey.Text = "X";
            return;
        else
            l_UnderwaterUI_0.DiveButton.Frame.Hotkey.Text = "";
            return;
        end;
    end;
    l_LocalPlayer_0:GetAttributeChangedSignal("CurrentDevice"):Connect(function()
        if l_LocalPlayer_0:GetAttribute("CurrentDevice") == "KeyboardMouse" then
            l_UnderwaterUI_0.DiveButton.Frame.Hotkey.Text = "F";
            return;
        elseif l_LocalPlayer_0:GetAttribute("CurrentDevice") == "Gamepad" then
            l_UnderwaterUI_0.DiveButton.Frame.Hotkey.Text = "X";
            return;
        else
            l_UnderwaterUI_0.DiveButton.Frame.Hotkey.Text = "";
            return;
        end;
    end);
    if l_LocalPlayer_0:GetAttribute("CurrentDevice") == "KeyboardMouse" then
        l_UnderwaterUI_0.DiveButton.Frame.Hotkey.Text = "F";
    elseif l_LocalPlayer_0:GetAttribute("CurrentDevice") == "Gamepad" then
        l_UnderwaterUI_0.DiveButton.Frame.Hotkey.Text = "X";
    else
        l_UnderwaterUI_0.DiveButton.Frame.Hotkey.Text = "";
    end;
    print("Underwater UI setup complete.");
end;
Init = function()
    SetGui();
    l_LocalPlayer_0.CharacterAdded:Connect(function()
        task.spawn(function()
            SetChar();
        end);
    end);
    l_UserInputService_0:GetPropertyChangedSignal("MouseBehavior"):Connect(function()
        if l_UserInputService_0.MouseBehavior == Enum.MouseBehavior.LockCenter then
            v69 = true;
            if v43 == "Below" and v32 then
                v32.AutoRotate = false;
                return;
            end;
        else
            v69 = false;
            if v32 then
                v32.AutoRotate = true;
            end;
        end;
    end);
    task.spawn(function()
        SetChar();
    end);
    l_RunService_0.Heartbeat:Connect(function(v125)
        if v71 then
            return;
        elseif not v31 then
            return;
        elseif not (v32 and v33) or not v34 then
            return;
        elseif CheckDied() then
            return;
        elseif v37 then
            return;
        else
            if (v34.CFrame.Position - l_CurrentCamera_0.CFrame.Position).Magnitude < 5 then
                v70 = true;
            else
                v70 = false;
            end;
            v51.RigidityEnabled = v70;
            v41 = l_ControlModule_0:GetMoveVector();
            local v126 = "SurfaceIdle";
            if math.abs(v41.Magnitude) > 0 then
                if not v57.Set then
                    v57.Set = true;
                    v57.Changed = true;
                    if v43 ~= "None" then
                        v65:Play();
                    end;
                end;
            elseif v57.Set then
                v57.Set = false;
                v57.Changed = true;
                v65:Stop();
            end;
            if GetSwimState() == "None" and v43 ~= "None" then
                ChangeSwimState("None");
            end;
            if v42 <= 0 then
                ChangeSwimState(GetSwimState());
                if v43 == "Surface" then
                    if math.abs(v41.Magnitude) > 0 then
                        v126 = "SurfaceMove";
                        v44.Timer = 0;
                        v44.State = false;
                        v45.LowerAmount = math.clamp(v45.LowerAmount - v45.LowerIncRate, 0, v45.LowerMax);
                        v45.Current = 0;
                        FadeDiveButton();
                    else
                        EnableDiveButton();
                    end;
                else
                    v126 = if v43 == "Below" then math.abs(v41.Magnitude) > 0 and "BelowMove" or "Sink" else math.abs(v41.Magnitude) > 0 and "GroundMove" or "Sink";
                end;
            else
                v42 = math.clamp(v42 - v125, 0, 10);
            end;
            if v43 ~= "None" then
                local v127 = CFrame.new(l_CurrentCamera_0.CFrame.Position, v33.Position);
                local _ = CFrame.new((Vector3.new(v33.Position.X, v18, v33.Position.Z))).UpVector:Dot(v127.LookVector);
                if v70 then
                    v127 = CFrame.new(l_CurrentCamera_0.CFrame.Position, (l_CurrentCamera_0.CFrame * CFrame.new(0, 0, -10)).Position);
                end;
                local l_v53_0 = v53;
                l_v53_0.Timer = l_v53_0.Timer + v125;
                if v53.Timer >= v53.Rate then
                    v53.Timer = 0;
                    local v130;
                    l_v53_0, v130 = CheckGrounded(v33.Position);
                    v53.State = l_v53_0;
                    v53.Close = false;
                end;
                if v44.State and v42 <= 0 and math.abs(v41.Magnitude) <= 0 then
                    v45.LowerAmount = math.clamp(v45.LowerAmount + v45.LowerIncRate, 0, v45.LowerMax);
                    v45.Current = math.clamp(v45.Current + v45.LowerAmount, 0, (math.abs(v18 - (v55 + 3))));
                end;
                if v44.State and v43 == "Below" and math.abs(v41.Magnitude) > 0 then
                    l_v53_0 = CFrame.new(l_CurrentCamera_0.CFrame.Position, (Vector3.new(v33.Position.X, l_CurrentCamera_0.CFrame.Position.Y, v33.Position.Z)));
                    local v131 = Vector3.new(l_CurrentCamera_0.CFrame.Position.X, 0, l_CurrentCamera_0.CFrame.Position.Z);
                    local v132 = Vector3.new(v131.X + v41.X, 0, v131.Z + v41.Z);
                    local v133 = {
                        CFrame.new(v131, v132):ToEulerAnglesXYZ()
                    };
                    if v41.Z > 0 then
                        v54 = 180 + math.deg(-v133[2]);
                    else
                        v54 = math.deg(v133[2]);
                    end;
                    v50.Enabled = false;
                    v51.Enabled = true;
                    v52.Enabled = true;
                    if v57.Changed then
                        CancelGyroThread();
                    end;
                    if v70 then
                        v51.CFrame = v127 * CFrame.Angles(-1.5707963267948966, 0, 0);
                    else
                        v51.CFrame = v127 * CFrame.Angles(0, math.rad(v54), 0) * CFrame.Angles(-1.5707963267948966, 0, 0);
                    end;
                    local v134 = v11.GetSwimSpeed();
                    v52.VectorVelocity = (v127 * CFrame.Angles(0, math.rad(v54), 0)).LookVector * v134 + Vector3.new(0, v49, 0);
                    v50.Position = Vector3.new(0, math.clamp(v33.Position.Y, v55 + 3, 1e999), 0);
                    v45.LowerAmount = 0;
                    v45.Current = math.clamp(math.abs(v18 - v19.Min - v33.Position.Y), 0, (math.abs(v18 - (v55 + 3))));
                    if v49 > 0 then
                        v49 = math.clamp(v49 - 0.5, 0, 10);
                    end;
                else
                    v50.Enabled = true;
                    if v43 == "Below" and v51.Enabled then
                        if v57.Changed then
                            v51.CFrame = v127 * CFrame.Angles(0, math.rad(v54), 0);
                            CancelGyroThread();
                            v58 = task.delay(1.5, function()
                                if not (v44.State and v43 == "Below") or math.abs(v41.Magnitude) <= 0 then
                                    v51.Enabled = false;
                                end;
                            end);
                        end;
                    else
                        v51.Enabled = false;
                    end;
                    v52.Enabled = false;
                    v49 = 0;
                end;
                v50.Position = Vector3.new(0, math.clamp(v18 - v19.Min - v45.Current, v55 + 3, 1e999), 0);
                PlayLoopAnimation(v126);
                if v43 == "Surface" then
                    v32.WalkSpeed = v47 * 1;
                elseif v43 == "Below" then
                    v32.WalkSpeed = v47 * 0.95;
                elseif v43 == "Ground" then
                    v32.WalkSpeed = v47 * 0.75;
                end;
                v32:ChangeState(Enum.HumanoidStateType.Freefall);
            else
                v52.Enabled = false;
                v32.WalkSpeed = v46;
            end;
            UpdateVisuals();
            if v57.Changed then
                v57.Changed = false;
            end;
            return;
        end;
    end);
end;
task.spawn(function()
    Init();
end);
