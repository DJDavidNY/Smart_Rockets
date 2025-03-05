class Population {
  Rocket[] rockets;
  int popSize;
  ArrayList<Rocket> matingpool;

  Population() { 
    popSize = 200;
    rockets = new Rocket[popSize];
    for (int i = 0; i<popSize; i++) {
      rockets[i] = new Rocket();
    }

    matingpool = new ArrayList<Rocket>();
  }

  void run() {
    for (int i = 0; i<popSize; i++) {
      rockets[i].update();
      rockets[i].show();
    }
  }

  void evaluate() {
    maxFit = 0.0001;
    for (int i = 0; i<popSize; i++) {
      rockets[i].calcFitness();
      if (rockets[i].fitness > maxFit) maxFit = rockets[i].fitness;
    }

    for (int i = 0; i<popSize; i++) {
      rockets[i].fitness /= maxFit;
    }

    matingpool.clear();

    for (int i = 0; i<popSize; i++) {
      float n = rockets[i].fitness * 100;
      for (int j = 0; j<n; j++) {
        matingpool.add(rockets[i]);
      }
    }
  }

  void selection() {
    Rocket[] newRockets = new Rocket[popSize];
    for (int i = 0; i<popSize; i++) {
      int indexA = int(random(matingpool.size()));
      int indexB = int(random(matingpool.size()));
      DNA parentA = matingpool.get(indexA).dna;
      DNA parentB = matingpool.get(indexB).dna;
      DNA child = parentA.crossover(parentB);
      child.mutation();

      newRockets[i] = new Rocket();
      newRockets[i].dna = child;
    }

    rockets = newRockets;
  }
}
