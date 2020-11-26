#include <stdio.h>
#include <iostream>
#include <chrono>
#include <iomanip>

#include "mysqrt.h"
#include "fcontrol.h"
#include "Cia402device.h"

using namespace std;

int main(int argc, char* argv[])
{

    //m1 setup
        SocketCanPort pm31("can1");
        CiA402SetupData sd31(2048,24,0.001, 0.144, 20);
        CiA402Device m1 (1, &pm31, &sd31);
        m1.Reset();
        m1.SwitchOn();
      //  m1.SetupPositionMode(5);
        //m1.Setup_Velocity_Mode(5);
        m1.Setup_Torque_Mode();


        chrono::system_clock::time_point start = std::chrono::system_clock::now();

        for(int i=0;i<1000;i++){

           // cout << "Prueba: " << i << endl;
            m1.GetTorque();

        }

        chrono::system_clock::time_point finish = std::chrono::system_clock::now();


        chrono::nanoseconds elapsedNanoseconds = finish.time_since_epoch() - start.time_since_epoch();

        double tiempo1bucle = elapsedNanoseconds.count()/1000;
        double tiempototal = elapsedNanoseconds.count();

        cout << "Tiempo 1 bucle ms: " << (tiempo1bucle/1000000) << endl;
        cout << "Tiempo total: ms " << (tiempototal/1000000) << endl;

}
