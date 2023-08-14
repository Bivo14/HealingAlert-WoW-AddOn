local function getInitialPowerValue()
    local powerValue = UnitPower("player")
    return powerValue;
end

local function getAlertingFrame()
    local f = CreateFrame("Frame",nil,UIParent)
    f:SetFrameStrata("BACKGROUND")
    f:SetWidth(128)
    f:SetHeight(64)
    f:SetPoint("TOP")

    local t = f:CreateTexture(nil,"BACKGROUND")
    t:SetAllPoints(f)
    f.texture = t

    local alertingText = f:CreateFontString(nil, 'OVERLAY', 'GameFontNormal')
    alertingText:SetFont("Fonts\\FRIZQT__.TTF", 26, "OUTLINE, MONOCHROME")
    alertingText:SetPoint('TOP', 0, -0.2 * GetScreenHeight())
    alertingText:SetTextColor(1, 0, 0)
    alertingText:SetText("YOUR ENERGY IS BELOW 75%! REGEN YOURSELF")
    return f
end

local function comparePowerValue(initialValue)
    local currentManaLevel = UnitPower("player")
    if currentManaLevel < 0.75 * initialValue then
        AlertingFrame:Show()
        PlayMusic("Interface\\AddOns\\HealingAlert\\phone_alert.mp3")
    else
        AlertingFrame:Hide()
        StopMusic()
    end
end

local function alertHandler()
    comparePowerValue(InitialPowerValue)
    C_Timer.After(1, alertHandler)
end

AlertingFrame = getAlertingFrame()
InitialPowerValue = getInitialPowerValue()
alertHandler()