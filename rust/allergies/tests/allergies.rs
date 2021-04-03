use allergies::*;
use Allergen::*;

fn compare_allergy_vectors(expected: &[Allergen], actual: &[Allergen]) {
    for element in expected {
        if !actual.contains(element) {
            panic!(
                "Allergen missing\n  {:?} should be in {:?}",
                element, actual
            );
        }
    }

    if actual.len() != expected.len() {
        panic!(
            "Allergy vectors are of different lengths\n  expected {:?}\n  got {:?}",
            expected, actual
        );
    }
}

#[test]
fn is_not_allergic_to_anything() {
    let allergies = Allergies::new(0);
    assert!(!allergies.is_allergic_to(&Peanuts));
    assert!(!allergies.is_allergic_to(&Cats));
    assert!(!allergies.is_allergic_to(&Strawberries));
}

#[test]
#[ignore]
fn is_allergic_to_eggs() {
    assert!(Allergies::new(1).is_allergic_to(&Eggs));
}

#[test]
#[ignore]
fn is_allergic_to_egg_shellfish_and_strawberries() {
    let allergies = Allergies::new(5);
    assert!(allergies.is_allergic_to(&Eggs));
    assert!(allergies.is_allergic_to(&Shellfish));
    assert!(!allergies.is_allergic_to(&Strawberries));
}

#[test]
#[ignore]
fn no_allergies_at_all() {
    let expected = &[];
    let allergies = Allergies::new(0).allergies();

    compare_allergy_vectors(expected, &allergies);
}

#[test]
#[ignore]
fn allergic_to_just_eggs() {
    let expected = &[Eggs];
    let allergies = Allergies::new(1).allergies();

    compare_allergy_vectors(expected, &allergies);
}

#[test]
#[ignore]
fn allergic_to_just_peanuts() {
    let expected = &[Peanuts];
    let allergies = Allergies::new(2).allergies();

    compare_allergy_vectors(expected, &allergies);
}

#[test]
#[ignore]
fn allergic_to_just_strawberries() {
    let expected = &[Strawberries];
    let allergies = Allergies::new(8).allergies();

    compare_allergy_vectors(expected, &allergies);
}

#[test]
#[ignore]
fn allergic_to_eggs_and_peanuts() {
    let expected = &[Eggs, Peanuts];
    let allergies = Allergies::new(3).allergies();

    compare_allergy_vectors(expected, &allergies);
}

#[test]
#[ignore]
fn allergic_to_eggs_and_shellfish() {
    let expected = &[Eggs, Shellfish];

    let allergies = Allergies::new(5).allergies();

    compare_allergy_vectors(expected, &allergies);
}

#[test]
#[ignore]
fn allergic_to_many_things() {
    let expected = &[Strawberries, Tomatoes, Chocolate, Pollen, Cats];
    let allergies = Allergies::new(248).allergies();

    compare_allergy_vectors(expected, &allergies);
}

#[test]
#[ignore]
fn allergic_to_everything() {
    let expected = &[
        Eggs,
        Peanuts,
        Shellfish,
        Strawberries,
        Tomatoes,
        Chocolate,
        Pollen,
        Cats,
    ];
    let allergies = Allergies::new(255).allergies();

    compare_allergy_vectors(expected, &allergies);
}

#[test]
#[ignore]
fn scores_over_255_do_not_trigger_false_positives() {
    let expected = &[
        Eggs,
        Shellfish,
        Strawberries,
        Tomatoes,
        Chocolate,
        Pollen,
        Cats,
    ];
    let allergies = Allergies::new(509).allergies();

    compare_allergy_vectors(expected, &allergies);
}
