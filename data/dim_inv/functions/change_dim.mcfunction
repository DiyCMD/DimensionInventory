#> dim_inv:change_dim
#
# ディメンション移動した時に実行
#
# @within advancement dim_inv:change_dim

# 個別ストレージ
    function oh_my_dat:please

# メモされているディメンションにインベントリを保存
    function dim_inv:select_dim/
    function save_inv:lib/save
# 今いるディメンションをメモ
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].dim_inv.Dimension set from entity @s Dimension
# メモされているディメンションでインベントリを読み込み
    function dim_inv:select_dim/
    function save_inv:lib/load

# 実績を戻す
    advancement revoke @s only dim_inv:change_dim