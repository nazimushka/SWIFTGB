/*1. Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. 
Должностей пока может быть две: или кассир, или повар. Добавить в класс пиццерии массив с работниками*/

struct Worker {

let name: String 
let salary: Int 
let position: Position

  enum Position { 
    case cashier
    case cook
      
  } 
    
}


class Pizzeria {

var workers: [Worker]

 init() { 
 self.workers = []
     
 }

func hire( _ worker: Worker) { 
workers.append(worker) 
    }
}

let misha = Worker(name: "Misha", salary: 30000, position: .cashier) 
let sasha = Worker(name: "Sasha", salary: 35000, position: .cook)
let pizzeria = Pizzeria()

pizzeria.hire(misha) 
pizzeria.hire(sasha)

print(sasha)
print(misha)

/*2. Создать класс столика, в нем должны быть свойство, в котором содержится количество 
мест и функция,которая на вход принимает количество гостей, которое хотят посадить, 
а возвращает true, если места хватает и false,если места не хватает. Изначальное количество мест задается в инициализаторе*/

class Table {
let seats: Int

init(seats: Int) { 
 self.seats = seats
    
}

func seatGuests(_ numberOfGuests: Int) -> Bool { 
  if numberOfGuests <= seats { 
     return true 
      
  } else { 
     return false 
      
    }
  } 
}

let table = Table(seats: 4)

if table.seatGuests(2) { 
print("2 гостя уместятся за столом на 4 места") 

} 

/*Условие:
1. Создать структуру работника пиццерии. В ней должны быть такие свойства, 
как имя, зарплата и должность. Должностей пока может быть две: или кассир, 
или повар. Добавить в класс пиццерии массив с работниками
2. Создать класс столика, в нем должны быть свойство, в котором содержится 
количество мест и функция, которая на вход принимает количество гостей, 
которое хотят посадить, а возвращает true, если места хватает и false, 
если места не хватает. Изначальное количество мест задается в инициализаторе
3. Добавить в класс пиццерии свойство, в котором хранится массив столиков. 
У класса столика добавить свойство, в котором хранится пиццерия, в которой 
стоит столик. Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра
*/

struct Worker {

let name: String 
let salary: Int 
let position: Position

  enum Position { 
    case cashier
    case cook
      
  } 
    
}

class Pizzeria {
var workers: [Worker]
var tables: [Table]

init() { tables = [ Table(seats: 4, pizzeria: self), Table(seats: 6, pizzeria: self)]
    
}

 init() { 
 self.workers = []
     
 }

func hire( _ worker: Worker) { 
workers.append(worker) 
    }
}

class Table {
let seats: Int weak var pizzeria: Pizzeria?

init(seats: Int, pizzeria: Pizzeria) { 
  self.seats = seats 
  self.pizzeria = pizzeria
    
}


func seatGuests(_ numberOfGuests: Int) -> Bool { 
  if numberOfGuests <= seats { 
     return true  
  } else { 
     return false 
      
    }
  } 
}