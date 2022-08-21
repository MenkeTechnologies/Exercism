#include "grade_school.h"
#include <string.h>
#include <stdlib.h>

int cmpfunc(const void *a, const void *b) {
    return strcmp((char *) a, (char *) b);
}

void sort_students(roster_t *roster) {
    qsort(roster->students, roster->count, sizeof(student_t), cmpfunc);
}

void init_roster(roster_t *roster) {
    roster->count = 0;
}

bool add_student(roster_t *roster, char* name, uint8_t grade) {
    for (unsigned long i = 0; i < roster->count; ++i) {
        if (strcmp(roster->students[i].name, name) == 0) {
            return false;
        }
    }
    student_t new_student;
    new_student.grade = grade;
    strncpy(new_student.name, name, MAX_NAME_LENGTH - 1);
    roster->students[roster->count++] = new_student;
    sort_students(roster);
    return true;
}

roster_t get_grade(roster_t *roster, uint8_t grade) {
    roster_t sub_roster;
    init_roster(&sub_roster);
    for (unsigned long i = 0; i < roster->count; ++i) {
        if (roster->students[i].grade == grade) {
            add_student(&sub_roster, roster->students[i].name, grade);
        }
    }
    return sub_roster;
}
