/*3. Создайте переменную “k”, равную 9. В диапазоне от 10 до 50, 
но только по нечётным числам, если текущее число плюс “k” — чётное, то увеличьте “k” на 2, 
в противном случае выведите в консоль “Next” и перейдите к следующей итерации.*/

var k: Int = 9

for num in 10...50{
    if (num%2 != 0){
        if (((num + k)%2)==0){
            k+=2
        } else {
            print("Next")
        }
    }
}
print(k)