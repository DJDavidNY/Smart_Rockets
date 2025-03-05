Population pop;

int bestTime = 0;

int genBest;

int lifespan = 400;
int count = 0;
int gen = 1;

float targetX, targetY;
float maxFit;

float obstacleX;
float obstacleY;
float obstacleWidth;
float obstacleHeight;

float maxForce = 0.2;
void setup() {
  size(800, 600);
  bestTime = lifespan;
  genBest = lifespan;
  pop = new Population();
  targetX = width/2;
  targetY = 50;

  obstacleX = width/3;
  obstacleY = height/2;
  obstacleWidth = width/3;
  obstacleHeight = 10;
}

void draw() {
  background(0);
  pop.run();
  count++;

  if (count >= lifespan) {
    pop.evaluate();
    pop.selection();
    count = 0;
    gen++;
    genBest = lifespan;
  }

  fill(255);
  rectMode(CORNER);
  rect(obstacleX, obstacleY, obstacleWidth, obstacleHeight);

  ellipse(targetX, targetY, 16, 16);

  textAlign(LEFT, TOP);
  textSize(24);
  fill(255);
  text("Generation: " + gen, 0, 0);
  text("Time: " + count, 0, 24);

  for (int i = 0; i<pop.popSize; i++) {
    if (pop.rockets[i].completeAt < genBest && pop.rockets[i].completeAt != 0) 
      genBest = pop.rockets[i].completeAt;
  }
  if (genBest < 400) {
    text("Current Best: " + genBest, 0, 48);
  }

  for (int i = 0; i<pop.popSize; i++) {
    if (pop.rockets[i].completeAt < bestTime && pop.rockets[i].completeAt != 0) 
      bestTime = pop.rockets[i].completeAt;
  }
  if (bestTime < lifespan) {
    textAlign(LEFT, BOTTOM);
    text("Overall Best Time: " + bestTime, 0, height);
  }
}
