use perfect_numbers::Classification::*;
use perfect_numbers::*;

macro_rules! tests {
    ($property_test_func:ident {
        $( $(#[$attr:meta])* $test_name:ident( $( $param:expr ),* ); )+
    }) => {
        $(
            $(#[$attr])*
            #[test]
            fn $test_name() {
                $property_test_func($( $param ),* )
            }
        )+
    }
}

fn test_classification(num: u64, result: Classification) {
    assert_eq!(classify(num), Some(result));
}

#[test]
fn basic() {
    assert_eq!(classify(0), None);
}

tests! {
    test_classification {
         test_1(1, Deficient);
         test_2(2, Deficient);
         test_4(4, Deficient);
         test_6(6, Perfect);
         test_12(12, Abundant);
         test_28(28, Perfect);
         test_30(30, Abundant);
         test_32(32, Deficient);
         test_33550335(33_550_335, Abundant);
         test_33550336(33_550_336, Perfect);
         test_33550337(33_550_337, Deficient);
    }
}
