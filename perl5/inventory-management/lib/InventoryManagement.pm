package InventoryManagement;

use v5.38;

sub create_inventory ($items) {
    add_items({}, $items)
}

sub add_items ($inventory, $items) {
    ++$inventory->{$_} for $items->@*;
    $inventory
}

sub remove_items ($inventory, $items) {
    map { --$inventory->{$_} if $inventory->{$_} } $items->@*;
    $inventory
}

sub delete_item ($inventory, $item) {
    delete $inventory->{$item};
    $inventory
}

