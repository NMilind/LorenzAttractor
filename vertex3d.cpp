#ifndef LORENZATTRACTOR_VERTEX3F
#define LORENZATTRACTOR_VERTEX3F

struct vertex3d {

    double x;
    double y;
    double z;

    vertex3d scale(double scalar) { return vertex3d { this->x * scalar, this->y * scalar, this->z * scalar }; }
    vertex3d transform(vertex3d trans) { return vertex3d { this->x + trans.x, this->y + trans.y, this->z + trans.z }; }
};

#endif