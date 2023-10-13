import Foundation

// Definir uma estrutura para representar um produto eletrônico
struct ElectronicProduct {
    let name: String
    var price: Double
    var stock: Int
    
    // Método para realizar uma venda
    mutating func sell(quantity: Int) {
        if stock >= quantity {
            stock -= quantity
            print("\(quantity) \(name)(s) vendido(s) por \(price * Double(quantity))")
        } else {
            print("Estoque insuficiente para \(name)")
        }
    }
}

// Criar alguns produtos eletrônicos
var iPhone = ElectronicProduct(name: "iPhone", price: 799.99, stock: 10)
var MacBook = ElectronicProduct(name: "MacBook Pro", price: 1299.99, stock: 5)

// Vender alguns produtos
iPhone.sell(quantity: 3)
MacBook.sell(quantity: 2)
iPhone.sell(quantity: 8)

// Definir um enum para representar categorias de produtos
enum ProductCategory {
    case phones
    case laptops
}

// Criar uma função que filtra produtos por categoria
func filterProducts(products: [ElectronicProduct], category: ProductCategory) -> [ElectronicProduct] {
    return products.filter { product in
        switch category {
        case .phones:
            return product.name.contains("iPhone")
        case .laptops:
            return product.name.contains("MacBook")
        }
    }
}

let allProducts = [iPhone, MacBook]

// Filtrar produtos por categoria
let phones = filterProducts(products: allProducts, category: .phones)
let laptops = filterProducts(products: allProducts, category: .laptops)

// Exibir produtos por categoria
print("Produtos Eletrônicos:")
print("Telefones:")
for phone in phones {
    print("\(phone.name) - Preço: $\(phone.price) - Estoque: \(phone.stock)")
}
print("Laptops:")
for laptop in laptops {
    print("\(laptop.name) - Preço: $\(laptop.price) - Estoque: \(laptop.stock)")
}
