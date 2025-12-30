get_item = getindex
set_item!(stk, idx, card) = setindex!(stk, card, idx)
insert_item_at_top! = push!
insert_item_at_bottom! = pushfirst!
remove_item! = deleteat!
remove_item_from_top!(stk) = remove_item!(stk, length(stk))
remove_item_at_bottom!(stk) = remove_item!(stk, 1)
check_size_of_stack(stk, stack_size) = length(stk) == stack_size
