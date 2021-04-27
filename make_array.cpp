#include <iostream>
#include <fstream>
using namespace std;


int main()
{
	int sum;
	int i;
	int j;
	ofstream ofile;
	ofile.open("make_array.txt");
	for (i = 255; i >= 0; i--)
		for (j = 255; j >= 0; j--)
	{
		ofile << 'X' << i <<'_'<<j<< ' '<<'b'<<i<<' ' << "b_bar" << i << ' ' << "wl" << j << ' '<<"vdd gnd sram_cell"<<'\n';
	}
	ofile << '\n';

	/*
	for (sum = 255; sum >= 0; sum--)
	{
		ofile << "b" << sum << ' ';
	}
	ofile << '\n';

	for (sum = 255; sum >= 0; sum--)
	{
		ofile << "b_bar" << sum << ' ';
	}
	ofile << '\n';

	for (sum = 255; sum >= 0; sum--)
	{
		ofile << "wl" << sum << ' ';
	}
	ofile << '\n';
	*/
	ofile.close();
	return 0;
}
