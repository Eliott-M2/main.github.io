
-- future tycoon script

if game.PlaceId == 235521386 then
    local currentversion = "test"

    --call library

    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    --main window

local Window = Rayfield:CreateWindow({
   Name = "Dive into water script",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "loadin",
   LoadingSubtitle = "by Doug",
   ShowText = "hide", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "https://discord.gg/dZvUNnvKgU", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "DougKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"}, -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   },
   
})

    --local var
    local autoclick = false
    local autoclick2 = false

    --farm
    local Tab = Window:CreateTab(" 👨‍🌾 Farm")

    local Toggle = Tab:CreateToggle({   
        Name = "Autoclick",
        CurrentValue = false,
        Flag = "autoclickFTycoon",
        Callback = function(state)
        autoclick = state
        while autoclick do
            local args = {
                "click",
                workspace:WaitForChild("TycoonManagement"):WaitForChild("Tycoons"):WaitForChild("Bright orange"):WaitForChild("PurchasedObjects"):WaitForChild("Mine"):WaitForChild("Button"):WaitForChild("ClickDetector")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("MasterKey"):FireServer(unpack(args))
            task.wait(0.1)            
        end
        end
    })

    local Toggle = Tab:CreateToggle({   
        Name = "autoclick2",
        CurrentValue = false,
        Flag = "autoclick2FTycoon",
        Callback = function(state)
        autoclick2 = state
        while autoclick2 do
            local args = {
                "click",
                workspace:WaitForChild("TycoonManagement"):WaitForChild("Tycoons"):WaitForChild("Bright orange"):WaitForChild("PurchasedObjects"):WaitForChild("SMine"):WaitForChild("Button"):WaitForChild("ClickDetector")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("MasterKey"):FireServer(unpack(args))
            task.wait(0.1)            
        end
        end
    })



    local Input = Tab:CreateInput({
        Name = "WalkSpeed",
        CurrentValue = "",
        PlaceholderText = "Input Placeholder",
        RemoveTextAfterFocusLost = false,
        Flag = "Input1",
        Callback = function(Text)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(Text)
        end,
    })

    local Button = Tab:CreateButton({
        Name = "LAG (to make the parts freeze in the sell box",
        Callback = function() 
            local duration = 0.5 -- secondes de lag

            -- Affichage d'un message tip top
            warn("🔥 Lag volontaire pendant " .. duration .. " secondes (rip FPS)")

            -- Boucle qui surcharge le thread
            local startTime = tick()
            while tick() - startTime < duration do
                -- Calculs inutiles juste pour faire chauffer le CPU
                for i = 1, 1e6 do
                    local a = math.sqrt(i * math.random())
                end
            end

            warn("✅ Lag terminé, c'était bien tip top 💥")

        end
    })

end


-- Dive Into Water Script

if game.PlaceId == 81593728625228 then
    local currentversion = "test"

    --call library

    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


    --main window

local Window = Rayfield:CreateWindow({
   Name = "Dive into water script",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "loadin",
   LoadingSubtitle = "by Doug",
   ShowText = "hide", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "https://discord.gg/dZvUNnvKgU", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "DougKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"}, -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   },
   
})


--local var
local zone = nil
local ZoneIndexMap = {
    ["Happy Creeks"] = 1,
    ["Icy Tremors"] = 2,
    ["Heavenly Descend"] = 3,
    ["Candy Land"] = 4,
    ["Deep Space"] = 5,
    ["Pixel Casle"] = 6,
    ["Pixel Desert"] = 7,
}

local ZoneCoordinates = {
[1] = Vector3.new(819.508484, -29188.8105, 1752.26794),
[2] = Vector3.new(-2355.83423, -29085.8164, 1642.10632),
[3] = Vector3.new(-4829.3501, -29503.8164, 1001.10632),
[4] = Vector3.new(-4829.3501, -27455.8164, -199.893677),
[5] = Vector3.new(-1971.3501, -22524.5605, 6143.10645),
[6] = Vector3.new(-2653.3501, -15883.5605, 28593.1055),
[7] = Vector3.new(-9524.35059, -29878.3613, 3039.70532),
}



--farm
local Tab = Window:CreateTab(" 👨‍🌾 Farm")

local Dropdown = Tab:CreateDropdown({
Name = "Zones",
Options = {"Happy Creeks","Icy Tremors","Heavenly Descend","Candy Land","Deep Space","Pixel Casle","Pixel Desert"},
CurrentOption = {"Happy Creeks"},
MultipleOptions = false,
Flag = "DiveGameDropDownZone",
Callback = function(Options)
    local selected = Options[1]
    zone = ZoneIndexMap[selected]

    if zone then
        print("L'utilisateur a choisi l'option : " .. selected .. " (index = " .. zone .. ")")
    else
         warn("Option inconnue : " .. tostring(selected))
    end
end,
})



local isTpEnabled = false -- permet de garder l'état à jour

