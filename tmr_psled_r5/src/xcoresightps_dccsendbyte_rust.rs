#![no_std]

use core::arch::asm;

/************** Code for print function in rust *************/
//in the latest rust version, the asm! function uses volatile as default.
//so we don't have to explicitly mention volatile keyword like in c language.

/// Data Synchronization Barrier
///
/// Acts as a special kind of memory barrier. No instruction in program order after this
/// instruction can execute until this instruction completes. This instruction completes only when
/// both:
///
///  * any explicit memory access made before this instruction is complete
///  * all cache and branch predictor maintenance operations before this instruction complete
#[inline(always)]
pub fn _dsb() {
        unsafe {
            asm!("dsb");
            }
}

/// Instruction Synchronization Barrier
///
/// Flushes the pipeline in the processor, so that all instructions following the `ISB` are fetched
/// from cache or memory, after the instruction has been completed.
#[inline(always)]
pub fn _isb() {
        unsafe {
            asm!("isb");
            }
} 


// returns status register CP14 C1
#[no_mangle]
fn xcoresightps_dccgetstatus_rust() -> u32 {
	let mut status : u32 = 0;
	unsafe {
		asm!("mrc p14, 0, {0}, c0, c1, 0", out(reg) status);
	}
	return status;
}

/* Writes data into DTR*/
#[no_mangle]
fn xcoresightps_dccsendbyte_rust(data: u8){
	while (xcoresightps_dccgetstatus_rust() & (1<<29)) ==1 {
		_dsb();
		unsafe{asm!("nop");}
	}
	unsafe {
		asm!("mcr p14, 0, {0}, c0, c5, 0", in(reg) data);
	}
	_isb();
}