#include <iostream>
#include <vector>


void initialization(int capacity, std::vector<double>& array) {
    double num;

    for (int i = 0; i < capacity; i++) {
        std::cin >> num;
        array.push_back(num);

    }


}

int average(std::vector<double> array) {
    int num = 0;


    for (int i : array)
        num += i;
    return num / array.size();

}

int main()
{
    setlocale(LC_ALL, "Russian");
    int capacity;
    std::vector<double> array;
    std::cout << "Укажите размерность динамического массива: ";
    std::cin >> capacity;
    initialization(capacity,array);
    std::cout << "Среднее значение = " << average(array);
}




