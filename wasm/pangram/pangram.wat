(module
  (import "console" "log_mem_as_utf8" (func $log_mem_as_utf8 (param $byteOffset i32) (param $length 
    i32)))  (import "console" "log_i32_u" (func $log_i32_u (param i32)))
  (memory (export "mem") 1)
  (data (i32.const 320) "abcdefghijklmnopqrstuvwxyz")

  (func (export "isPangram") (param $offset i32) (param $length i32) (result i32)
    (local $i i32)(local $j i32)
    (loop $pangram
      (local.set $j (i32.const 0))
      (loop $alphabet (i32.lt_u(local.get $j)(i32.const 26))
        (if (i32.eq
          (call $lower (i32.load8_u(i32.add(local.get $offset)(local.get $i))))
          (i32.load8_u(i32.add(i32.const 320)(local.get $j))))
          (then (i32.store8 (i32.add(i32.const 320)(local.get $j))(i32.const 0)))
        )
        (local.set $j (i32.add(local.get $j)(i32.const 1)))
        (br_if $alphabet)
      )
      (local.set $i (i32.add(local.get $i)(i32.const 1)))
      (br_if $pangram (i32.lt_u(local.get $i)(local.get $length)))
    )
    (local.set $j (i32.const 0))
    (loop $alphabet
      (if (i32.load8_u(i32.add(i32.const 320)(local.get $j)))
        (then (return (i32.const 0))))
      (local.set $j (i32.add(local.get $j)(i32.const 1)))
      (br_if $alphabet (i32.lt_u(local.get $j)(i32.const 26)))
    )
    (return (i32.const 1))
  )
  (func $lower (param i32)(result i32)
    (select (local.get 0)(i32.add(local.get 0)(i32.const 0x20))(i32.gt_u(local.get 0)(i32.const 0x5A)))
  )
)

