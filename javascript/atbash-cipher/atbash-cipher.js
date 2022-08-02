const a = 'a'.charCodeAt(0), z = 'z'.charCodeAt(0);

export const decode = (s) =>
	s.toLowerCase().replace(/[^a-z0-9]/g, '').replace(/[a-z]/g, (c) =>
		String.fromCharCode(z - c.charCodeAt(0) + a)
	);

export const encode = (s) => decode(s).replace(/.{5}(?=.)/g, '$& ')
