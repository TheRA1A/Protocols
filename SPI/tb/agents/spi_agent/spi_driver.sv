class spi_driver extends uvm_driver #(spi_item);
  `uvm_component_utils(spi_driver)

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction
endclass
