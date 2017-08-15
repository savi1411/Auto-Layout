//
//  Curso.swift
//  Auto Layout
//
//  Created by Carlos A Savi on 14/08/17.
//  Copyright © 2017 Carlos A Savi. All rights reserved.
//

import Foundation
import UIKit

// Modelo de Dados de Curso
class Curso: NSObject {
    
    //MARK: Propriedades
    var nome: String
    var descricao: String
    var logo: String
    var progresso: Int

    // MARK: Inicialização
    init(nome: String, descricao: String, logo: String, progresso: Int) {
        
        // Inicializa as propriedades armazenadas com os parâmetros passados
        self.nome = nome
        self.descricao = descricao
        self.logo = logo
        self.progresso = progresso
    }
    
}
