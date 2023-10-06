import Foundation

// Definir uma constante chamada "constanteNome" com o valor "Steve"
let constanteNome = "Steve"

// Definir uma variável opcional do tipo String com valor inicial "Jobs"
var nome: String? = "Jobs"

// Fazer interpolação da constante e variável opcional
print("Nome completo: \(constanteNome) \(nome ?? "Wozniak")")

// Fazer um optional binding na variável
if let nomeDesembrulhado = nome {
    // Dentro da condição, fazer interpolação entre a constante e a variável desembrulhada
    print("Nome completo desembrulhado: \(constanteNome) \(nomeDesembrulhado)")
}
