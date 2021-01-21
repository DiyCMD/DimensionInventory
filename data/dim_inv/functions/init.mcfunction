#> dim_inv:init
#
# 最初にワールドに入った時に実行される処理
#
# @within advancement dim_inv:init

#> スコアとストレージ
# @internal
    scoreboard objectives add DimensionInv dummy
    #declare score_holder $DimCount
    #declare score_holder $AddDim
    #declare storage dimension_inventory

# 個別ストレージ
    function oh_my_dat:please
# 今いるディメンションをメモ
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].dim_inv.Dimension set from entity @s Dimension
# メモされているディメンションでインベントリを保存
    function dim_inv:select_dim/
    function save_inv:lib/save