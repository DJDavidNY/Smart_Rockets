class DNA {
  float[] xGenes;
  float[] yGenes;
  float mutationRate = 0.005;
  DNA() {
    xGenes = new float[lifespan];
    yGenes = new float[lifespan];
    for (int i = 0; i<lifespan; i++) {
      float theta = random(0, TWO_PI);
      float acc = 1;
      float accX = acc*sin(theta); 
      float accY = acc*cos(theta);
      xGenes[i] = accX*maxForce;
      yGenes[i] = accY*maxForce;
    }
  }


  void mutation() {
    for (int i = 0; i<lifespan; i++) {
      if (random(1) < mutationRate) {
        float theta = random(0, TWO_PI);
        float acc = 1;
        float accX = acc*sin(theta); 
        float accY = acc*cos(theta);
        xGenes[i] = accX*maxForce;
        yGenes[i] = accY*maxForce;
      }
    }
  }

  DNA crossover(DNA parent) {
    float[] newXGenes = new float[lifespan];
    float[] newYGenes = new float[lifespan];

    int mid = int(random(lifespan));
    for (int i = 0; i<lifespan; i++) {
      if (i>mid) {
        newXGenes[i] = xGenes[i];
        newYGenes[i] = yGenes[i];
      } else {
        newXGenes[i] = parent.xGenes[i];
        newYGenes[i] = parent.yGenes[i];
      }
    }
    DNA child = new DNA();
    child.xGenes = newXGenes;
    child.yGenes = newYGenes;

    return child;
  }
}
