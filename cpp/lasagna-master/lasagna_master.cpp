#include "lasagna_master.h"

namespace lasagna_master {
    int preparationTime(const vector<string> &layers, int average) {
        return layers.size() * average;
    }

    amount quantities(vector<string> layers) {
        amount needed{0, 0.0};
        for (const auto &layer: layers) {
            if (layer == "sauce") needed.sauce += 0.2;
            else if (layer == "noodles") needed.noodles += 50;
        }
        return needed;
    }

    void addSecretIngredient(vector<string> &myList, const vector<string> &myFriendList) {
        myList.back() = myFriendList.back();
    }

    void addSecretIngredient(vector<string> &myList, const string &secretIngredient) {
        myList.back() = secretIngredient;
    }

    vector<double> scaleRecipe(const vector<double> &quant, int numPortions) {
        vector<double> scaleRecipe(quant.size());
        for (int i = 0; i < static_cast<int>(scaleRecipe.size()); ++i) { scaleRecipe[i] = quant[i] * numPortions / 2; }
        return scaleRecipe;
    }
}
