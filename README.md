# ELAA Channel Generator

The ELAA Channel Generator is a MATLAB-based tool designed to simulate and visualize the channel state information for an Extended Large Array Antenna (ELAA) system.

## Features
- **Parameter Configuration**: Define system parameters such as the number of antennas, user terminals, and their properties.
- **Channel Generation**: Generate channel state information and the Line-of-Sight (LoS) state for each link.
- **Visualization**: Visualize the LoS state and Received Signal Strength (RSS).

## Getting Started

### Prerequisites
- MATLAB R2021a or later.

### Usage
1. Download both `Main.m` and `ELAA_Channel_Generator.p` files.
2. Place both files in the same directory.
3. Open `Main.m` in MATLAB.
4. Configure parameters in the "Parameter Configuration" section.
5. Run `Main.m`.
6. If `ifPlotFigure = 1`, observe the plotted figures.

## Parameters
- `LoS_State`: LoS condition for the channel.
- `Shadow`: Include shadowing effects (1) or not (0).
- `M`: Number of ELAA antennas.
- `N_ut`: Number of user terminals (UTs).
- `N_ue`: Antennas per UT.
- `rangeOfUT`: Max distance between UTs.
- `J`: Number of reference UTs (RUs).
- `d_perp`: Perpendicular distance from UT to ELAA.
- `d_los`: Correlation distance of LoS state.
- `d_sf`: Correlation distance of shadowing effects.

## Author
**Jiuyu Liu**
