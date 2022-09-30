#include <bits/stdc++.h>
using namespace std;

int main()
{
    vector<char> symbol = {'Y', 'E', 'R', 'G', 'N', 'M', 'A', 'F', 'C'};
    vector<double> probability = {0.1, 0.2, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1};
    unordered_map<char, int> indx;
    vector<double> rangefrom = {0.0};
    vector<double> rangeto = {probability[0]};

    indx[symbol[0]] = 0;
    for (int i = 1; i < symbol.size(); i++)
    {
        indx[symbol[i]] = i;
        if (i > 0)
        {
            rangefrom.push_back(rangeto[i - 1]);
            rangeto.push_back(rangefrom[i] + probability[i]);
        }
    }

    string s;
    cout << "Enter the string: ";
    cin >> s;

    double LV_OLD = 0, HV = 1, DIFF = 1, LV;
    for (int i = 0; i < s.size(); i++)
    {
        LV = LV_OLD + DIFF * rangefrom[indx[s[i]]];
        HV = LV_OLD + DIFF * rangeto[indx[s[i]]];
        DIFF = HV - LV;
        LV_OLD = LV;
        cout << endl
             << s[i] << " -> " << LV << " " << HV << " " << DIFF << endl;
    }
    cout << "\nLV is:" << LV << endl;

    // Decoding Arithmetic code
    double code = LV;
    int i;
    int len = s.size();
    string res = "";
    while (len != 0)
    {
        for (i = 0; i < symbol.size(); i++)
        {
            if (rangeto[indx[symbol[i]]] > code && rangefrom[indx[symbol[i]]] <= code)
            {
                break;
            }
        }

        res += symbol[i];
        code = (code - rangefrom[indx[symbol[i]]]) / (rangeto[indx[symbol[i]]] - rangefrom[indx[symbol[i]]]);
        len--;
    }
    cout << "\nCode:" << res << endl
         << endl;
}
