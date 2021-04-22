use std::collections::HashMap;
use std::hash::Hash;

#[derive(Debug, PartialEq)]
pub struct CustomSet<T>
where
    T: Eq + Hash + Copy,
{
    map: HashMap<T, ()>,
}

impl<T> CustomSet<T>
where
    T: Eq + Hash + Copy,
{
    pub fn new(_input: &[T]) -> Self {
        let mut s = CustomSet {
            map: HashMap::new(),
        };

        for i in _input {
            s.map.insert(*i, ());
        }

        s
    }

    pub fn contains(&self, _element: &T) -> bool {
        self.map.contains_key(_element)
    }

    pub fn add(&mut self, _element: T) {
        self.map.insert(_element, ());
    }

    pub fn is_subset(&self, _other: &Self) -> bool {
        self.map.keys().all(|k| _other.contains(k))
    }

    pub fn is_empty(&self) -> bool {
        self.map.is_empty()
    }

    pub fn is_disjoint(&self, _other: &Self) -> bool {
        self.map.keys().all(|k| !_other.contains(k)) && _other.map.keys().all(|k| !self.contains(k))
    }

    pub fn intersection(&self, _other: &Self) -> Self {
        let mut map = HashMap::new();
        self.map
            .keys()
            .filter(|k| _other.contains(k))
            .for_each(|k| {
                map.insert(*k, ());
            });

        Self { map }
    }

    pub fn difference(&self, _other: &Self) -> Self {
        let mut map = HashMap::new();
        self.map
            .keys()
            .filter(|k| !_other.contains(k))
            .for_each(|k| {
                map.insert(*k, ());
            });

        Self { map }
    }

    pub fn union(&self, _other: &Self) -> Self {
        let mut map = _other.map.clone();
        self.map.keys().for_each(|k| {
            map.insert(*k, ());
        });

        Self { map }
    }
}
