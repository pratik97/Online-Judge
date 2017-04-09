#include<iostream>
using namespace std;
int gcd(int a, int b)
{
    if (a == 0)
        return b;
    return gcd(b%a, a);
}ytfage6q76QF76
int main()
{
	int a,b,t;
	   cin>>a>>b;

	    cout<<gcd(a,b);


}
