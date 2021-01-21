#> dim_inv:select_dim/
#
# メモのディメンションのインベントリを選択する
# 無かったら作る
#
# @within function
#   dim_inv:change_dim
#   dim_inv:init

# 保存インベントリのディメンション数をメモ
    execute store result score $DimCount DimensionInv if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].save_inv[].Dimension
# 一つもなかったらインベントリを追加
    execute if score $DimCount DimensionInv matches 0 run function dim_inv:select_dim/add_dim
# 一つ以上保存されていたら、ループでメモされたディメンションがあるか確認
    execute unless score $DimCount DimensionInv matches 0 run function dim_inv:select_dim/search