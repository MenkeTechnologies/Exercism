component {
	function add( birthdate ) {
		setTimezone("UTC");
		return dateTimeFormat(dateadd('s', 1e9, parseDateTime(birthdate)), "yyyy-MM-dd'T'HH:nn:ss");
	}
}
