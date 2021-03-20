pub mod graph {
    use std::collections::HashMap;

    use crate::graph::graph_items::edge::Edge;
    use crate::graph::graph_items::node::Node;

    pub trait Common {
        fn get_attrs(&self, p0: &[(&str, &str)]) -> HashMap<String, String> {
            let mut map = HashMap::new();

            for (k, v) in p0.iter() {
                map.insert(k.to_string(), v.to_string());
            }

            map
        }
    }

    #[derive(Clone, Eq, PartialEq, Debug)]
    pub struct Graph {
        pub nodes: Vec<Node>,
        pub edges: Vec<Edge>,
        pub attrs: HashMap<String, String>,
    }

    impl Graph {
        pub fn get_node(&self, p0: &str) -> Option<Node> {
            for n in &self.nodes {
                if n.text == p0 {
                    return Option::from(n.to_owned());
                }
            }

            None
        }

        pub fn with_edges(&self, p0: &Vec<Edge>) -> Self {
            let mut node = (*self).clone();

            node.edges = (*p0).clone();

            node
        }
    }

    impl Common for Graph {}

    impl Graph {
        pub fn with_attrs(&self, p0: &[(&str, &str)]) -> Self {
            let mut node = (*self).clone();

            node.attrs = self.get_attrs(p0);

            node
        }
        pub fn with_nodes(&mut self, p0: &Vec<Node>) -> Self {
            let mut n = self.clone();

            n.nodes = (*p0).to_vec();

            n
        }
    }

    impl Graph {
        pub fn new() -> Self {
            Graph {
                nodes: vec![],
                edges: vec![],
                attrs: HashMap::new(),
            }
        }
    }

    pub mod graph_items {
        pub mod edge {
            use std::collections::HashMap;

            use crate::graph::Common;

            #[derive(Clone, Eq, PartialEq, Debug)]
            pub struct Edge {
                pub left: String,
                pub right: String,
                pub attrs: HashMap<String, String>,
            }

            impl Common for Edge {}

            impl Edge {
                pub fn with_attrs(&self, p0: &[(&str, &str)]) -> Self {
                    let mut node = (*self).clone();

                    node.attrs = self.get_attrs(p0);

                    node
                }
                pub fn new(left: &str, right: &str) -> Self {
                    Edge {
                        left: left.to_string(),
                        right: right.to_string(),
                        attrs: HashMap::new(),
                    }
                }
            }
        }

        pub mod node {
            use std::collections::HashMap;

            use crate::graph::Common;

            #[derive(Clone, Eq, PartialEq, Debug)]
            pub struct Node {
                pub text: String,
                pub attrs: HashMap<String, String>,
            }

            impl Common for Node {}

            impl Node {
                pub fn get_attr(&self, p0: &str) -> Option<&str> {
                    for (k, v) in &self.attrs {
                        if k == p0 {
                            let val = v.as_str();
                            return Option::from(val);
                        }
                    }

                    None
                }

                pub fn with_attrs(&self, p0: &[(&str, &str)]) -> Self {
                    let mut node = (*self).clone();

                    node.attrs = self.get_attrs(p0);

                    node
                }
                pub fn new(ch: &str) -> Self {
                    Node {
                        text: ch.to_string(),
                        attrs: HashMap::new(),
                    }
                }
            }
        }
    }
}
