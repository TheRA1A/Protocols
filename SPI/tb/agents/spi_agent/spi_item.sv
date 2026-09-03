class spi_item extends uvm_sequence_item;
  rand bit [7:0] mosi_data;
  rand bit [7:0] miso_data;

  `uvm_object_utils(spi_item)

  function new(string name = "spi_item");
    super.new(name);
  endfunction
endclass
