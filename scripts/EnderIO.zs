print("Applying Torch.IO EnderIO tweaks");

#EnderIO items
val basicGear = <EnderIO:itemMachinePart:1>;
val electricalSteel = <EnderIO:itemAlloy>;
val yetaWrench = <EnderIO:itemYetaWrench>;

#EnderIO blocks
val stirlingGenerator = <EnderIO:blockStirlingGenerator>;
val combustionGenerator = <EnderIO:blockCombustionGenerator>;
val sagMill = <EnderIO:blockSagMill>;
val alloySmelter = <EnderIO:blockAlloySmelter>;
val farmingStation = <EnderIO:blockFarmStation>;
val fluidTank = <EnderIO:blockTank>;
val pressurizedFluidTank = <EnderIO:blockTank:1>;

#Other items
val bcStoneGear = <BuildCraft|Core:stoneGearItem>;
val bcIronGear = <BuildCraft|Core:ironGearItem>;
val bcWrench = <BuildCraft|Core:wrenchItem>;
val bcStirling = <BuildCraft|Energy:engineBlock:1>;
val chute = <BuildCraft|Factory:blockHopper>;
val metalInfuser = <foundry:foundryMachine:3>;
val refractoryCasing = <foundry:refractoryCasing>;
val heatingCoil = <foundry:foundryComponent:1>;
val alloyMixer = <foundry:foundryMachine:2>;
val materialRouter = <foundry:foundryMachine:4>;
val forBronzeGear = <Forestry:gearBronze>;
val forCopperGear = <Forestry:gearCopper>;
val forTinGear = <Forestry:gearTin>;
val logisticsCrafting = <LogisticsPipes:logisticsSolidBlock:3>;
val logisticsCPipe = <LogisticsPipes:item.PipeItemsCraftingLogistics>;
val logisticsBasic = <LogisticsPipes:item.PipeItemsBasicLogistics>;

#Vanilla
val ironIngot = <minecraft:iron_ingot>;
val piston = <minecraft:piston>;
val chest = <minecraft:chest>;
val redstone = <minecraft:redstone>;
val diamond = <minecraft:diamond>;
val comparator = <minecraft:comparator>;
val craftingtable = <minecraft:crafting_table>;

#Ore Dictionary
val cobble = <ore:cobblestone>;
val glass = <ore:blockGlass>;
val ingotBronze = <ore:ingotBronze>;
val ingotCopper = <ore:ingotCopper>;
val ingotTin = <ore:ingotTin>;
val planks = <ore:plankWood>;

#Replace some recipes
recipes.remove(yetaWrench);
recipes.addShaped(yetaWrench,
 [[electricalSteel, null, electricalSteel],
  [null, bcStoneGear, null],
  [null, electricalSteel, null]]);
recipes.remove(bcWrench);
recipes.addShaped(bcWrench,
 [[ironIngot, null, ironIngot],
  [null, bcStoneGear, null],
  [null, ironIngot, null]]);
recipes.remove(bcIronGear);
recipes.addShaped(bcIronGear,
 [[null, ironIngot, null],
  [ironIngot, bcStoneGear, ironIngot],
  [null, ironIngot, null]]);
recipes.remove(bcStirling);
recipes.addShaped(bcStirling,
 [[cobble, cobble, cobble],
  [null, glass, null],
  [bcStoneGear, piston, bcStoneGear]]);
recipes.remove(chute);
recipes.addShaped(chute,
 [[ironIngot, chest, ironIngot],
  [ironIngot, bcStoneGear, ironIngot],
  [null, ironIngot, null]]);
recipes.remove(metalInfuser);
recipes.addShaped(metalInfuser,
 [[ironIngot, redstone, ironIngot],
  [bcStoneGear, refractoryCasing, bcStoneGear],
  [heatingCoil, redstone, heatingCoil]]);
recipes.remove(alloyMixer);
recipes.addShaped(alloyMixer,
 [[bcStoneGear, ironIngot, bcStoneGear],
  [bcStoneGear, refractoryCasing, bcStoneGear],
  [ironIngot, redstone, ironIngot]]);
recipes.remove(materialRouter);
recipes.addShaped(materialRouter,
 [[bcStoneGear, diamond, bcStoneGear],
  [redstone, refractoryCasing, redstone],
  [bcStoneGear, comparator, bcStoneGear]]);
recipes.remove(forBronzeGear);
recipes.addShaped(forBronzeGear,
 [[null, ingotBronze, null],
  [ingotBronze, bcStoneGear, ingotBronze],
  [null, ingotBronze, null]]);
recipes.remove(forCopperGear);
recipes.addShaped(forCopperGear,
 [[null, ingotCopper, null],
  [ingotCopper, bcStoneGear, ingotCopper],
  [null, ingotCopper, null]]);
recipes.remove(forTinGear);
recipes.addShaped(forTinGear,
 [[null, ingotTin, null],
  [ingotTin, bcStoneGear, ingotTin],
  [null, ingotTin, null]]);
recipes.remove(logisticsCrafting);
recipes.addShaped(logisticsCrafting,
 [[planks, craftingtable, planks],
  [null, bcStoneGear, null],
  [planks, chest, planks]]);
recipes.remove(logisticsCPipe);
recipes.addShaped(logisticsCPipe,
 [[redstone, null, null],
  [logisticsBasic, null, null],
  [bcStoneGear, null, null]]);

# Remove the items and hide them from NEI
recipes.remove(basicGear);
mods.nei.NEI.hide(basicGear);
recipes.remove(stirlingGenerator);
mods.nei.NEI.hide(stirlingGenerator);
recipes.remove(combustionGenerator);
mods.nei.NEI.hide(combustionGenerator);
recipes.remove(sagMill);
mods.nei.NEI.hide(sagMill);
recipes.remove(alloySmelter);
mods.nei.NEI.hide(alloySmelter);
recipes.remove(farmingStation);
mods.nei.NEI.hide(farmingStation);
recipes.remove(fluidTank);
mods.nei.NEI.hide(fluidTank);
recipes.remove(pressurizedFluidTank);
mods.nei.NEI.hide(pressurizedFluidTank);
