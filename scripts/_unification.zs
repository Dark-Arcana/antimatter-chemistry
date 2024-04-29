#priority 10

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.functions.toString;
import scripts.functions.getOreDict;
import scripts.functions.getItem;
import scripts.functions.getItemAny;
import scripts.functions.getItemMeta;
import scripts.functions.getItemString;
import scripts.functions.getArrayString;
import scripts.functions.getItemsFromMod;
import scripts.functions.getFluid;
import scripts.functions.getBucket;
import scripts.functions.getBucketDefault;
import scripts.functions.findFirstItemFromMod;

import mods.alchemistry.Dissolver;
import mods.industrialforegoing.FluidSievingMachine;
import mods.industrialforegoing.WashingFactory;
import mods.nuclearcraft.alloy_furnace;
import mods.nuclearcraft.infuser;
import mods.nuclearcraft.ingot_former;
import mods.nuclearcraft.manufactory;
import mods.nuclearcraft.melter;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.Transposer;

import scripts.functions.alch;
import scripts.functions.disable;

// Remove normal Concrete Recipes as they are the "Antimatter Blocks" in this Pack
for i in 0 .. 16 {
	var powder as IItemStack = <minecraft:concrete_powder>.definition.makeStack(i);
	var concrete as IItemStack = <minecraft:concrete>.definition.makeStack(i);

	Dissolver.removeRecipe(concrete);
	Transposer.removeFillRecipe(powder, <liquid:water>);
	Pulverizer.removeRecipe(concrete);
    infuser.removeRecipeWithOutput(concrete);

	disable(powder);
}

// Remove Draconium
furnace.remove(<ore:ingotDraconium>);
Pulverizer.removeRecipe(<draconicevolution:draconium_ore>);
manufactory.removeRecipeWithOutput([<draconicevolution:draconium_dust>*2]);
WashingFactory.remove("oreDraconium");
FluidSievingMachine.remove(<draconicevolution:draconium_dust>);

// Replace TiCo Cobalt with Alchemistry Cobalt
ingot_former.removeRecipeWithOutput([<tconstruct:ingots>]);
ingot_former.addRecipe([<liquid:cobalt>*144,<alchemistry:ingot:27>]);
alloy_furnace.addRecipe([<alchemistry:ingot:27>, <ore:ingotArdite>, <tconstruct:ingots:2>]);

recipes.remove(<tconstruct:ingots>); //cobalt
recipes.addShapeless(<alchemistry:ingot:27>*9, [<tconstruct:metal>]);
recipes.addShapeless(<alchemistry:ingot:27>,[<tconstruct:ore>,<thermalfoundation:material:1024>]);

// Allow Infinite Water Bucket in every Recipe
var inf_wb as IItemStack = <tp:infin_bucket>.reuse();
var wb as IItemStack = <minecraft:water_bucket>.giveBack(<minecraft:bucket>);

recipes.replaceAllOccurences(<minecraft:water_bucket>,inf_wb|wb);

// Fix wrong OreDict entries
<ore:logWood>.remove(<forbidden_arcanus:edelwood_log>);
<ore:dustCharcoal>.remove(<tp:tiny_charcoal>);
<ore:blockGlass>.remove(<atum:crystal_glass>);
<ore:cobblestone>.remove(<atum:limestone_cracked>);
<ore:logWood>.remove(<atum:palm_log>);
<ore:stone>.remove(<atum:limestone>);
<ore:dyeBlack>.add(<thermalfoundation:material:769>);
<ore:blockSulfur>.add(<contenttweaker:sulfur_block>);

<ore:matterPristine>.addItems([
	<deepmoblearning:pristine_matter_zombie>,
	<deepmoblearning:pristine_matter_skeleton>,
	<deepmoblearning:pristine_matter_creeper>,
	<deepmoblearning:pristine_matter_spider>,
	<deepmoblearning:pristine_matter_slime>,
	<deepmoblearning:pristine_matter_witch>,
	<deepmoblearning:pristine_matter_blaze>,
	<deepmoblearning:pristine_matter_ghast>,
	<deepmoblearning:pristine_matter_wither_skeleton>,
	<deepmoblearning:pristine_matter_enderman>,
	<deepmoblearning:pristine_matter_wither>,
	<deepmoblearning:pristine_matter_dragon>,
	<deepmoblearning:pristine_matter_shulker>,
	<deepmoblearning:pristine_matter_guardian>,
	<deepmoblearning:pristine_matter_thermal_elemental>,
	<deepmoblearning:pristine_matter_tinker_slime>
]);

// Add pink chemicals to Pink Generator
<ore:pink>.add(alch("methane"));
<ore:pink>.add(alch("magnesium oxide"));

// Remove unused Silicon
/*furnace.remove(<refinedstorage:silicon>); # Refined Storage was removed by v1.4.0 */
furnace.remove(<appliedenergistics2:material:5>);

// Convert Quartz to NC Quartz
furnace.addRecipe(<nuclearcraft:gem:6>,<minecraft:quartz>);
furnace.addRecipe(<nuclearcraft:gem:6>,<ore:dustQuartz>);
furnace.addRecipe(<nuclearcraft:gem:6>,<ore:dustCertusQuartz>);

// Allow Clathrates in NC Melter
melter.addRecipe([<thermalfoundation:material:895>, getFluid("ender") * 250, 0.125]);
melter.addRecipe([<thermalfoundation:material:893>, getFluid("redstone") * 250, 0.125]);
melter.addRecipe([<thermalfoundation:material:894>, getFluid("glowstone") * 250, 0.125]);
