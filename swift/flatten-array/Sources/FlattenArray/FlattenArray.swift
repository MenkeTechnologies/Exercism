func flattenArray<T>(_ array: [Any?]) -> [T] {

    array.flatMap{($0 as? [Any]).map{flattenArray($0)} ?? [$0]}
    .filter{$0 as? T != nil}.map{$0 as! T}
}

