#include <iostream>
using namespace std;

int main()
{
    int input_1,input_2;
    cin>>input_1>>input_2;
    for(int a=input_1;a<=input_2;a++)
    {
        for(int b=2;b<=input_2;b++)
        {
            if (a%b==0)
                {
                    if(a==b)
                    {
                        cout<<a<<" ";
                    }
                else
                {
                    break;
                }
                }
            else if (a==1)
            {
                break;
            }
            
        }
    }
}