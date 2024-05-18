/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:   ram_wr_seq_lib.sv

Description 	: 	Write sequence library for RAM TB
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/

//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

 
  // Extend ram_wr_seq_lib from uvm_sequence_library parameterized by write_xtn 
	class ram_wr_seq_lib extends uvm_sequence_library #(write_xtn);  
	
  // Factory registration using `uvm_object_utils
//uvm_seq_lib_mode selection_mode;
	`uvm_object_utils(ram_wr_seq_lib)  
	`uvm_sequence_library_utils(ram_wr_seq_lib)
//------------------------------------------
// METHODS
//------------------------------------------

// Standard UVM Methods:
        extern function new(string name ="ram_wbase_seq");
	endclass
//-----------------  constructor new method  -------------------//
	function ram_wr_seq_lib::new(string name ="ram_wbase_seq");
		super.new(name);
		add_typewide_sequences({ram_rand_wr_xtns::get_type(),
		                      ram_single_addr_wr_xtns::get_type()});
		init_sequence_library();
	endfunction
	
	

