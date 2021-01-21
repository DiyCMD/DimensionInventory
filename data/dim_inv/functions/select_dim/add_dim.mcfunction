#> dim_inv:select_dim/add_dim
#
# 新しく入ったディメンションを追加する
#
# @within function
#   dim_inv:select_dim/search
#   dim_inv:select_dim/

# 追加
    function save_inv:lib/add_inv
# メモされたディメンション名を追加されたインベントリにコピー
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].save_inv[0].Dimension set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].dim_inv.Dimension