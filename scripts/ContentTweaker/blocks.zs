#loader contenttweaker

import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.LocalizedNameSupplier;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

var sulfur_block = VanillaFactory.createBlock("sulfur_block", <blockmaterial:iron>);
sulfur_block.setBlockHardness(5.0);
sulfur_block.setBlockResistance(30.0);
sulfur_block.setToolClass("pickaxe");
sulfur_block.setToolLevel(0);
sulfur_block.setBlockSoundType(<soundtype:metal>);
sulfur_block.register();
