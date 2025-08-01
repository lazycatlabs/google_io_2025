fn main() {
    #[cfg(target_os = "ios")]
    {
        println!("cargo:rustc-link-lib=framework=IOKit");
        println!("cargo:rustc-link-lib=framework=CoreFoundation");
        println!("cargo:rustc-link-lib=framework=Foundation");
    }
    #[cfg(target_os = "android")]
    println!("cargo:rustc-link-lib=c++_shared");
}
