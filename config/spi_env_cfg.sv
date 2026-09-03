class spi_env_cfg extends uvm_object;
  `uvm_object_utils(spi_env_cfg)

  bit cpol = 0;
  bit cpha = 0;
  int unsigned word_size = 8;

  function new(string name = "spi_env_cfg");
    super.new(name);
  endfunction
endclass
