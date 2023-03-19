    local Coasting = loadstring(game:HttpGet(("https://raw.githubusercontent.com/thanhdat4461/Coasting-Black/main/Source.lua")))()

    local Time = 0

    

    local Total = 3600

    

    

    local Tab = Coasting:CreateTab("Autofarms")

    

    local Section = Tab:CreateSection("Ghost")

    

    if not workspace:FindFirstChild("Spot") then

    local SafeSpot = Instance.new("Part", workspace)

    

    SafeSpot.Position = Vector3.new(-1500,100,-1500)

    

    SafeSpot.Name = "Spot"

    

    SafeSpot.Size = Vector3.new(50,50,50)

    

    SafeSpot.Anchored = true

    

    SafeSpot.Transparency = .7

    

    else

    

    

        end

    

    

    Section:CreateButton("Tp to Safespot",function()

    

        if workspace[game.Players.LocalPlayer.Name]:FindFirstChild("entered") then

    

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,50,0)

    

        else

            print("Enter Arena Pls")

        end

    

        end)

    

    

      Section:CreateToggle("Ghost Timer", function(Ghost)

    

          Timer = Ghost

    

          if Ghost == true then

    

              Count()

    

    

              end

    

    

          end)

    

    

    

    function Count()

    

    while Timer do

    

    

    

    task.wait(1)

    

    

    

    

    if game.Players.LocalPlayer.leaderstats.Glove.Value == "Ghost"  then

    

    Time = Time + 1

    

    

    print(Time)

    

    

    else

    

        Time = 0

    

    

    end

    end

    

    end