local Toggle = Tab:CreateToggle({   
    Name = "👑 Tp to win 👑",
    CurrentValue = false,
    Flag = "tptowinDiveGame",
    Callback = function(Value)
        isTpEnabled = Value

        if Value then
            Rayfield:Notify({
                Title = "Not allowed",
                Content = "You must join the discord server (link in the info tab(its free btw just one ad)) to use this OP window",
                Duration = 6.5,
                Image = 4483362458,
            })
            --[[task.spawn(function()
                local player = game.Players.LocalPlayer

                while isTpEnabled do
                    local character = player.Character or player.CharacterAdded:Wait()
                    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                    
                    if humanoidRootPart and ZoneCoordinates[zone] then
                        humanoidRootPart.CFrame = CFrame.new(ZoneCoordinates[zone])
                        print("👑 Tp vers zone " .. tostring(zone) .. " effectué !")
                    else
                        warn("Zone ou HumanoidRootPart introuvable.")
                    end
                    task.wait(12.5) -- délai entre chaque TP
                end
            end)--]]
        end
    end
})

    






local Tab = Window:CreateTab(" 🥚 eggs")

local oeuf = nil

-- Correspondance entre le nom visible et l'index numérique
local eggIndexMap = {
    ["200"] = 1,
    ["20k"] = 2,
    ["2M"] = 3,
    ["400M"] = 4,
    ["150B"] = 5,
    ["18T"] = 6,
    ["800T"] = 7,
    ["175Qa"] = 8,
    ["30Qi"] = 9,
    ["4.5sp"] = 10,
    ["12Sx"] = 11,
    ["80Oc"] = 12,
    ["4No"] = 13,
    ["1Dc"] = 14,
    ["5Ud"] = 15,
    ["12Dd"] = 16,
    ["5Td"] = 17,
    ["10QaD"] = 18,

}

local Dropdown = Tab:CreateDropdown({
    Name = "eggs",
    Options = {"Default","200","20k","2M","400M","150B","18T","800T","175Qa","30Qi","4.5sp","12Sx","80Oc","4No","1Dc","5Ud","12Dd","5Td","10QaD"},
    CurrentOption = {"Default"},
    MultipleOptions = false,
    Flag = "DiveGameDropDownEgg",
    Callback = function(Options)
        local selected = Options[1]
        oeuf = eggIndexMap[selected]

        if oeuf then
            print("L'utilisateur a choisi l'option : " .. selected .. " (index = " .. oeuf .. ")")
        else
            warn("Option inconnue : " .. tostring(selected))
        end
    end,
})


local Button = Tab:CreateButton({
   Name = "Open selected egg",
   Callback = function()
        -- Generated with Sigma Spy Github: https://github.com/depthso/Sigma-Spy
            -- Services
        local ReplicatedStorage = game:GetService("ReplicatedStorage")

        -- Remote
        local EggHatch = ReplicatedStorage.Events.EggHatch -- RemoteFunction 

        -- Variables
        local Mango1 = workspace.EggShop[oeuf] -- Instance

        EggHatch:InvokeServer(
            Mango1,
            1
        )  
   end,
})

local Tab = Window:CreateTab(" 💎 OP")


