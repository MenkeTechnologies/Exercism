#include "list_ops.h"
#include <memory.h>


list_t *new_list(size_t length, list_element_t elements[]) {
    list_t *dup = malloc(sizeof(list_t) + sizeof(list_element_t) * length);
    dup->length = length;
    memcpy(dup->elements, elements, length * sizeof(list_element_t));
    return dup;
}

list_t *append_list(list_t *list1, list_t *list2) {
    list_t *dup = malloc(
            sizeof(list_t) + sizeof(list_element_t) * list1->length + sizeof(list_element_t) * list2->length);
    dup->length = list1->length + list2->length;
    memcpy(dup->elements, list1->elements, sizeof(list_element_t) * list1->length);
    memcpy(dup->elements + list1->length, list2->elements, sizeof(list_element_t) * list2->length);
    return dup;
}

void delete_list(list_t *list) {
    free(list);
}

list_t *filter_list(list_t *list, bool(*filter)(list_element_t)) {
    list_element_t *filtered_List = malloc(sizeof(list_t) + sizeof(list_element_t) * list->length);
    int j = 0;
    for (size_t i = 0; i < list->length; ++i) {
        if (filter(list->elements[i])) {
            filtered_List[j++] = list->elements[i];
        }
    }
    return new_list(j, filtered_List);
}

size_t length_list(list_t *list) {
    return list->length;
}

list_t *map_list(list_t *list, list_element_t(*map)(list_element_t)) {
    list_element_t *mapped_List = malloc(sizeof(list_t) + sizeof(list_element_t) * list->length);
    int j = 0;
    for (size_t i = 0; i < list->length; ++i) {
        mapped_List[j++] = map(list->elements[i]);
    }
    return new_list(j, mapped_List);
}

list_element_t foldl_list(list_t *list, list_element_t initial, list_element_t(*foldl)(list_element_t, list_element_t)) {
    list_element_t acc = initial;
    for (size_t i = 0; i < list->length; ++i) {
        acc = foldl(list->elements[i], acc);
    }
    return acc;
}

list_element_t foldr_list(list_t *list, list_element_t initial, list_element_t(*foldr)(list_element_t, list_element_t)) {
    list_element_t acc = initial;
    for (int i = (int) list->length - 1; i >= 0; --i) {
        acc = foldr(list->elements[i], acc);
    }
    return acc;
}

list_t *reverse_list(list_t *list) {
    list_t *rvs = malloc(sizeof(list_t) + sizeof(list_element_t) * list->length);
    rvs->length = list->length;
    int j = 0;
    for (int i = (int) list->length - 1; i >= 0; --i) {
        rvs->elements[i] = list->elements[j++];
    }
    return rvs;
}
