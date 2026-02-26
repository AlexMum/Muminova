#include <iostream>
#include <cmath>
using namespace std;

int main() {
    setlocale(LC_ALL, "Russian");
    double a, b, c, P, S, r;
    cout << "Введите сторону a: "; cin >> a;
    cout << "Введите сторону b: "; cin >> b;
    cout << "Введите сторону c: "; cin >> c;
    P = a + b + c;
    r = P / 2;
    S = sqrt(r * (r - a) * (r - b) * (r - c));
    cout << "Периметр P = " << P << endl;
    cout << "Площадь S = " << S << endl;
    system("pause");
    return 0;
}