/* 1. Есть словарь с видами чая и их стоимостью. Есть очередь людей,
которые хотят заказать чай (можно представить её в виде массива видов чая, которые хотят заказать).
Необходимо последовательно выводить в консоль сколько заплатит
покупатель (необходимо вывести его номер по порядку, чай, который он заказал, и стоимость).*/

var dict: [String: Int] = ["Assam": 100, "ErlGrey": 50, "Sencha": 60, "Puer": 70]
var tea: [String] = ["Assam", "ErlGrey", "Sencha", "Puer"]

for (index, element) in tea.enumerated(){
    var a = 1
    print("Номер чая №: ", index+a, "; Чай: ", element, "; Цена: ", dict[tea[index]]! )
    a+=1
}
print("\n")

print("выберите номер чая от 1 до 4 (включительно): ", "\n")
var num: Int? = Int(readLine() ?? "0")
var num2 = num!
// var price = dict[tea[num2]]!
print("Вы выбрали №: ", num2, ", Чай: ", tea[num2-1], ", Цена: ", dict[tea[num2-1]]!)