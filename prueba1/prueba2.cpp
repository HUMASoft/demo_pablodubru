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

   // m1 setup
        SocketCanPort pm31("can1");
        CiA402SetupData sd31(2048,24,0.001, 0.144, 20);
        CiA402Device m1 (1, &pm31, &sd31);
        m1.Reset();
        m1.SwitchOn();
        m1.SetupPositionMode(5);
        //m1.Setup_Velocity_Mode(5);
//        m1.Setup_Torque_Mode();

        //controllers
        double dts=0.01;
        PIDBlock pid(1,1,1,dts);
        FPDBlock fpd(1,1,0.99,dts);

        chrono::system_clock::time_point start = std::chrono::system_clock::now();


//        for(int i=0;i<1000;i++){

           // cout << "Prueba: " << i << endl;

<<<<<<< HEAD
            m1.GetPosition();

//            m1.SetTorque(0);
            //prueba cada una de estas funciones.

            //m1.GetVelocity();
            //pid.OutputUpdate(0.5);
            //fpd.OutputUpdate(0.5);
            //m1.SetVelocity(-0.5);


//        }

//        m1.SetVelocity(0);
=======
//            m1.GetPosition();

//            m1.SetTorque();
            //prueba cada una de estas funciones.
//          pid.OutputUpdate(0.5);
            fpd.OutputUpdate(0.5);

        }
>>>>>>> 6e7d8212752a59e7aa6d401666190aaf1a4fbcc0

        chrono::system_clock::time_point finish = std::chrono::system_clock::now();


        chrono::nanoseconds elapsedNanoseconds = finish.time_since_epoch() - start.time_since_epoch();

        double tiempo1bucle = elapsedNanoseconds.count()/1000;
        double tiempototal = elapsedNanoseconds.count();

        cout << "Tiempo 1 bucle ms: " << (tiempo1bucle/1000000) << endl;
        cout << "Tiempo total: ms " << (tiempototal/1000000) << endl;

}
