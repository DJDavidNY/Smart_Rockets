# Smart Rockets: Evolutionary Path Finding Simulation

## Overview

Smart Rockets is an innovative visual simulation that demonstrates the power of genetic algorithms through an interactive journey of virtual rockets navigating to a target while avoiding obstacles. By leveraging evolutionary computation principles, the project showcases how artificial intelligence can adapt and optimize solutions in real-time.

## Key Features

- **Advanced Genetic Algorithm**
  Implements  evolutionary techniques including selection, crossover, and mutation to progressively improve rocket trajectories.

- **Dynamic Real-Time Visualization**
  Provides an engaging, live view of rocket movements, fitness evaluations, and  obstacle avoidance.

- **Comprehensive Performance Tracking**
  Displays metrics such as generation count, elapsed time, and performance indicators.

- **Modular, Maintainable Architecture**
  Utilizes a clean, object-oriented design with distinct classes for DNA, Rocket, and Population management.

## Rocket Evolution Process Explained

### 1. Initialization
- Generate a population of rockets with randomized genetic instructions
- Each rocket receives a unique set of "DNA" defining its potential trajectory

### 2. Simulation Dynamics
- Movement influenced by inherent genetic instructions

### 3. Fitness Evaluation
- Calculate rocket performance based on:
  * Proximity to target
  * Efficiency of path
  * Collision avoidance success

### 4. Genetic Reproduction
- Select high-performing rockets for breeding
- Apply crossover and mutation techniques
- Create new generation with improved navigation capabilities

### 5. Continuous Evolution
- Repeat process across multiple generations
- Observe emergent intelligent path-finding behavior

## Setup and Installation

### Prerequisites
- [Processing](https://processing.org/) development environment

### Installation Steps
1. Download Processing from [processing.org](https://processing.org/download/)
2. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/genetic-rockets.git
   ```
3. Open the project file in Processing
4. Click "Run" to launch the simulation

## Usage

- **Observe**: Watch rockets evolve and optimize their paths
- **Metric Analysis**: Monitor on-screen generation and performance data
- **Learning Opportunity**: Explore genetic algorithm principles through visual demonstration

## Future Enhancements

- [ ] Implement interactive UI for real-time parameter adjustments
- [ ] Develop comprehensive data logging for fitness metric tracking
- [ ] Create dynamic obstacle and target positioning systems
- [ ] Optimize genetic algorithm parameters for increased efficiency

## Project Credits

**Creator**: David Wexler
**Technologies**: Processing, Java
