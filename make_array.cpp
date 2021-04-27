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
/*
// make array for SRAM
	for (i = 255; i >= 0; i--)
		for (j = 255; j >= 0; j--)
	{
		ofile << 'X' << i <<'_'<<j<< ' '<<'b'<<i<<' ' << "b_bar" << i << ' ' << "wl" << j << ' '<<"vdd gnd sram_cell"<<'\n';
	}
	ofile << '\n';
	for (sum = 255; sum >= 0; sum--)
	{
		ofile << "C" << sum << ' '<< 'b' << sum << ' '<<"gnd 336fF" << '\n';
	}
	ofile << '\n';
	for (sum = 255; sum >= 0; sum--)
	{
		ofile << "C" << sum <<"_bar" <<' ' << "b_bar" << sum << ' ' << "gnd 336fF" << '\n';
	}
	ofile << '\n';
*/


//make array for outputs
	for (sum = 255; sum >= 0; sum--)
	{
		ofile << "out" << sum << ' ';
	}
	ofile << '\n';


//make array for sense amplifiers
	for (sum = 255; sum >= 0; sum--)
	{
		ofile << 'X' << sum << ' '<< 'b'<<sum<<' '<< "b_bar" << sum << ' ' << "out" << sum << ' ' << "SenseEnable vdd gnd SA"<<'\n';
	}
	ofile << '\n';

//make array for bitlines
	for (sum = 255; sum >= 0; sum--)
	{
		ofile << "b" << sum << ' ';
	}
	ofile << '\n';

//make array for bitline_bars
	for (sum = 255; sum >= 0; sum--)
	{
		ofile << "b_bar" << sum << ' ';
	}
	ofile << '\n';

//make array for wordlines
	for (sum = 255; sum >= 0; sum--)
	{
		ofile << "wl" << sum << ' ';
	}
	ofile << '\n';

	ofile.close();
	return 0;
}
