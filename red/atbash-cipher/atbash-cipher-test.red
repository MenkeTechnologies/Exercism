Red [
	description: {Tests for "Atbash Cipher" Exercism exercise}
	author: "loziniak"
]

#include %testlib.red

test-init/limit %atbash-cipher.red 1
; test-init/limit %.meta/example.red 1						; test example solution

canonical-cases: [#[
    description: "encode yes"
    input: #[
        phrase: "yes"
    ]
    expected: "bvh"
    function: "encode"
    uuid: "2f47ebe1-eab9-4d6b-b3c6-627562a31c77"
] #[
    description: "encode no"
    input: #[
        phrase: "no"
    ]
    expected: "ml"
    function: "encode"
    uuid: "b4ffe781-ea81-4b74-b268-cc58ba21c739"
] #[
    description: "encode OMG"
    input: #[
        phrase: "OMG"
    ]
    expected: "lnt"
    function: "encode"
    uuid: "10e48927-24ab-4c4d-9d3f-3067724ace00"
] #[
    description: "encode spaces"
    input: #[
        phrase: "O M G"
    ]
    expected: "lnt"
    function: "encode"
    uuid: "d59b8bc3-509a-4a9a-834c-6f501b98750b"
] #[
    description: "encode mindblowingly"
    input: #[
        phrase: "mindblowingly"
    ]
    expected: "nrmwy oldrm tob"
    function: "encode"
    uuid: "31d44b11-81b7-4a94-8b43-4af6a2449429"
] #[
    description: "encode numbers"
    input: #[
        phrase: "Testing,1 2 3, testing."
    ]
    expected: "gvhgr mt123 gvhgr mt"
    function: "encode"
    uuid: "d503361a-1433-48c0-aae0-d41b5baa33ff"
] #[
    description: "encode deep thought"
    input: #[
        phrase: "Truth is fiction."
    ]
    expected: "gifgs rhurx grlm"
    function: "encode"
    uuid: "79c8a2d5-0772-42d4-b41b-531d0b5da926"
] #[
    description: "encode all the letters"
    input: #[
        phrase: "The quick brown fox jumps over the lazy dog."
    ]
    expected: "gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt"
    function: "encode"
    uuid: "9ca13d23-d32a-4967-a1fd-6100b8742bab"
] #[
    description: "decode exercism"
    input: #[
        phrase: "vcvix rhn"
    ]
    expected: "exercism"
    function: "decode"
    uuid: "bb50e087-7fdf-48e7-9223-284fe7e69851"
] #[
    description: "decode a sentence"
    input: #[
        phrase: "zmlyh gzxov rhlug vmzhg vkkrm thglm v"
    ]
    expected: "anobstacleisoftenasteppingstone"
    function: "decode"
    uuid: "ac021097-cd5d-4717-8907-b0814b9e292c"
] #[
    description: "decode numbers"
    input: #[
        phrase: "gvhgr mt123 gvhgr mt"
    ]
    expected: "testing123testing"
    function: "decode"
    uuid: "18729de3-de74-49b8-b68c-025eaf77f851"
] #[
    description: "decode all the letters"
    input: #[
        phrase: "gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt"
    ]
    expected: "thequickbrownfoxjumpsoverthelazydog"
    function: "decode"
    uuid: "0f30325f-f53b-415d-ad3e-a7a4f63de034"
] #[
    description: "decode with too many spaces"
    input: #[
        phrase: "vc vix    r hn"
    ]
    expected: "exercism"
    function: "decode"
    uuid: "39640287-30c6-4c8c-9bac-9d613d1a5674"
] #[
    description: "decode with no spaces"
    input: #[
        phrase: "zmlyhgzxovrhlugvmzhgvkkrmthglmv"
    ]
    expected: "anobstacleisoftenasteppingstone"
    function: "decode"
    uuid: "b34edf13-34c0-49b5-aa21-0768928000d5"
]]


foreach c-case canonical-cases [
	case-code: reduce [
		'expect c-case/expected compose [
			(to word! c-case/function) (values-of c-case/input)
		]
	]

	test c-case/description case-code
]

test-results/print
