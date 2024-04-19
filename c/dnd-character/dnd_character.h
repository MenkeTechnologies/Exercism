#pragma once

typedef struct {
    int strength;
    int dexterity;
    int constitution;
    int intelligence;
    int wisdom;
    int charisma;
    int hitpoints;
} dnd_character_t;

int ability();

int modifier(int score);

dnd_character_t make_dnd_character();
