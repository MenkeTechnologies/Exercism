oo::class create BankAccount {
    variable money
    variable opened 
    constructor {} {
        set money 0
        set opened false
    }
    method open {} {
        if {$opened == true} {error "account is already open"}
        set opened true
    }
    method close {} {
        if {!$opened} {error "account is not open"}
        set money 0
        set opened false
    }
    method balance {} {
        if {$opened == false} {error "account is not {
    variable head

    constructor {{values {}}} {
        throw {NOT_IMPLEMENTED} "Implement this class."
    }
}
