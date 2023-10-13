import Foundation

// Definir um protocolo para veículos
protocol Vehicle {
    var brand: String { get }
    var model: String { get }
    
    func start()
    func stop()
}

// Implementar tipos que conformam ao protocolo Vehicle
struct Car: Vehicle {
    let brand: String
    let model: String
    
    func start() {
        print("\(brand) \(model) ligado.")
    }
    
    func stop() {
        print("\(brand) \(model) desligado.")
    }
}

struct Bicycle: Vehicle {
    let brand: String
    let model: String
    
    func start() {
        print("\(brand) \(model) em movimento.")
    }
    
    func stop() {
        print("\(brand) \(model) parado.")
    }
}

// Criar instâncias de veículos
let myCar = Car(brand: "Toyota", model: "Camry")
let myBicycle = Bicycle(brand: "Giant", model: "Defy")

// Realizar ações com os veículos
myCar.start()
myCar.stop()

myBicycle.start()
myBicycle.stop()

// Definir um protocolo para transporte
protocol Transport {
    var capacity: Int { get }
    
    func addVehicle(_ vehicle: Vehicle)
    func listVehicles()
}

// Implementar um tipo que conforma ao protocolo Transport
class TransportCenter: Transport {
    var vehicles: [Vehicle] = []
    let capacity: Int
    
    init(capacity: Int) {
        self.capacity = capacity
    }
    
    func addVehicle(_ vehicle: Vehicle) {
        if vehicles.count < capacity {
            vehicles.append(vehicle)
            print("Veículo adicionado ao centro de transporte.")
        } else {
            print("Centro de transporte lotado. Não é possível adicionar mais veículos.")
        }
    }
    
    func listVehicles() {
        print("Veículos no centro de transporte:")
        for vehicle in vehicles {
            print("\(vehicle.brand) \(vehicle.model)")
        }
    }
}

// Criar um centro de transporte com capacidade máxima de 2 veículos
let transportCenter = TransportCenter(capacity: 2)

// Adicionar veículos ao centro de transporte
transportCenter.addVehicle(myCar)
transportCenter.addVehicle(myBicycle)

// Listar veículos no centro de transporte
transportCenter.listVehicles()
