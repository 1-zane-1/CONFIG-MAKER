local HttpService = game:GetService("HttpService")
local env = getgenv()

env.FileName = env.FileName or ""
local FilePath = "LuminHub/settings/GrowAGarden/" .. tostring(env.FileName) .. ".txt"

local config = {
    objects = {
        {idx="WebhookFailToggle",type="Toggle",value=env.WebhookFailToggle},
        {idx="WebhookSuccessToggle",type="Toggle",value=env.WebhookSuccessToggle},
        {idx="AutoSellToggle",type="Toggle",value=env.AutoSellToggle},
        {idx="AutoBuySeed",type="Toggle",value=env.AutoBuySeed},
        {idx="AutoBuyBeeItems",type="Toggle",value=env.AutoBuyBeeItems},
        {idx="ToggleHoneyCraft",type="Toggle",value=env.ToggleHoneyCraft},
        {idx="ShowPlantPrices",type="Toggle",value=env.ShowPlantPrices},
        {idx="KeybindMenuOpen",type="Toggle",value=env.KeybindMenuOpen},
        {idx="ShowCustomCursor",type="Toggle",value=env.ShowCustomCursor},
        {idx="AutoBuyCosmeticItems",type="Toggle",value=env.AutoBuyCosmeticItems},
        {idx="AutoHatch",type="Toggle",value=env.AutoHatch},
        {idx="ShowPetPrices",type="Toggle",value=env.ShowPetPrices},
        {idx="AutoHoney",type="Toggle",value=env.AutoHoney},
        {idx="Favoriter_AutoToggle",type="Toggle",value=env.Favoriter_AutoToggle},
        {idx="AutoBuyEggToggle",type="Toggle",value=env.AutoBuyEggToggle},
        {idx="HatchRejoinToggle",type="Toggle",value=env.HatchRejoinToggle},
        {idx="AutoCollect",type="Toggle",value=env.AutoCollect},
        {idx="AutoBuyCosmeticCrates",type="Toggle",value=env.AutoBuyCosmeticCrates},
        {idx="AutoBuyGear",type="Toggle",value=env.AutoBuyGear},
        {idx="AutoHatchTargetPets",type="Toggle",value=env.AutoHatchTargetPets},
        {idx="Start Hop",type="Toggle",value=env["Start Hop"]},
        {idx="ToggleInventoryValueDisplay",type="Toggle",value=env.ToggleInventoryValueDisplay},
        {idx="AutoGrowToggle",type="Toggle",value=env.AutoGrowToggle},
        {idx="HighlightPollinated",type="Toggle",value=env.HighlightPollinated},
        {idx="AutoFeedToggle",type="Toggle",value=env.AutoFeedToggle},
        {idx="CosmeticItemSelector",type="Dropdown",value=env.CosmeticItemSelector},
        {idx="CollectSpeed",type="Dropdown",value=env.CollectSpeed},
        {idx="Favoriter_VariantSelector",type="Dropdown",value=env.Favoriter_VariantSelector},
        {idx="SeedSelector",type="Dropdown",value=env.SeedSelector},
        {idx="Favoriter_MutationSelector",type="Dropdown",value=env.Favoriter_MutationSelector},
        {idx="Favoriter_SeedSelector",type="Dropdown",value=env.Favoriter_SeedSelector},
        {idx="Delay Before Hop",type="Input",text=env["Delay Before Hop"]},
        {idx="jumppower",type="Input",text=env.jumppower},
        {idx="NotificationSide",type="Dropdown",value=env.NotificationSide},
        {idx="StopWhenHunger",type="Input",text=env.StopWhenHunger},
        {idx="Delay",type="Input",text=env.Delay},
        {idx="PetTargetName",type="Input",text=env.PetTargetName},
        {idx="EggSelector",type="Dropdown",value=env.EggSelector},
        {idx="GearSelector",type="Dropdown",value=env.GearSelector},
        {idx="MutationSelector",type="Dropdown",value=env.MutationSelector},
        {idx="VariantSelector",type="Dropdown",value=env.VariantSelector},
        {idx="MutationDropdown",type="Dropdown"},
        {idx="Hop Until PlaceVersion",type="Input",text=env["Hop Until PlaceVersion"]},
        {idx="CosmeticCrateSelector",type="Dropdown",value=env.CosmeticCrateSelector},
        {idx="BeeShopSelector",type="Dropdown",value=env.BeeShopSelector},
        {idx="WebhookURLInput",type="Input",text=env.WebhookURLInput},
        {idx="FoodSelector",type="Dropdown",value=env.FoodSelector},
        {idx="PickYourSeedsToPlant",type="Dropdown",value=env.PickYourSeedsToPlant},
        {idx="FeedWhenHunger",type="Input",text=env.FeedWhenHunger},
        {idx="walkspeed",type="Input",text=env.walkspeed},
        {idx="DPIDropdown",type="Dropdown",value=env.DPIDropdown},
        {idx="Favoriter_ModeSelector",type="Dropdown",value=env.Favoriter_ModeSelector},
        {idx="Join JobId",type="Input",text=env["Join JobId"]}
    }
}

writefile(FilePath, HttpService:JSONEncode(config))
print("✅ Config saved to " .. FilePath)