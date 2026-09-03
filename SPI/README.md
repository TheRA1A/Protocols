# SPI Verification IP

Starter SystemVerilog/UVM layout for an SPI verification IP.

## Layout

- `tb/agents/spi_agent`: reusable SPI agent components
- `tb/env`: environment, scoreboard, and coverage hooks
- `tb/interfaces`: SPI signal interface
- `tb/sequences`: reusable sequences
- `tb/tests`: base and directed tests
- `sim`: simulator file list and Make targets
- `config`: testbench configuration placeholders

Fill in protocol behavior and simulator-specific options before running.

See [the architecture diagram](docs/architecture.md) for the TX/RX, DUT, and
non-volatile-memory data paths.
