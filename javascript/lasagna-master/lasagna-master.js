/// <reference path="./global.d.ts" />
// @ts-check

export const cookingStatus = (timer) =>
    timer === 0 ? 'Lasagna is done.' : timer && 'Not done, please wait.' || 'You forgot to set the timer.'

export const preparationTime = (layers, avgTime = 2) =>
    layers.length * avgTime


export const quantities = layers =>
    ({
        noodles: layers.filter(n => n === 'noodles').reduce((acc, _) => acc + 50, 0),
        sauce: layers.filter(n => n === 'sauce').reduce((acc, _) => acc + 0.2, 0),
    })

export const addSecretIngredient = (friendsList, myList) => {
    myList.push(friendsList.slice(-1)[0])
}


export const scaleRecipe = (recipe, portions) =>
    Object.keys(recipe).reduce((acc, n) => ({
        ...acc,
        [n]: recipe[n] * portions / 2
    }), {})