use unicode_segmentation::UnicodeSegmentation;

pub fn reverse(s: &str) -> String {
    s.graphemes(true).rev().collect()
}
