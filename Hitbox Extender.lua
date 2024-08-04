local enabled = false
local user = game:GetService("UserInputService")
function hbe()
  user.InputBegan:Connect(function(input)
      if input.KeyCode == Enum.KeyCode.F then
      if enabled == false then
      enabled = true
      for i,v in pairs(game:GetService("Players"):GetChildren()) do
          if v ~= game:GetService("Players").LocalPlayer then
          v.Character:FindFirstChild("HumanoidRootPart").Size += Vector3.new(5, 5, 5)
          v.Character:FindFirstChild("HumanoidRootPart").Transparency = 0.5
    end
    
end
    else
        
enabled = false
 for i,v in pairs(game:GetService("Players"):GetChildren()) do
          if v ~= game:GetService("Players").LocalPlayer then
          v.Character:FindFirstChild("HumanoidRootPart").Size -= Vector3.new(5, 5, 5)
          v.Character:FindFirstChild("HumanoidRootPart").Transparency = 1
    end
    end              
    end
  
      end
end)
end

hbe()