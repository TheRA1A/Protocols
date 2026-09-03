# SPI Verification IP architecture

```mermaid
flowchart LR
  subgraph TB[UVM Testbench]
    TEST[Test / Sequences]
    ENV[SPI Environment]
    CFG[Environment Configuration<br/>CPOL, CPHA, word size]
    TXA[TX Agent<br/>sequencer + driver + monitor]
    RXA[RX Agent<br/>monitor]
    SB[Scoreboard / Reference Model]
    COV[Functional Coverage]

    TEST --> ENV
    CFG --> ENV
    ENV --> TXA
    ENV --> RXA
    TXA --> SB
    RXA --> SB
    TXA --> COV
    RXA --> COV
  end

  subgraph DUT[DUT: Non-Volatile Memory Controller]
    CTRL[Protocol / Command Controller]
    MIF[Non-Volatile Memory Interface]
    CTRL <--> MIF
  end

  NVM[(Non-Volatile Memory<br/>model or external device)]

  TXA -->|TX: command, address, write data| CTRL
  CTRL -->|RX: read data, status| RXA
  MIF <--> |memory bus / serial pins| NVM
  SB -. expected data / status .-> NVM
```

## Main data paths

- **TX** drives commands, addresses, and write data into the DUT.
- **RX** observes read data and status returned by the DUT.
- The DUT converts transactions into accesses on the non-volatile-memory interface.
- The scoreboard compares observed RX traffic with the reference memory model; coverage tracks protocol modes, commands, addresses, data, and error handling.
