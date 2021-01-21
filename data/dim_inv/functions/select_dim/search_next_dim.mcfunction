#> dim_inv:select_dim/search_next_dim
#
# 次のディメンションに保存されたインベントリを探す
#
# @within function
#   dim_inv:select_dim/search
#   dim_inv:select_dim/check
#   dim_inv:select_dim/search_next_dim

# 次
    # 次のインベントリ
    function save_inv:lib/next
    # ディメンション用じゃなかったら次
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].save_inv[0].Dimension run function dim_inv:select_dim/search_next_dim
# あったら確かめる
    function dim_inv:select_dim/check