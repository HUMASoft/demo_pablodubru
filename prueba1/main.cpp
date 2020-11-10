#include <stdio.h>
#include <iostream>

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
        m1.SetupPositionMode(5);
//        m1.Setup_Velocity_Mode(5);


        //m2
        SocketCanPort pm2("can1");
        CiA402SetupData sd32(2048,24,0.001, 0.144, 20);
        CiA402Device m2 (2, &pm2, &sd32);
        m2.Reset();
        m2.SwitchOn();
        m2.SetupPositionMode(5);
//        m2.Setup_Velocity_Mode(5);

        //m3
        SocketCanPort pm3("can1");
        CiA402SetupData sd33(2048,24,0.001, 0.144, 20);
        CiA402Device m3 (3, &pm3, &sd33);
        m3.Reset();
        m3.SwitchOn();
        m3.SetupPositionMode(5);
//        m3.Setup_Velocity_Mode(5);


        m1.SetPosition(1);
        sleep(2);
        cout << m1.GetPosition() << endl;



}
