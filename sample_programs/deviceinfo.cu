#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <iostream>
using namespace std;

int main(void)
{
  cudaDeviceProp prop;
  int count;
  cudaGetDeviceCount(&count);
  for(int i=0;i<count;i++){

    cudaGetDeviceProperties(&prop, i);
    cout<<"Device #"<<i<<"---------------"<<endl;
    cout<<"Name: "<<prop.name<<endl;
    cout<<"multiProcessorCount :"<<prop.multiProcessorCount<<endl;
    cout<<"max thread per bloack :"<<prop.maxThreadsPerBlock<<endl;
  }
return 0;
}