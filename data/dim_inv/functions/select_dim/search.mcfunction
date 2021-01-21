#> dim_inv:select_dim/search
#
# メモされてるディメンションを保存インベントリの中から探す
# 無かったら新しく追加する
#
# @within function dim_inv:select_dim/

# 保存しているインベントリ内にメモされたディメンションがあるか確認
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].save_inv[0].Dimension run function dim_inv:select_dim/check
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].save_inv[0].Dimension run function dim_inv:select_dim/search_next_dim
# 無かったら追加
    execute if score $AddDim DimensionInv matches 1 run function dim_inv:select_dim/add_dim
# リセット
    scoreboard players reset $AddDim DimensionInv