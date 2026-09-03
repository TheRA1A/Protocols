class spi_agent extends uvm_agent;
  `uvm_component_utils(spi_agent)

  spi_driver drv_h;
  spi_monitor mon_h;
  spi_sequencer seqr_h;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction


endclass
