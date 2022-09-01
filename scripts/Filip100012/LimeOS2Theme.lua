local Info = {
    local themerv = "1.1"
    local themename = "LimeOS 2 UI"
    local themecreator = "Nerdya"
    local limeosv = 1.18
    local limeosmv = 1.19
}

return {Info=Info, Theme=function(main)
    if main:FindFirstChild("Modernized") then return "App "..main.Name.." is already updated." end
    local tbar = main:WaitForChild("TopBar")
    local uistroke = new("UIStroke", main)
    local betbar = new("Frame", tbar)
    main.BackgroundColor3 = Color3.fromRGB(33, 39, 47)
    new("UICorner", main).CornerRadius = UDim.new(0, 5)
    uistroke.Color = Color3.fromRGB(24, 29, 35)
    uistroke.Thickness = 3
    tbar.BackgroundTransparency = 1
    if tbar:FindFirstChild("UIListLayout") then 
        tbar.UIListLayout:Destroy() 
    end
    tbar.X.Position = UDim2.new(1, -75, 0, 0)
    tbar.X.Text = "—"
    tbar.X.Size = UDim2.new(0, 25, 1, 0)
    tbar.X.BackgroundColor3 = Color3.fromRGB(43, 51, 62)
    tbar.X.Font = Enum.Font.Gotham
    tbar.Y.Position = UDim2.new(1, -50, 0, 0)
    tbar.Y.Text = "<b>□</b>"
    tbar.Y.RichText = true
    tbar.Y.Size = UDim2.new(0, 25, 1, 0)
    tbar.Y.Visible = true
    tbar.Y.BackgroundColor3 = Color3.fromRGB(43, 51, 62)
    tbar.Y.TextColor3 = Color3.new(1, 1, 1)
    tbar.Y.Font = Enum.Font.Gotham
    tbar.Z.Position = UDim2.new(1, -25, 0, 0)
    tbar.Z.Size = UDim2.new(0, 25, 1, 0)
    tbar.Z.BackgroundColor3 = Color3.fromRGB(43, 51, 62)
    tbar.Z.TextColor3 = Color3.new(1, 1, 1)
    tbar.Z.Font = Enum.Font.Gotham
    local twen = twe:Create(tbar.Z, tweinf, {TextColor3 = Color3.new(1, 0, 0)})
    local twle = twe:Create(tbar.Z, tweinf, {TextColor3 = Color3.new(1, 1, 1)})
    tbar.Z.MouseEnter:Connect(function()
        twen:Play()
    end)
    tbar.Z.MouseLeave:Connect(function()
        twle:Play()
    end)
    betbar.BackgroundTransparency = 1
    betbar.Position = UDim2.new(1, -75, 0, 0)
    betbar.Size = UDim2.new(0, 75, 1, 0)
    new("UICorner", betbar).CornerRadius = UDim.new(0, 5)
    new("UIStroke", betbar).Color = Color3.fromRGB(24, 29, 35)
    local val = uisfolder().Parent.SystemFiles.RegEditData.PlayerPassword:Clone()
    val.Name = "Modernized"
    val.Value = themerv
    val.Parent = main
    return "Updated "..main.Name
end}
