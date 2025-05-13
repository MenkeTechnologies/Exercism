#pragma once
namespace dnd_character {
    class Character {
    public:
        Character();

        int strength, dexterity, constitution, intelligence, wisdom, charisma, hitpoints;

    };
    int ability();

    int modifier(int);
} 
