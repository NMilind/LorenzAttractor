#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include <allegro5/allegro.h>
#include <allegro5/allegro_color.h>
#include <allegro5/allegro_image.h>
#include <allegro5/allegro_primitives.h>

#include <OpenGL/gl.h>
#include <OpenGL/glu.h>

#include "lorenz.h"

const int FPS = 25;
const int WIDTH = 2500;
const int HEIGHT = 1406;

enum KEYS {
    KEY_ESCAPE,
    KEY_UP,
    KEY_DOWN,
    KEY_LEFT,
    KEY_RIGHT
};
bool key[5] = { false, false, false, false, false };
bool redraw = true;
bool doexit = false;

double rotX = 0;
double rotY = 0;
double rotZ = 0;

ALLEGRO_DISPLAY         *display = NULL;
ALLEGRO_EVENT_QUEUE     *event_queue = NULL;
ALLEGRO_TIMER           *timer = NULL;

lorenz attractor (10, 28, 2.66, 0.01, 0.01, 0.01, 0, 200, 50000);

ALLEGRO_COLOR lerp(double iter, double max) {

    double hue = 270 - ((iter / max) * 100);
    return al_color_hsv(hue, 1, 1);
}

bool initialize() {

    attractor.simulate();

    if (!al_init()) {
        fprintf(stderr, "Failed to initialize allegro!\n");
        return false;
    }

    if (!al_install_keyboard()) {
        fprintf(stderr, "Failed to initialized the keyboard!\n");
        return false;
    }

    timer = al_create_timer(1.0 / FPS);
    if (!timer) {
        fprintf(stderr, "Failed to create timer!\n");
        return false;
    }

    al_init_image_addon();
    al_init_primitives_addon();

    al_set_new_display_flags(ALLEGRO_OPENGL);
    display = al_create_display(WIDTH, HEIGHT);
    if (!display) {
        fprintf(stderr, "Failed to create display!\n");
        al_destroy_timer(timer);
        return false;
    }

    event_queue = al_create_event_queue();
    if (!event_queue) {
        fprintf(stderr, "Failed to create event queue!\n");
        al_destroy_display(display);
        al_destroy_timer(timer);
        return false;
    }

    al_register_event_source(event_queue, al_get_display_event_source(display));
    al_register_event_source(event_queue, al_get_timer_event_source(timer));
    al_register_event_source(event_queue, al_get_keyboard_event_source());

    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(-WIDTH / 3.0, 2.0 * WIDTH / 3.0, -HEIGHT / 3.0, 2.0 * HEIGHT / 3.0, 3000, -1000);
    glMatrixMode(GL_MODELVIEW);
    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);
    glDepthRange(2000, -2000);
    glShadeModel(GL_SMOOTH);

    return true;
}

void logic() {

    if (key[KEY_ESCAPE]) {
        doexit = true;
    }

    if (key[KEY_LEFT]) {
        rotX -= 0.1;
    }
    else if (key[KEY_RIGHT]) {
        rotX += 0.1;
    }
    else {
        rotX *= 0.95;
    }

    if (key[KEY_UP]) {
        rotY += 0.1;
    }
    else if (key[KEY_DOWN]) {
        rotY -= 0.1;
    }
    else {
        rotY *= 0.95;
    }

    redraw = true;
}

void draw() {

    glLineWidth(5);
    glColor3d(1, 1, 1);
    glBegin(GL_LINES);
    glVertex3d(-WIDTH / 2, 0, 0);
    glVertex3d(WIDTH / 2, 0, 0);
    glEnd();
    glBegin(GL_LINES);
    glVertex3d(0, -HEIGHT / 2, 0);
    glVertex3d(0, HEIGHT / 2, 0);
    glEnd();
    glBegin(GL_LINES);
    glVertex3d(0, 0, -2000);
    glVertex3d(0, 0, 2000);
    glEnd();

    glLineWidth(1);
    glBegin(GL_LINE_STRIP);

    for (int i = 0; i < attractor.getIters(); i++) {
        vertex3d transformed = attractor.getCurve()[i].scale(15);
        ALLEGRO_COLOR color = lerp(i, attractor.getIters());
        glColor3d(color.r, color.g, color.b);
        glVertex3d(transformed.x, transformed.y, transformed.z);
    }

    glEnd();

    glRotated(rotX, 1, 0, 0);
    glRotated(rotY, 0, 1, 0);
    glRotated(rotZ, 0, 0, 1);
}

int main(int argc, char **argv) {

    if (!initialize()) {
        return -1;
    }

    al_clear_to_color(al_map_rgb(0, 0, 0));
    al_flip_display();

    al_start_timer(timer);

    while (!doexit) {

        ALLEGRO_EVENT ev;
        al_wait_for_event(event_queue, &ev);

        if (ev.type == ALLEGRO_EVENT_TIMER) {
            logic();
        }
        else if (ev.type == ALLEGRO_EVENT_DISPLAY_CLOSE) {
            doexit = true;
        }
        else if (ev.type == ALLEGRO_EVENT_KEY_DOWN) {
            switch (ev.keyboard.keycode) {
                case ALLEGRO_KEY_ESCAPE:
                    key[KEY_ESCAPE] = true;
                    break;
                case ALLEGRO_KEY_UP:
                    key[KEY_UP] = true;
                    break;
                case ALLEGRO_KEY_DOWN:
                    key[KEY_DOWN] = true;
                    break;
                case ALLEGRO_KEY_LEFT:
                    key[KEY_LEFT] = true;
                    break;
                case ALLEGRO_KEY_RIGHT:
                    key[KEY_RIGHT] = true;
                    break;
            }
        }
        else if (ev.type == ALLEGRO_EVENT_KEY_UP) {
            switch (ev.keyboard.keycode) {
                case ALLEGRO_KEY_ESCAPE:
                    key[KEY_ESCAPE] = false;
                    break;
                case ALLEGRO_KEY_UP:
                    key[KEY_UP] = false;
                    break;
                case ALLEGRO_KEY_DOWN:
                    key[KEY_DOWN] = false;
                    break;
                case ALLEGRO_KEY_LEFT:
                    key[KEY_LEFT] = false;
                    break;
                case ALLEGRO_KEY_RIGHT:
                    key[KEY_RIGHT] = false;
                    break;
            }
        }

        if (redraw && al_is_event_queue_empty(event_queue)) {
            redraw = false;
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
            draw();
            al_flip_display();
        }
    }

    al_destroy_timer(timer);
    al_destroy_display(display);
    al_destroy_event_queue(event_queue);

    return 0;
}