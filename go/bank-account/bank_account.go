package account

import "sync"

type Account struct {
	sync.RWMutex
	open   bool
	amount int64
}

func Open(initialDeposit int64) *Account {
	if initialDeposit < 0 {
		return nil
	}
	return &Account{open: true, amount: initialDeposit}
}
func (a *Account) Close() (int64, bool) {
	a.Lock()
	defer a.Unlock()
	if !a.open {
		return 0, false
	}
	a.open = false
	return a.amount, true
}
func (a *Account) Balance() (int64, bool) {
	a.RLock()
	defer a.RUnlock()
	if !a.open {
		return 0, false
	}
	return a.amount, true
}
func (a *Account) Deposit(amount int64) (int64, bool) {
	a.Lock()
	defer a.Unlock()
	if !a.open || a.amount+amount < 0 {
		return 0, false
	}
	a.amount += amount
	return a.amount, true
}
