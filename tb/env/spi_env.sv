class spi_env extends uvm_env;
  `uvm_component_utils(spi_env)

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction
endclass
