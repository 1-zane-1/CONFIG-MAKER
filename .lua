local HttpService = game:GetService("HttpService")

local FilePath = "LuminHub/settings/GrowAGarden/" .. getgenv().FileName .. ".txt"

local config = {
    objects = {
        {idx="WebhookFailToggle",type="Toggle",value=getgenv().WebhookFailToggle},
        {idx="WebhookSuccessToggle",type="Toggle",value=getgenv().WebhookSuccessToggle},
        {idx="AutoSellToggle",type="Toggle",value=getgenv().AutoSellToggle},
        {idx="AutoBuySeed",type="Toggle",value=getgenv().AutoBuySeed},
        {idx="AutoBuyBeeItems",type="Toggle",value=getgenv().AutoBuyBeeItems},
        {idx="ToggleHoneyCraft",type="Toggle",value=getgenv().ToggleHoneyCraft},
        {idx="ShowPlantPrices",type="Toggle",value=getgenv().ShowPlantPrices},
        {idx="KeybindMenuOpen",type="Toggle",value=getgenv().KeybindMenuOpen},
        {idx="ShowCustomCursor",type="Toggle",value=getgenv().ShowCustomCursor},
        {idx="AutoBuyCosmeticItems",type="Toggle",value=getgenv().AutoBuyCosmeticItems},
        {idx="AutoHatch",type="Toggle",value=getgenv().AutoHatch},
        {idx="ShowPetPrices",type="Toggle",value=getgenv().ShowPetPrices},
        {idx="AutoHoney",type="Toggle",value=getgenv().AutoHoney},
        {idx="Favoriter_AutoToggle",type="Toggle",value=getgenv().Favoriter_AutoToggle},
        {idx="AutoBuyEggToggle",type="Toggle",value=getgenv().AutoBuyEggToggle},
        {idx="HatchRejoinToggle",type="Toggle",value=getgenv().HatchRejoinToggle},
        {idx="AutoCollect",type="Toggle",value=getgenv().AutoCollect},
        {idx="AutoBuyCosmeticCrates",type="Toggle",value=getgenv().AutoBuyCosmeticCrates},
        {idx="AutoBuyGear",type="Toggle",value=getgenv().AutoBuyGear},
        {idx="AutoHatchTargetPets",type="Toggle",value=getgenv().AutoHatchTargetPets},
        {idx="Start Hop",type="Toggle",value=getgenv()["Start Hop"]},
        {idx="ToggleInventoryValueDisplay",type="Toggle",value=getgenv().ToggleInventoryValueDisplay},
        {idx="AutoGrowToggle",type="Toggle",value=getgenv().AutoGrowToggle},
        {idx="HighlightPollinated",type="Toggle",value=getgenv().HighlightPollinated},
        {idx="AutoFeedToggle",type="Toggle",value=getgenv().AutoFeedToggle},
        {idx="CosmeticItemSelector",type="Dropdown",value=getgenv().CosmeticItemSelector},
        {idx="CollectSpeed",type="Dropdown",value=getgenv().CollectSpeed},
        {idx="Favoriter_VariantSelector",type="Dropdown",value=getgenv().Favoriter_VariantSelector},
        {idx="SeedSelector",type="Dropdown",value=getgenv().SeedSelector},
        {idx="Favoriter_MutationSelector",type="Dropdown",value=getgenv().Favoriter_MutationSelector},
        {idx="Favoriter_SeedSelector",type="Dropdown",value=getgenv().Favoriter_SeedSelector},
        {idx="Delay Before Hop",type="Input",text=getgenv()["Delay Before Hop"]},
        {idx="jumppower",type="Input",text=getgenv().jumppower},
        {idx="NotificationSide",type="Dropdown",value=getgenv().NotificationSide},
        {idx="StopWhenHunger",type="Input",text=getgenv().StopWhenHunger},
        {idx="Delay",type="Input",text=getgenv().Delay},
        {idx="PetTargetName",type="Input",text=getgenv().PetTargetName},
        {idx="EggSelector",type="Dropdown",value=getgenv().EggSelector},
        {idx="GearSelector",type="Dropdown",value=getgenv().GearSelector},
        {idx="MutationSelector",type="Dropdown",value=getgenv().MutationSelector},
        {idx="VariantSelector",type="Dropdown",value=getgenv().VariantSelector},
        {idx="MutationDropdown",type="Dropdown"},
        {idx="Hop Until PlaceVersion",type="Input",text=getgenv()["Hop Until PlaceVersion"]},
        {idx="CosmeticCrateSelector",type="Dropdown",value=getgenv().CosmeticCrateSelector},
        {idx="BeeShopSelector",type="Dropdown",value=getgenv().BeeShopSelector},
        {idx="WebhookURLInput",type="Input",text=getgenv().WebhookURLInput},
        {idx="FoodSelector",type="Dropdown",value=getgenv().FoodSelector},
        {idx="PickYourSeedsToPlant",type="Dropdown",value=getgenv().PickYourSeedsToPlant},
        {idx="FeedWhenHunger",type="Input",text=getgenv().FeedWhenHunger},
        {idx="walkspeed",type="Input",text=getgenv().walkspeed},
        {idx="DPIDropdown",type="Dropdown",value=getgenv().DPIDropdown},
        {idx="Favoriter_ModeSelector",type="Dropdown",value=getgenv().Favoriter_ModeSelector},
        {idx="Join JobId",type="Input",text=getgenv()["Join JobId"]}
    }
}

writefile(FilePath, HttpService:JSONEncode(config))
print("✅ Config saved to " .. FilePath)