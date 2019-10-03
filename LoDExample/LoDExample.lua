local name = ...

print('running '..name)
local f = CreateFrame('Frame')
f:SetScript("OnEvent", function(self, event, ...)
    if (event == "ADDON_LOADED" and ... == name) then
        print(name..' loaded')
    end
end)
f:RegisterEvent("ADDON_LOADED")