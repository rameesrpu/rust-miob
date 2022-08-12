#![no_std]

use core::fmt::Write;

extern {
	fn XCoresightPs_DccSendByte(BaseAddress: u32, Data: u8);
}

/*******************************Write variable into string*********************************/
#[derive(Debug)]
struct WriteBuf{
    data: [char; 64],
    count: usize
}

#[no_mangle]
impl Write for WriteBuf {
    fn write_str(&mut self, s: &str) -> core::fmt::Result {
        for c in s.chars() {
            self.data[self.count] = c; 
            self.count += 1;
            self.count %= self.data.len();
        }
        Ok(())
    }
}

/*************Write one byte at a time into XCoresightPs_DccSendByte() C function *********/
#[no_mangle]
unsafe fn print_rust(data: &[char;64], size: usize) {
	let mut datau8: u8;
	for count in 0..data.len(){
		datau8 = data[count] as u8;
		XCoresightPs_DccSendByte(0x1234,datau8); //the first arguement for baseAddress does not matter
	}
}

/* The above functions can be called inside the main function as shown in the example below */

/************************Main funciton*****************************************************/
/*#[no_mangle]
pub extern "C" fn main() -> i32 {
	unsafe {  
	init_platform();
	
    let mut buf = WriteBuf{data: ['\0'; 64], count: 0};
    let i = 6 * 5;
    write!(buf, "a number: {} and more", i );
	print_rust(&(buf.data),buf.count);
	
	cleanup_platform();
	}
	0
}*/