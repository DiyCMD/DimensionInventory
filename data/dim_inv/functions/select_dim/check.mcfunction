#> dim_inv:select_dim/check
#
# メモのディメンションと選択されてるインベントリのディメンションが同じか確認
#
# @within function
#   dim_inv:select_dim/search
#   dim_inv:select_dim/search_next_dim

# 回数
    execute if score $DimCount DimensionInv matches 1.. run scoreboard players remove $DimCount DimensionInv 1
# リストの最初とメモのディメンションが同じか確認(0で同じ)
    data modify storage dimension_inventory Dimensions_Esc set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].save_inv[0].Dimension
    execute store success score $AddDim DimensionInv run data modify storage dimension_inventory Dimensions_Esc set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].dim_inv.Dimension
    data remove storage dimension_inventory Dimensions_Esc
# 違ったら次を確認
    execute unless score $DimCount DimensionInv matches 0 if score $AddDim DimensionInv matches 1 run function dim_inv:select_dim/search_next_dim