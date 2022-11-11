    #include <iostream>
    #include <bits/stdc++.h>
    using namespace std;

    int main()
    {
        unsigned int a,b,c,p,q,r;
        cin>>a;
        cin>>b;
        cin>>c;
        cin>>p;
        cin>>q;
        cin>>r;

        if (a>0&&b>0&&c>0&&p>0&&q>0&&r>0)
        {
        cout<<endl;
        a *= p, p -= 1;
        b *= q, q -= 1;
        c *= r, r -= 1;

        cout << "Turunan = " << a;
        if (p == 1) cout << "x";
        else if (p == 0) cout<< 1;
        else cout << "x^" << p;
        cout << "+" << b;
        if (q == 1) cout << "x";
        else if (q == 0) cout<< 1;
        else cout << "x^" << q;
        cout << "+" << c;
        if (r == 1) cout << "x";
        else if (r == 0) cout<< 1;
        else cout << "x^" << r;
        }
    }
