use std::sync::Mutex;

static COUNTER: Mutex<i32> = Mutex::new(0);

#[flutter_rust_bridge::frb(sync)]
pub fn increment_counter() -> i32 {
    let mut count = COUNTER.lock().unwrap();
    *count += 1;
    *count
}

#[flutter_rust_bridge::frb(sync)]
pub fn decrement_counter() -> i32 {
    let mut count = COUNTER.lock().unwrap();
    *count -= 1;
    *count
}

#[flutter_rust_bridge::frb(sync)]
pub fn get_counter() -> i32 {
    let count = COUNTER.lock().unwrap();
    *count
}
