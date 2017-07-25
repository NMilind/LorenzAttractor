#include "vertex3d.cpp"
#include "lorenz.h"

double lorenz::xprime(vertex3d vert) {

    return this->sigma * (vert.y - vert.x);
}
double lorenz::yprime(vertex3d vert) {

    return vert.x * (this->rho - vert.z) - vert.y;
}
double lorenz::zprime(vertex3d vert) {

    return vert.x * vert.y - this->beta * vert.z;
}

lorenz::lorenz() {

    this->sigma = 10;
    this->rho = 28;
    this->beta = 2.66;

    this->initX = 0.01;
    this->initY = 0.01;
    this->initZ = 0.01;

    this->initTime = 0.0;
    this->finalTime = 200.0;

    this->iters = 5000;
    this->curve = new vertex3d[5000];
}
lorenz::lorenz(double sigma, double rho, double beta, double initX, double initY, double initZ, double initTime, double finalTime, int iters) {

    this->sigma = sigma;
    this->rho = rho;
    this->beta = beta;

    this->initX = initX;
    this->initY = initY;
    this->initZ = initZ;

    this->initTime = initTime;
    this->finalTime = finalTime;

    this->iters = iters;
    this->curve = new vertex3d[iters];
}

void lorenz::simulate() {

    double h = (finalTime - initTime) / (double)iters;

    double prevT = initTime;
    double prevX = initX;
    double prevY = initY;
    double prevZ = initZ;

    for (int i = 0; i < iters; i++) {

        double k0 = h * xprime(vertex3d { prevX, prevY, prevZ });
        double l0 = h * yprime(vertex3d { prevX, prevY, prevZ });
        double m0 = h * zprime(vertex3d { prevX, prevY, prevZ });

        double k1 = h * xprime(vertex3d { prevX + 0.5*k0, prevY + 0.5*l0, prevZ + 0.5*m0 });
        double l1 = h * yprime(vertex3d { prevX + 0.5*k0, prevY + 0.5*l0, prevZ + 0.5*m0 });
        double m1 = h * zprime(vertex3d { prevX + 0.5*k0, prevY + 0.5*l0, prevZ + 0.5*m0 });

        double k2 = h * xprime(vertex3d { prevX + 0.5*k1, prevY + 0.5*l1, prevZ + 0.5*m1 });
        double l2 = h * yprime(vertex3d { prevX + 0.5*k1, prevY + 0.5*l1, prevZ + 0.5*m1 });
        double m2 = h * zprime(vertex3d { prevX + 0.5*k1, prevY + 0.5*l1, prevZ + 0.5*m1 });

        double k3 = h * xprime(vertex3d { prevX + k2, prevY + l2, prevZ + m2 });
        double l3 = h * yprime(vertex3d { prevX + k2, prevY + l2, prevZ + m2 });
        double m3 = h * zprime(vertex3d { prevX + k2, prevY + l2, prevZ + m2 });

        prevX = prevX + (1.0 / 6.0) * (k0 + 2 * k1 + 2 * k2 + k3);
        prevY = prevY + (1.0 / 6.0) * (l0 + 2 * l1 + 2 * l2 + l3);
        prevZ = prevZ + (1.0 / 6.0) * (m0 + 2 * m1 + 2 * m2 + m3);

        curve[i] = vertex3d { prevX, prevY, prevZ };
    }
}