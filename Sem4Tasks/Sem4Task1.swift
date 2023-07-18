/* 1. Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).
Создать структуру пиццы. Она должна содержать стоимость, вид пиццы, толстое 
или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). 
Вид пиццы должен быть вложенным типом для структуры пиццы.
Подсказка: добавки лучше также сделать перечислением.

Создать класс пиццерии, добавить массив с возможными видами пиццы. 
Переменная с массивом должна быть приватной. Массив задаётся в инициализаторе.
Написать в классе пиццерии функции для добавления нового вида пиццы и для 
получения всех доступных пицц.
Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.*/

import Foundation

struct Pizza {
   enum PizzaType: String {
        case margherita = "Margherita", napoletana = "Napoletana", calzone = "Calzone", fourcheese = "FourCheese"
       
   }
    var cost: Double = 300
    var name: PizzaType
    var thick: String = "Толстое"
    var thin: String = "Тонкое"
    
    enum Additive: String {
        case tomato = "Добавлен помидор", cheese = "Добавлен сыр", onion = "Добавлен лук"
    
    }
}

class Pizzeria {

    private var typesofpizza: [Pizza]
    
    init(typesofpizza: [Pizza]) { 
    }
       
    func addPizza (typesofpizza: Pizza) {
        self.typesofpizza.append(typesofpizza)
    }
    
    func printPizza() {
    }
}

let newPizza1 = Pizza(cost: 350, name: .margherita, thick: "Толстое")
let newPizza2 = Pizza(cost: 370, name: .calzone, thick: "Тонкое")

let Pizzer: Pizzeria = Pizzeria(typesofpizza: [newPizza1, newPizza2])
