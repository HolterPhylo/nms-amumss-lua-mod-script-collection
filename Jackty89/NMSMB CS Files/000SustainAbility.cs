﻿//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class SustainAbility : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcRecipes();
		}

		//...........................................................

		protected void GcRecipes()
		{
			var mbin = ExtractMbin<GcRecipeTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN"
			);
			
			Tuple<string, string, int>[] newRecipes = new Tuple<string, string, int>[]{
				new ("REFINERECIPE_29", "LAND1", 2),				
				new ("REFINERECIPE_31", "LAND1", 4),
				new ("REFINERECIPE_61", "LAUNCHSUB", 5),
				new ("REFINERECIPE_62", "CATALYST1", 5),
				new ("REFINERECIPE_63", "OXYGEN", 5)
			};
			
			foreach(var newRecipe in newRecipes)
			{
				var recipe = mbin.Table.Find(RECIPE => RECIPE.Id == newRecipe.Item1);
				recipe.Ingredients[0].Id = newRecipe.Item2;
				recipe.Ingredients[0].Amount = newRecipe.Item3;
			}
			
		}
	}
}

//=============================================================================