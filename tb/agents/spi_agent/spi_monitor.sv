class spi_monitor extends uvm_monitor;
  `uvm_component_utils(spi_monitor)

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction
endclass
