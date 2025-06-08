local HttpService = game:GetService("HttpService")

_G.FileName = "math.random"
local FilePath = "LuminHub/settings/GrowAGarden/" .. _G.FileName .. ".txt"

_G.WebhookFailToggle = false
_G.WebhookSuccessToggle = false
_G.AutoSellToggle = false
_G.AutoBuySeed = false
_G.AutoBuyBeeItems = false
_G.ToggleHoneyCraft = false
_G.ShowPlantPrices = false
_G.KeybindMenuOpen = false
_G.ShowCustomCursor = true
_G.AutoBuyCosmeticItems = false
_G.AutoHatch = false
_G.ShowPetPrices = false
_G.AutoHoney = false
_G.Favoriter_AutoToggle = false
_G.AutoBuyEggToggle = false
_G.HatchRejoinToggle = true
_G.AutoCollect = false
_G.AutoBuyCosmeticCrates = false
_G.AutoBuyGear = false
_G.AutoHatchTargetPets = true
_G["Start Hop"] = false
_G.ToggleInventoryValueDisplay = false
_G.AutoGrowToggle = false
_G.HighlightPollinated = false
_G.AutoFeedToggle = false
_G.CosmeticItemSelector = {}
_G.CollectSpeed = "Slow"
_G.Favoriter_VariantSelector = {}
_G.SeedSelector = {}
_G.Favoriter_MutationSelector = {}
_G.Favoriter_SeedSelector = {}
_G["Delay Before Hop"] = ""
_G.jumppower = "50"
_G.NotificationSide = "Right"
_G.StopWhenHunger = "10"
_G.Delay = "2.5"
_G.PetTargetName = "Disco Bee"
_G.EggSelector = {}
_G.GearSelector = {}
_G.MutationSelector = {}
_G.VariantSelector = {}
_G.MutationDropdown = {}
_G["Hop Until PlaceVersion"] = ""
_G.CosmeticCrateSelector = {}
_G.BeeShopSelector = {}
_G.WebhookURLInput = ""
_G.FoodSelector = {}
_G.PickYourSeedsToPlant = {}
_G.FeedWhenHunger = "0"
_G.walkspeed = "20"
_G.DPIDropdown = "100%"
_G.Favoriter_ModeSelector = "Favorite"
_G["Join JobId"] = ""

local config = {
    objects = {
        {idx="WebhookFailToggle",type="Toggle",value=_G.WebhookFailToggle},
        {idx="WebhookSuccessToggle",type="Toggle",value=_G.WebhookSuccessToggle},
        {idx="AutoSellToggle",type="Toggle",value=_G.AutoSellToggle},
        {idx="AutoBuySeed",type="Toggle",value=_G.AutoBuySeed},
        {idx="AutoBuyBeeItems",type="Toggle",value=_G.AutoBuyBeeItems},
        {idx="ToggleHoneyCraft",type="Toggle",value=_G.ToggleHoneyCraft},
        {idx="ShowPlantPrices",type="Toggle",value=_G.ShowPlantPrices},
        {idx="KeybindMenuOpen",type="Toggle",value=_G.KeybindMenuOpen},
        {idx="ShowCustomCursor",type="Toggle",value=_G.ShowCustomCursor},
        {idx="AutoBuyCosmeticItems",type="Toggle",value=_G.AutoBuyCosmeticItems},
        {idx="AutoHatch",type="Toggle",value=_G.AutoHatch},
        {idx="ShowPetPrices",type="Toggle",value=_G.ShowPetPrices},
        {idx="AutoHoney",type="Toggle",value=_G.AutoHoney},
        {idx="Favoriter_AutoToggle",type="Toggle",value=_G.Favoriter_AutoToggle},
        {idx="AutoBuyEggToggle",type="Toggle",value=_G.AutoBuyEggToggle},
        {idx="HatchRejoinToggle",type="Toggle",value=_G.HatchRejoinToggle},
        {idx="AutoCollect",type="Toggle",value=_G.AutoCollect},
        {idx="AutoBuyCosmeticCrates",type="Toggle",value=_G.AutoBuyCosmeticCrates},
        {idx="AutoBuyGear",type="Toggle",value=_G.AutoBuyGear},
        {idx="AutoHatchTargetPets",type="Toggle",value=_G.AutoHatchTargetPets},
        {idx="Start Hop",type="Toggle",value=_G["Start Hop"]},
        {idx="ToggleInventoryValueDisplay",type="Toggle",value=_G.ToggleInventoryValueDisplay},
        {idx="AutoGrowToggle",type="Toggle",value=_G.AutoGrowToggle},
        {idx="HighlightPollinated",type="Toggle",value=_G.HighlightPollinated},
        {idx="AutoFeedToggle",type="Toggle",value=_G.AutoFeedToggle},
        {idx="CosmeticItemSelector",type="Dropdown",value=_G.CosmeticItemSelector},
        {idx="CollectSpeed",type="Dropdown",value=_G.CollectSpeed},
        {idx="Favoriter_VariantSelector",type="Dropdown",value=_G.Favoriter_VariantSelector},
        {idx="SeedSelector",type="Dropdown",value=_G.SeedSelector},
        {idx="Favoriter_MutationSelector",type="Dropdown",value=_G.Favoriter_MutationSelector},
        {idx="Favoriter_SeedSelector",type="Dropdown",value=_G.Favoriter_SeedSelector},
        {idx="Delay Before Hop",type="Input",text=_G["Delay Before Hop"]},
        {idx="jumppower",type="Input",text=_G.jumppower},
        {idx="NotificationSide",type="Dropdown",value=_G.NotificationSide},
        {idx="StopWhenHunger",type="Input",text=_G.StopWhenHunger},
        {idx="Delay",type="Input",text=_G.Delay},
        {idx="PetTargetName",type="Input",text=_G.PetTargetName},
        {idx="EggSelector",type="Dropdown",value=_G.EggSelector},
        {idx="GearSelector",type="Dropdown",value=_G.GearSelector},
        {idx="MutationSelector",type="Dropdown",value=_G.MutationSelector},
        {idx="VariantSelector",type="Dropdown",value=_G.VariantSelector},
        {idx="MutationDropdown",type="Dropdown"},
        {idx="Hop Until PlaceVersion",type="Input",text=_G["Hop Until PlaceVersion"]},
        {idx="CosmeticCrateSelector",type="Dropdown",value=_G.CosmeticCrateSelector},
        {idx="BeeShopSelector",type="Dropdown",value=_G.BeeShopSelector},
        {idx="WebhookURLInput",type="Input",text=_G.WebhookURLInput},
        {idx="FoodSelector",type="Dropdown",value=_G.FoodSelector},
        {idx="PickYourSeedsToPlant",type="Dropdown",value=_G.PickYourSeedsToPlant},
        {idx="FeedWhenHunger",type="Input",text=_G.FeedWhenHunger},
        {idx="walkspeed",type="Input",text=_G.walkspeed},
        {idx="DPIDropdown",type="Dropdown",value=_G.DPIDropdown},
        {idx="Favoriter_ModeSelector",type="Dropdown",value=_G.Favoriter_ModeSelector},
        {idx="Join JobId",type="Input",text=_G["Join JobId"]}
    }
}

writefile(FilePath, HttpService:JSONEncode(config))
print("Config saved to " .. FilePath)
