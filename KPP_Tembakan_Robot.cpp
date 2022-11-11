#include <bits/stdc++.h>
using namespace std;

#define GRAVITASI 10 //10 m/s^2
#define START_PENGUKURAN 1 //pengukuran dimulai dari 1 meter
#define SUDUT 45 //sudut elevasi tembakan

int mencari_xmax(float v, int xmax)
{
	xmax = (pow(v,2)*ceil(fabs(sin(2*SUDUT))))/(GRAVITASI);

  	return xmax;/* Tulis fungsi mencari v0 kalian disini */ 
}

float speed_dgn_loss(float v0)
{
	if (v0>00&&v0<=10)
		v0-=1;
	else if (v0<=20)
		v0-=3;
	else if (v0<=30)
		v0-=5;/* tulis fungsi hitung_loss kalian disini */
    return v0;
}

int main() {
    /* tulis kode utama kalian disini */
	int xmax, x;
	float v0, v, vt, sudut;
  	/* input adalah kecepatan tangensial maksimum roller */
  	/* std::cin >> input */
  	cin >> v0;
  	
  	sudut = sin(2*(SUDUT));
  	v = speed_dgn_loss(v0);
  	x = mencari_xmax(v, xmax);

	vt = sqrt((x*GRAVITASI)/ceil(fabs(sin(2*SUDUT))));
	if (v0>00&&v0<=10)
		vt+=1;
	else if (v0<=20)
		vt+=3;
	else if (v0<=30)
		vt+=5;  		
  	/* std::cout << jarak << " " << kecepatan tangensial << std::endl */
  	//cout << v << " " << sudut << "(" << ceil(fabs(2*SUDUT)) << ")" << endl;
  	
  	cout << x << " " << vt << endl;
    return 0;
}
