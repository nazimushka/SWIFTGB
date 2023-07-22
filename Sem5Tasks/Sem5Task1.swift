import Foundation
/*1. В рамках прошлого дз был создан класс пицерии с переменной в которой хранится пицца, 
удалите ее. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, 
чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу и картошку фри.*/
/*2. Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню*/
/*3. Создайте протокол, в котором будут содержаться функции открытия и закрытия*/

struct MenuItem { 
   let cost: Double 
   let size: String 
    
}

struct FryPotato {
    let cost: Double
    let size: String 

   init(cost: Double, size: String) {
       self.cost = cost 
       self.size = size
   }
}

struct Pizza {
    let cost: Double
    let size: String 
    
    init(cost: Double, size: String) {
       self.cost = cost 
       self.size = size
   }

}

class Pizzeria { var order: FryPotato?

  func addFries(_ fries: FryPotato) {
      order = fries }   

  func addPizza (_ pizza: Pizza) {
    order = pizza }
  
  func addToMenu(item: MenuItem) { 
  menu.append(item) }
  
  private var menu = MenuItem
  
  func open() {
    print("Открыто!")   }

  func close()  {
   print("Закрыто!")  }
   
}

/*3. Создайте протокол, в котором будут содержаться функции открытия и закрытия*/
/*4. Написать расширения для класс пиццерии, в котором будет реализован протокол из пункта 3.*/

protocol RestaurantProtocol {
  func open()  
  func close()
    
}

extension Pizzeria: RestaurantProtocol { 
   func open() { .. }
   func close() { .. }
}

/*5. Написать функцию, в которой происходит вычитание одного числа из 
другого Функция должна работать с Int, и с Double. Функция должна возвращать результат вычитания*/

func subtract<T: Numeric>(_ a: T, _ b: T) -> T { 
  return a - b
}