local Label = Tab:CreateLabel("You must press ALL the buttons in order from 1-4 to correctly get the infinite money and not bug the game", 4562954607, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme




local Button = Tab:CreateButton({
    Name = "1", --dive into water
        Callback = function() 
                Rayfield:Notify({
                    Title = "Not allowed",
                    Content = "You must join the discord server (link in the info tab(its free btw just one ad)) to use this OP window",
                    Duration = 6.5,
                Image = 4483362458,
                })
            --[[ Generated with Sigma Spy Github: https://github.com/depthso/Sigma-Spy
            -- Services
            local ReplicatedStorage = game:GetService("ReplicatedStorage")

            -- Remote
            local Swimming = ReplicatedStorage.Events.Swimming -- RemoteEvent 

            Swimming:FireServer(
                true
            )--]]

        end
})

local Button = Tab:CreateButton({
Name = "2 (infinite money)", --Stop diving into water
    Callback = function() 
            Rayfield:Notify({
                Title = "Not allowed",
                Content = "You must join the discord server (link in the info tab(its free btw just one ad)) to use this OP window",
                Duration = 6.5,
            Image = 4483362458,
            })
    --[[ Services
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

     -- Remote
    local ProcessReturn = ReplicatedStorage.Events.ProcessReturn -- RemoteFunction 

     ProcessReturn:InvokeServer(
        true,
        10000000000000000000000000000000000000000000000000 --100 qintillion
    )--]]


end
})

local Button = Tab:CreateButton({
    Name = "3", --Stop swimming | remove the swimming state
        Callback = function() 
            Rayfield:Notify({
                Title = "Not allowed",
                Content = "You must join the discord server (link in the info tab(its free btw just one ad)) to use this OP window",
                Duration = 6.5,
            Image = 4483362458,
            })
            --[[ Generated with Sigma Spy Github: https://github.com/depthso/Sigma-Spy
            -- Services
            local ReplicatedStorage = game:GetService("ReplicatedStorage")

            -- Remote
            local Swimming = ReplicatedStorage.Events.Swimming -- RemoteEvent 

            Swimming:FireServer(
                false
            )--]]

        end
})

local Button = Tab:CreateButton({
    Name = "4", --Teleport to the spawn and land on the ground
        Callback = function()            
            Rayfield:Notify({
                Title = "Not allowed",
                Content = "You must join the discord server (link in the info tab(its free btw just one ad)) to use this OP window",
                Duration = 6.5,
            Image = 4483362458,
            })
            --[[ Services
            local ReplicatedStorage = game:GetService("ReplicatedStorage")

            -- Remote
            local Landing = ReplicatedStorage.Events.Landing -- RemoteEvent 

            Landing:FireServer()

            task.wait(1)
            

            local player2 = game.Players.LocalPlayer
        
           local function teleportPlayer2()
                local character2 = player2.Character or player2.CharacterAdded:Wait()
                local humanoidRootPart2 = character2:FindFirstChild("HumanoidRootPart")
                
                if humanoidRootPart2 then
                    local destination2 = Vector3.new(911.5, -200000.8, 1744.5)
                    humanoidRootPart2.CFrame = CFrame.new(destination2)
                else
                    warn("HumanoidRootPart non trouvé.")
                end
            end

            teleportPlayer2()--]]
        end

    })



local Tab = Window:CreateTab(" ❓ Info")

Tab:CreateLabel("This is a script made by Doug, it is not a copy of any other script, it is made by me and me only", 4562954607, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

local Button = Tab:CreateButton({
   Name = "Join the discord server to get more scripts and updates",
   Callback = function()
       local link = "https://discord.gg/dZvUNnvKgU"

       -- Copie dans le presse-papiers
       pcall(function()
           setclipboard(link)
       end)

       -- Affiche une notification sympa
        Rayfield:Notify({
            Title = "Notification",
            Content = "The link to the discord server has been copied to your clipboard successfully!",
            Duration = 6.5,
        Image = 4483362458,
        })

       print("Lien Discord copié dans le presse-papiers !")
   end,
})


-- Jump Rope Script
elseif game.PlaceId == 123741668193208 then

    print("Jump Rope Script loaded")

    --call library

    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


    --main window

local Window = Rayfield:CreateWindow({
   Name = "jump rope script",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "loadin",
   LoadingSubtitle = "by Doug",
   ShowText = "hide", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "https://discord.gg/dZvUNnvKgU", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "DougKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"}, -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   },
   
})


local Tab = Window:CreateTab(" 👨‍🌾 Farm")

local iswinenabled = false


local Toggle = Tab:CreateToggle({
   Name = "Instant win",
   CurrentValue = false,
   Flag = "autocashsquidgame", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)

    iswinenabled = Value

    if Value then
        while iswinenabled do
            
            game:GetService("ReplicatedStorage").RestartRemotes.Loader:FireServer(false)
            task.wait(10)
        end
    end
end
})

local isinfinitecashenabled = false -- permet de garder l'état à jour

local Toggle = Tab:CreateToggle({   
    Name = "Better Infinite cash (100k per 0.1s)",
    CurrentValue = false,
    Flag = "squidgameinfinitecash",
    Callback = function(Value)
        isinfinitecashenabled = Value
            Rayfield:Notify({
                Title = "Not allowed",
                Content = "You must join the discord server (link in the info tab(its free btw just one ad)) to use this OP window",
                Duration = 6.5,
                Image = 4483362458,
            })
            --[[task.spawn(function()
                local player = game.Players.LocalPlayer

                while isTpEnabled do
                    local character = player.Character or player.CharacterAdded:Wait()
                    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                    
                    if humanoidRootPart and ZoneCoordinates[zone] then
                        humanoidRootPart.CFrame = CFrame.new(ZoneCoordinates[zone])
                        print("👑 Tp vers zone " .. tostring(zone) .. " effectué !")
                    else
                        warn("Zone ou HumanoidRootPart introuvable.")
                    end
                    task.wait(12.5) -- délai entre chaque TP
                end
            end)--]]

    end
})


local Tab = Window:CreateTab(" ❓ Info")

Tab:CreateLabel("This is a script made by Doug, it is not a copy of any other script, it is made by me and me only", 4562954607, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

local Button = Tab:CreateButton({
   Name = "Join the discord server to get more scripts and updates (click to copy link)",
   Callback = function()
       local link = "https://discord.gg/dZvUNnvKgU"

       -- Copie dans le presse-papiers
       pcall(function()
           setclipboard(link)
       end)

       -- Affiche une notification sympa
        Rayfield:Notify({
            Title = "Notification",
            Content = "The link to the discord server has been copied to your clipboard successfully!",
            Duration = 6.5,
        Image = 4483362458,
        })

       print("Lien Discord copié dans le presse-papiers !")
    end,
})


local Slider = Tab:CreateSlider({
    Name = "FPS Cap",
    Range = {5, 360}, -- Tu peux adapter le max si tu veux (240, 1000, etc.)
    Increment = 10,
    Suffix = "FPS",
    CurrentValue = 60,
    Flag = "FpsCapSlider",
    Callback = function(Value)
            setfpscap(Value)
    end,
})


end


