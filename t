#include <iostream>
#include <vector>
#include "Header.h"

using namespace std;


//Лабораторная работа 2 на тему Динамические структуры данных(Динамические массивы)

int capacity_vec(vector<double> array) {

    return array.size();
}

double answer(vector<double> array) {
    double ans = 0;
    for (double i : array)
        if (i < 0)
            ans += i;
    return ans;
}




void fill(vector<double> &array, int capacity) {
    

    for (int i = 0; i < capacity; i++) {
        int number;
        cin >> number;
        if (number != 10)
            array.push_back(number);
        else
            break;
    }
   
}

    
int main()
{   
    setlocale(LC_ALL, "Russian");

    vector<double> array;

    int capacity;
    cout << "Укажите размерность массива: " << endl;

    cin >> capacity;

    fill(array, capacity);
    cout << "Размер массива = " << capacity_vec(array) << endl;
    cout << answer(array);
    
    

}
