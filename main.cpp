#include <GL/glut.h>
#include "cmath"

void init(){
    glClearColor(1.0,1.0,1.0,1.0);
    glScalef(0.5,1,1.0);
    gluOrtho2D(-5,20,-5,20);
}

void displayMe() {

    glClear(GL_COLOR_BUFFER_BIT);

    glLineWidth(2);
    glEnable(GL_POINT_SMOOTH);
    glHint(GL_POINT_SMOOTH_HINT, GL_NICEST);
    glPointSize(7);

    glBegin(GL_LINE_LOOP); //ExternalStructure
    glColor3f(0.0, 0.0, 1.0);
    glVertex2f(0.0, 5.0);
    glVertex2f(-1.0, 5.0);
    glVertex2f(-1.0, 7.0);
    glVertex2f(10.0, 7.0);
    glVertex2f(10.0, 5.0);
    glVertex2f(9.0, 5.0);
    glVertex2f(9.0, 0.0);
    glVertex2f(0.0, 0.0);
    glEnd();

    glBegin(GL_LINE_LOOP); //LeftWindow=
    glColor3f(0, 1, 0);
    glVertex2f(0.5, 2.0);
    glVertex2f(0.5, 4.0);
    glVertex2f(2.5, 4.0);
    glVertex2f(2.5, 2.0);
    glEnd();

    glBegin(GL_LINE_LOOP); //LeftWindow-Internal Vertical Line
    glColor3f(0.0, 0.0, 1.0);
    glVertex2f(1.5, 2.0);
    glVertex2f(1.5, 4.0);
    glEnd();

    glBegin(GL_LINE_LOOP); //LeftWindow - Internal Horizontal Line
    glColor3f(0.0, 0.0, 1.0);
    glVertex2f(0.5, 3.0);
    glVertex2f(2.5, 3.0);
    glEnd();

    glBegin(GL_LINE_LOOP); //RightWindow
    glColor3f(0.0, 1.0, 0.0);
    glVertex2f(6.5, 2.0);
    glVertex2f(6.5, 4.0);
    glVertex2f(8.5, 4.0);
    glVertex2f(8.5, 2.0);
    glEnd();

    glBegin(GL_LINE_LOOP); //RightWindow - Internal Vertical Line
    glColor3f(0.0, 0.0, 1.0);
    glVertex2f(7.5, 2.0);
    glVertex2f(7.5, 4.0);
    glEnd();

    glBegin(GL_LINE_LOOP); //RightWindow - Internal Horizontal Line
    glColor3f(0.0, 0.0, 1.0);
    glVertex2f(6.5, 3.0);
    glVertex2f(8.5, 3.0);
    glEnd();

    glBegin(GL_LINE_LOOP); //door
    glColor3f(0.0, 1.0, 0.0);
    glVertex2f(3.5, 0.0);
    glVertex2f(3.5, 4.0);
    glVertex2f(5.5, 4.0);
    glVertex2f(5.5, 0.0);
    glEnd();

    glBegin(GL_POINTS); //doorKnob
    glColor3f(0.0, 0.0, 1.0);
    glVertex2f(5.25, 2.0);
    glEnd();

    float PI = 3.142;
    float radius = 3.5;
    float twoPI = 2 * PI;
    glPointSize(2);
    glBegin(GL_POINTS); //Dome of the house
    glColor3f(0.0, 0.0, 1.0);
    for (double i = 0.0; i <= twoPI / 2; i += 0.001) {
        glVertex2d(4.5 + (cos(i) * radius), 7 + (sin(i) * radius));
    }
    glEnd();

    int i;
    int triangleAmount = 1000; //# of triangles used to draw circle
    GLdouble twicePi = 2.0 * PI;

    glBegin(GL_TRIANGLE_FAN); //circle to create a moon
    glColor3ub(228, 168, 0.0);
    glVertex2f(10.0, 15.0); // center of circle
    radius = 2.0;
    for (i = 0; i <= triangleAmount; i++) {
        glVertex2d(
                10.0 + (radius * -sin(i * twicePi / triangleAmount)),
                15.0 + (radius * -cos(i * twicePi / triangleAmount))
        );
    }
    glEnd();

    glBegin(GL_TRIANGLE_FAN); //dark circle overlapping the moon to make it a crescent
    glColor3f(1.0, 1.0, 1.0);
    glVertex2f(11.25, 15.75); // center of circle
    radius = 2.5;
    for (i = 0; i <= triangleAmount; i++) {
        glVertex2d(
                11.25 + (radius * -sin(i * twicePi / triangleAmount)),
                15.75 + (radius * -cos(i * twicePi / triangleAmount))
        );
    }
    glEnd();

    glFlush();
}



void reshape(int w, int h){

    glViewport(0,0,(GLsizei)w,(GLsizei)h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
}
int main(int argc, char** argv){
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutInitWindowSize(1366, 768);
    glutInitWindowPosition(100, 100);
    glutCreateWindow("2D House" );

    init();
    glutDisplayFunc(displayMe);
    glutReshapeFunc(reshape);
    glutMainLoop();
    return 0;
}