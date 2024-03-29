	    local towers = workspace:WaitForChild("Towers")
    local instance_names = {}
    for _, instance in ipairs(towers:GetChildren()) do
        table.insert(instance_names, instance.Name)
    end

    local bb=game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end)

    -- Создаем GUI
    local gui = Instance.new("ScreenGui")
    gui.Name = "TowerNamesGUI"
    gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    -- Масштаб для GUI
    local guiScale = 0.7  -- Измените это значение по своему усмотрению

    -- Создаем UI элемент для отображения имен экземпляров
    local text_label = Instance.new("TextLabel")
    text_label.Text = "Имена башен"
    text_label.Position = UDim2.new(0.76, 0, 0.098096624, 0)
    text_label.Size = UDim2.new(0.3 * guiScale, 0, 0, 50 * guiScale)
    text_label.Parent = gui
    text_label.TextSize = 9

    -- Создаем UI элемент для отображения списка имен экземпляров
    local scroll_frame = Instance.new("ScrollingFrame")
    scroll_frame.Position = UDim2.new(0.76, 0, 0.098096624, 50 * guiScale)
    scroll_frame.Size = UDim2.new(0.3 * guiScale, 0, 0.7 * guiScale, -100 * guiScale)
    scroll_frame.CanvasSize = UDim2.new(0, 0, 0, #instance_names * 20 * guiScale)
    scroll_frame.Parent = gui

    -- Создаем UI элементы для каждого имени экземпляра
    for i, name in ipairs(instance_names) do
        local instance_label = Instance.new("TextLabel")
        instance_label.Text = name
        instance_label.Position = UDim2.new(0.4, 0, 0, (i - 1) * 20 * guiScale)
        instance_label.Size = UDim2.new(0.3 * guiScale, 0, 0, 20 * guiScale)
        instance_label.Parent = scroll_frame
    end

    -- Создаем кнопку закрытия
    local close_button = Instance.new("TextButton")
    close_button.Text = "Закрыть"
    close_button.Position = UDim2.new(0.76, 0, 0.55, -50 * guiScale)
    close_button.Size = UDim2.new(0.3 * guiScale, 0, 0, 50 * guiScale)
    close_button.Parent = gui

    -- Добавляем обработчик события для закрытия GUI при нажатии левой кнопкой мыши
    close_button.MouseButton1Click:Connect(function()
        gui:Destroy()
    end)

    -- Добавляем обработчик события для обновления GUI при нажатии правой кнопкой мыши
    close_button.MouseButton2Click:Connect(function()
        -- Обновляем список имен и пересоздаем элементы GUI
        for _, child in ipairs(scroll_frame:GetChildren()) do
            child:Destroy()
        end

        instance_names = {}
        for _, instance in ipairs(towers:GetChildren()) do
            table.insert(instance_names, instance.Name)
        end

        scroll_frame.CanvasSize = UDim2.new(0, 0, 0, #instance_names * 20 * guiScale)

        for i, name in ipairs(instance_names) do
            local instance_label = Instance.new("TextLabel")
            instance_label.Text = name
            instance_label.Position = UDim2.new(0.4, 0, 0, (i - 1) * 20 * guiScale)
            instance_label.Size = UDim2.new(0.3 * guiScale, 0, 0, 20 * guiScale)
            instance_label.Parent = scroll_frame
        end
    end)

    -- Создаем кнопку улучшения
    local upgrade_button = Instance.new("TextButton")
    upgrade_button.Text = "AutoFarm"
    upgrade_button.Position = UDim2.new(0.76, 0, 0.5, -50 * guiScale)
    upgrade_button.Size = UDim2.new(0.3 * guiScale, 0, 0, 50 * guiScale)
    upgrade_button.Parent = gui
    upgrade_button.MouseButton1Click:Connect(function()
    	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_voting-system@0.1.1"):WaitForChild("voting-system"):WaitForChild("__comm__"):WaitForChild("RE"):WaitForChild("Vote"):FireServer(0)
        	    wait(10)
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("deploy"):InvokeServer("IceBishopBattleMaster",Vector3.new(-21.100000381469727, 199.8000030517578, 5.400000095367432))
                wait(35)
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("deploy"):InvokeServer("IceBishopBattleMaster",Vector3.new(-38.599998474121094, 199.8000030517578, -3.799999952316284))
                wait(35)
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("deploy"):InvokeServer("IceBishopBattleMaster",Vector3.new(-17.700000762939453, 199.8000030517578, 0.30000001192092896))
                wait(20)
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("deploy"):InvokeServer("IceBishopBattleMaster",Vector3.new(-35.5, 199.8000030517578, -8.399999618530273))

                local towers = game.Workspace.Towers -- Замените на ваш объект или переменную
                local instance_names = {}
                local executionTime = 300 -- Замените на желаемое время выполнения в секундах
                local startTime = tick() -- Фиксация времени начала выполнения

                while tick() - startTime < executionTime do
                    for _, instance in ipairs(towers:GetChildren()) do
                        table.insert(instance_names, instance.Name)
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("upgrade"):InvokeServer(instance.Name)
                        
                        wait(1)
                    end
                end

                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("deploy"):InvokeServer("Mr Frost TowerLightningSpeed",Vector3.new(-53.900001525878906, 199.8000030517578, 13.800000190734863))
                wait(15)
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("deploy"):InvokeServer("Mr Frost TowerLightningSpeed",Vector3.new(-63.79999923706055, 199.8000030517578, 30.799999237060547))
                wait(15)
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("deploy"):InvokeServer("Mr Frost TowerLightningSpeed",Vector3.new(-38.20000076293945, 199.8000030517578, 44.5))        
                wait(5)
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("deploy"):InvokeServer("Pandoras BoxSwiftStrike3",Vector3.new(1.600000023841858, 199.8000030517578, -5.800000190734863))
                wait(5)
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("deploy"):InvokeServer("Pandoras BoxSwiftStrike3",Vector3.new(-38.79999923706055, 199.8000030517578, -27.600000381469727))
                wait(5)
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("deploy"):InvokeServer("Pandoras BoxSwiftStrike3",Vector3.new(-42.5, 199.8000030517578, -22.600000381469727))

                local towers = game.Workspace.Towers -- Замените на ваш объект или переменную
                local instance_names = {}
                local executionTimes = 150 -- Замените на желаемое время выполнения в секундах
                local startingTime = tick() -- Фиксация времени начала выполнения

                while tick() - startingTime < executionTimes do
                    for _, instance in ipairs(towers:GetChildren()) do
                        table.insert(instance_names, instance.Name)
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("upgrade"):InvokeServer(instance.Name)
                        
                        wait(1)
                    end
                end


                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("deploy"):InvokeServer("Ginger Bread King TowerSwiftStrike1",Vector3.new(-29.799999237060547, 199.79998779296875, -19.399999618530273))
                wait(15)
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("deploy"):InvokeServer("Ginger Bread King TowerSwiftStrike1",Vector3.new(-12.699999809265137, 199.79998779296875, -6))
                wait(15)
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("deploy"):InvokeServer("Ginger Bread King TowerSwiftStrike1",Vector3.new(-7.900000095367432, 199.79998779296875, -13))
                wait(15)
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("deploy"):InvokeServer("Ginger Bread King TowerSwiftStrike1",Vector3.new(-25.899999618530273, 199.79998779296875, -26.399999618530273))
                wait(15)
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("deploy"):InvokeServer("Ginger Bread King TowerSwiftStrike1",Vector3.new(-21.299999237060547, 199.79998779296875, -33.70000076293945))
                local towers = game.Workspace.Towers -- Замените на ваш объект или переменную
                local instance_names = {}
                local executionTimese = 220 -- Замените на желаемое время выполнения в секундах
                local startingeTime = tick() -- Фиксация времени начала выполнения

                while tick() - startingeTime < executionTimese do
                    for _, instance in ipairs(towers:GetChildren()) do
                        table.insert(instance_names, instance.Name)
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("rudolph101_tower-defence-towers@0.2.1"):WaitForChild("tower-defence-towers"):WaitForChild("Shared"):WaitForChild("TowerPlacement"):WaitForChild("__comm__"):WaitForChild("RF"):WaitForChild("upgrade"):InvokeServer(instance.Name)
                        
                        wait(1)
                    end
                end
    end)
