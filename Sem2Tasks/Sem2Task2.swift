/*2.Создать перечисление, которое содержит 
3 вида пиццы и создать  переменные с каждым видом пиццы.
  3.Добавить возможность получения названия 
пиццы через  rawValue*/


enum PizzaType: String{
    case margherita = "Margherita"
    case napoletana = "Napoletana"
	case calzone = "Calzone"
}

func getName(pizza: PizzaType) -> String{

    return pizza.rawValue
}

print(getName(pizza: .calzone))
print(PizzaType.napoletana.rawValue)