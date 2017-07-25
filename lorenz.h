#include "vertex3d.cpp"

#ifndef LORENZATTRACTOR_LORENZ_H
#define LORENZATTRACTOR_LORENZ_H

class lorenz {

private:
    double sigma;
    double rho;
    double beta;
    double initX;
    double initY;
    double initZ;
    double initTime;
    double finalTime;
    int iters;
    vertex3d *curve;
    double xprime(vertex3d vert);
    double yprime(vertex3d vert);
    double zprime(vertex3d vert);

public:
    lorenz();
    lorenz(double sigma, double rho, double beta, double initX, double initY, double initZ, double initTime, double finalTime, int iters);
    void simulate();
    int getIters() { return iters; }
    vertex3d * getCurve() { return curve; }
};

#endif
