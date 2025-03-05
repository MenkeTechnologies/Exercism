#pragma once
#include <string>
#include <vector>

using namespace std;

namespace lasagna_master {
    struct amount {
        int noodles;
        double sauce;
    };
    int preparationTime(const vector<string>&, int = 2);
    amount quantities(vector<string>);
    void addSecretIngredient(vector<string>&,const vector<string>&);
    void addSecretIngredient(vector<string>&,const string&);
    vector<double> scaleRecipe(const vector<double>&, int);

} 
