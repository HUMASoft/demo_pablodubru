#include <stdio.h>
#include <iostream>
#include <chrono>
#include <iomanip>
#include <bits/stdc++.h>

#include "mysqrt.h"
#include "fcontrol.h"
#include "Cia402device.h"

using namespace std;

int main(int argc, char* argv[])
{

        SocketCanPort can("can1");
        uint32_t can_id;
        uint8_t data_ [8];
        uint8_t *data = data_;
        uint8_t size;

        can.GetMsg(can_id, data, size);

        cout<<"Cansend leido" << endl;

        vector<uint8_t> data_1={0x00};
        can.PutMsg(0x701, &data_1[0], 1);

}
