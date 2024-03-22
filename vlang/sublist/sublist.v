module main
enum Relation {
	equal
	sublist
	superlist
	unequal
}

fn is_sublist(lstA []int, lstB []int) bool {
	return match true {
		lstB.len < lstA.len { false }
		lstA == lstB[0..lstA.len] { true }
		else { is_sublist(lstA, lstB[1..]) }
	}
}

fn compare(lstA []int, lstB []int) Relation {
	return match true {
		lstA == lstB { .equal }
		is_sublist(lstA, lstB) { .sublist }
		is_sublist(lstB, lstA) { .superlist }
		else { .unequal }
	}
}

