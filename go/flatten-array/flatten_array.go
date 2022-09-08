package flatten

func Flatten(obj interface{}) (r []interface{}) {
    r = []interface{}{}
	switch item := obj.(type) {
	case []interface{}:
		for _, val := range item {
			r = append(r, Flatten(val)...)
		}
	case interface{}:
		r = append(r, item)
	}
	return
}
