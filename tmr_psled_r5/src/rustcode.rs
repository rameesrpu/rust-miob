
#![no_main]
#![no_std]

use core::panic::PanicInfo;


//Scheduler Variables
type systime_t = u32;
type task_entry_ptr = fn(u32)->u32;  //function pointer
const MAX_NUM_TASKS: usize = 5;


//Timer Variables
static TimerAddress:usize = 0xff140000 + 0x00000018; //Timer Address
static mut ptime: *const u32 = TimerAddress as *const u32;
static mut systime:u64=0;
static mut prevtime:u32=0;
static mut overflow:u32=0;


//Task Descriptor
struct task_desc {
    entry: task_entry_ptr,
    period: systime_t,
    last_run: systime_t,
    priority: u8,
}

impl task_desc {
    const fn new() -> task_desc {
        task_desc {entry:task0, period:1000, last_run:0, priority:3}
    }
}

impl Copy for task_desc {}

impl Clone for task_desc{
    fn clone(&self) -> task_desc {
        task_desc{entry: self.entry, period: self.period, last_run: self.last_run, priority: self.priority}
    }
}


//Scheduler Task table
static mut task_table:[task_desc; 5] = [task_desc::new(); 5];
static mut table_idx: usize = 0;

static mut task_table_p1:[task_desc; 5 ] = [task_desc::new(); 5];
static mut table_idx_p1: usize = 0;

static mut task_table_p2:[task_desc; 5 ] = [task_desc::new(); 5];
static mut table_idx_p2: usize = 0;

static mut task_table_p3:[task_desc; 5 ] = [task_desc::new(); 5];
static mut table_idx_p3: usize = 0;



//Task Definitions
fn task0(period:u32)-> u32{
    let mut start_time: systime_t;
    unsafe{
    start_time = systime_get();
    InTask(0,task_table[0].priority);
    while start_time + 2000 > systime_get() {}
        ExitingTask(0);
        
    }   
    return 0;
}

fn task1(period:u32)-> u32{
    let mut start_time: systime_t;
    unsafe{
    start_time = systime_get();
    InTask(1,task_table[1].priority);
    while start_time + 1500 > systime_get() {}
    ExitingTask(1);
    }
    return 0;
}
    
fn task2(period:u32)-> u32{
    let mut start_time: systime_t;
    unsafe{
    start_time = systime_get();
    InTask(2,task_table[2].priority);
    while start_time + 2000 > systime_get() {}
    ExitingTask(2);
    }
    return 0;
}

fn task3(period:u32)-> u32{
    let mut start_time: systime_t;
    unsafe{
    start_time = systime_get();
    InTask(3,task_table[3].priority);
    while start_time + 1000 > systime_get() {}
    ExitingTask(3);
    }
    return 0;
}

fn task4(period:u32)-> u32{
    let mut start_time: systime_t;
    unsafe{
    start_time = systime_get();
    InTask(3,task_table[4].priority);
    while start_time + 1500 > systime_get() {}
    ExitingTask(3);
    }
    return 0;
}
    

fn systime_get()->u32{
	systime_getR()
	}	

//Extern functions present in C
extern {
	
	fn fpgatimer1s(ledcount:i32) -> i32;
	fn printint(num: u32);
	//fn init_platform();
	//fn cleanup_platform();
	fn printu32(num: u32);
	fn printstr(ptr:&'static str);
	fn InTask(num: u32, priority: u8);
	fn ExitingTask(num:u32);
	fn TaskAdded(num: u32);
	}	
	
	
#[no_mangle]
#[panic_handler]
fn panic(_panic: &PanicInfo<'_>) -> ! {
    loop {} //Print panic message
}


/*fn call_printint(num:u32){
unsafe {
	printu32(num);
}
}*/

//fn to print strings
fn print(ptr: &'static str){
unsafe{
	printstr(ptr);
	}
}


// Function for adding tasks to the task table
fn sched_add_task(entry: task_entry_ptr, period: systime_t, priority:u8)->u8 {
    unsafe {
    if table_idx >= MAX_NUM_TASKS || table_idx_p1>= MAX_NUM_TASKS || table_idx_p2>= MAX_NUM_TASKS ||table_idx_p3>= MAX_NUM_TASKS {
    	print("table_idx:\n");
    	print("MAX_NUM_TASKS\n");
        print("sched_add_task- Task not added\r\n");
        return 1; //error -- too many tasks
    }
    
    let task : task_desc = task_desc { entry:entry, period:period, last_run:0, priority:priority};
    if priority ==1 {
    	task_table_p1[table_idx_p1] = task;
    	table_idx_p1+=1;
    	}
    else if priority ==2 {
    	task_table_p2[table_idx_p2] = task;
    	table_idx_p2+=1;
    	}
    else if priority ==3 {
    	task_table_p3[table_idx_p3] = task;
    	table_idx_p3+=1;
    	}
    else {
    }
    task_table[table_idx] = task;
    TaskAdded(table_idx as u32);
    table_idx+=1;
    }
    return 0 ;
}



// Scheduler function
fn sched_run()->() {
    unsafe {
    'check_task:loop {
	if table_idx_p1>=MAX_NUM_TASKS || table_idx_p2 >=MAX_NUM_TASKS || table_idx_p3 >=MAX_NUM_TASKS {
		return;
	}
        for i in 0..table_idx_p1 {
        	let task : *mut task_desc= &mut task_table_p1[i];
        	
        	if systime_get() - (*task).last_run >= (*task).period {
                (*task).last_run = systime_get();            
                ((*task).entry)((*task).period);
                continue 'check_task;
            	}
            }
            
        for i in 0..table_idx_p2 {
        	let task : *mut task_desc= &mut task_table_p2[i];
        	
        	if systime_get() - (*task).last_run >= (*task).period {
                (*task).last_run = systime_get();            
                ((*task).entry)((*task).period);
                continue 'check_task;
            	}
            }
            
        for i in 0..table_idx_p3 {
        	let task : *mut task_desc= &mut task_table_p3[i];
        	
        	if systime_get() - (*task).last_run >= (*task).period {
                (*task).last_run = systime_get();            
                ((*task).entry)((*task).period);
                continue 'check_task;
            	}
            }
        }
    }
}
       
fn systime_getR() -> u32{

	unsafe{
		if ptime.read_volatile() < prevtime {
		    overflow+=1;
		}
		prevtime=*ptime;
		systime=overflow as u64;
		systime <<=32;				//Shifted to obtain the previous time consumed
		systime = systime + (*ptime) as u64;   //Added with current value from the timer
		(systime/100000) as u32
	}
}
      
            

#[no_mangle]
pub extern "C" fn main() -> i32 {
	unsafe {  
		//1. FPGA Timer
		let status = fpgatimer1s(10);	//Usage of FPGA Timer; Uncomment for Demo	
		
		//2. Scheduler   
		sched_add_task(task0, 5000,1);
		sched_add_task(task1, 7000,1);
		sched_add_task(task2, 10000,2);
		sched_add_task(task3, 3000,3);
		sched_add_task(task4, 8000,3);
		printint(systime_getR());
		sched_run();
		
		
		
		
		}
	return 0;
    }
    

#[macro_export]
macro_rules! entry {
    ($path:path) => {
        #[export_name = "main"]
        pub unsafe fn __main() -> ! {
            // type check the given path
            let f: fn() -> ! = $path;
            f()
        }
    }
}





