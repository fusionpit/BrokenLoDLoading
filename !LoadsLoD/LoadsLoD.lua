local name = ...

print('running '..name)
local f = CreateFrame('Frame')
f:SetScript("OnEvent", function(self, event, ...)
    if (event == "ADDON_LOADED" and ... == name) then
        print(name..' loaded, loading Talent UI')
        LoadAddOn('Blizzard_TalentUI')
        print('after loading Talent UI')
    end
end)
f:RegisterEvent("ADDON_LOADED")