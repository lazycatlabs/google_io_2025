#[flutter_rust_bridge::frb(sync)]
pub fn loop_numbers() -> i64 {
    let iterations = 1_000_000; // Number of loop iterations
    let mut total = 0;

    for i in 0..iterations {
        total += i;
    }

    total
}
