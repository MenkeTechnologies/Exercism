use perfect_numbers::{classify, Classification};

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











    }
}
