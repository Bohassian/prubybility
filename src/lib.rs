use num_bigint::ToBigUint;
use std::os::raw::c_char;
use std::ffi::CString;

#[no_mangle]
pub extern fn binom(n: u64, k: u64) -> *mut c_char {
    let mut res = 1.to_biguint().unwrap();
    for i in 0..k {
        res = (res * (n - i).to_biguint().unwrap()) /
              (i + 1).to_biguint().unwrap();
    }
    let c_string = CString::new(res.to_str_radix(10)).unwrap();

    let c_char = c_string.into_raw();

    return c_char;
}

#[no_mangle]
pub extern fn free_binom(c: *mut c_char) {
    unsafe {
        drop(CString::from_raw(c));
    }
}
