#include <bits/stdc++.h>
using namespace std;

class HuffManTree
{
public:
    char code;
    int freq;
    string symbol;
    HuffManTree *left, *right;
    HuffManTree(string symbol, int freq, HuffManTree *left = NULL, HuffManTree *right = NULL)
    {
        this->symbol = symbol;
        this->freq = freq;
        this->left = left;
        this->right = right;
    }
};

struct CompareFrequency
{
    bool operator()(HuffManTree *&p1, HuffManTree *&p2)
    {
        // return "true" if "p1" is ordered
        // before "p2", for example:
        return p1->freq > p2->freq;
    }
};

void printHuffMan(HuffManTree *root, string codes = "")
{
    if (!root->left and !root->right)
    {
        codes.push_back(root->code);
        cout << root->symbol << " -> " << codes << endl;
        codes.pop_back();
        return;
    }
    codes.push_back(root->code);
    printHuffMan(root->left, codes);
    printHuffMan(root->right, codes);
    codes.pop_back();
}

int main()
{
    vector<char> symbols = {'A', 'B', 'C', 'D', 'E'};
    vector<int> frequency = {30, 30, 15, 15, 10};
    priority_queue<HuffManTree *, vector<HuffManTree *>, CompareFrequency> pq;

    for (int i = 0; i < symbols.size(); i++)
    {
        string tt = {symbols[i]};
        pq.push(new HuffManTree(tt, frequency[i]));
    }

    while (pq.size() > 1)
    {
        HuffManTree *temp1 = pq.top();
        pq.pop();
        temp1->code = '1';
        HuffManTree *temp2 = pq.top();
        pq.pop();
        temp2->code = '0';
        pq.push(new HuffManTree(temp1->symbol + temp2->symbol, temp1->freq + temp2->freq, temp1, temp2));
    }
    HuffManTree *root = pq.top();
    printHuffMan(root);
}