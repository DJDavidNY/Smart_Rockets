class Rocket {
  float posX;
  float posY;
  float velX; 
  float velY;
  float accX;
  float accY;
  DNA dna;
  float fitness;
  boolean complete = false;
  int completeAt;
  boolean crashed = false;

  Rocket() {
    posX = width/2;
    posY = 3*height/4;
    velX = 0; 
    velY = 0;
    accX = 0;
    accY = 0;
    dna = new DNA();
    fitness = 0;
    completeAt = 0;
  }

  void applyForce(float forceX, float forceY) {
    accX += forceX;
    accY += forceY;
  }

  void update() {
    float d = dist(posX, posY, targetX, targetY);
    if (d<10) {
      complete = true;
      completeAt = count;
      posX = targetX;
      posY = targetY;
    }

    if (!complete && !crashed) {
      velX += accX;
      velY += accY;
      posX += velX;
      posY += velY;
    }
    accX = dna.xGenes[count];
    accY = dna.yGenes[count];

    if (posX>obstacleX && posX<obstacleX+obstacleWidth && posY>obstacleY && posY<obstacleY+obstacleHeight) {
      crashed = true;
    }
    if (posX>width || posX<0 || posY>height || posY<0) {
      crashed = true;
    }
  }

  void show() {
    pushMatrix();
    translate(posX, posY);
    if (velX != 0) {
      rotate(atan(velY/velX));
    }

    rectMode(CENTER);
    noStroke();
    fill(255, 50);
    rect(0, 0, 25, 5);
    popMatrix();
  }

  void calcFitness() {
    float d = dist(posX, posY, targetX, targetY);
    fitness = map(d, 0, width, width, 0);
    if (crashed) {
      fitness = 1;
    }

    if (complete) { 
      fitness+=pow(lifespan-completeAt, 2);
    }

    fitness = pow(fitness, 4);
  }
}
