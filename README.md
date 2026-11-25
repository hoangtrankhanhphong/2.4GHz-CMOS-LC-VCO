# Design 2.4GHz Low-Power LC-VCO
Full flow design and layout of a 2.4 GHz Low-Power LC-VCO using CMOS technology
## Introduction
This project will implement an **LC-VCO**_(Inductor-Capacitor Voltage-Controlled Oscillator)_ in the Skywater SKY130B 130nm open-source CMOS PDK, using a fully open-source EDA flow. 
The objective is to design an oscillator circuit that meets the initial specifications. Subsequently, efforts will be made to upgrade the topologies to further improve and optimize those parameters.
### EDA tools used
1. xschem
2. ngspice
3. netgen
4. magic vlsi
## Design an LC-VCO
### Specifications
| Parameter | Target |
|---|---|
| Supply Voltage | 1.5 V |
| Power Consumption | ≤ 1.5 mW |
| Center Frequency | 2.45 GHz |
| Frequency Range | 2.35–2.55 GHz |
| Frequency Tuning Range | ≥ 8.16% |
| Control Voltage | 0.1–1.2 V |
| Average Kvco | 150–250 MHz/V |
| Phase Noise @ 1 MHz | ≤ -105 dBc/Hz |
| Startup Time | ≤ 50 ns |
| Figure of Merit | ≥ 172 dB |
| Output Load | 50 fF/node |
> These are the initial specifications set up for the design, prior to any improvements or optimizations.




