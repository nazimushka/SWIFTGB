/*1.	Написать функцию, которая на вход принимает число: 
сумма, которую пользователь хочет положить на вклад, 
следующий аргумент это годовой  
процент, третий аргумент это срок Функция возвращает 
сколько денег получит пользователь по итогу*/

func profit (sum: Double, perc: Double, date: Double) -> Double {

   return  sum*(perc/date)
}

print(profit(sum: 50000, perc: 7, date: 30))