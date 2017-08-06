//
//  CursosViewControllerVFL.swift
//  Auto Layout
//
//  Created by Carlos A Savi on 02/08/17.
//  Copyright © 2017 Carlos A Savi. All rights reserved.
//

// Técnica 3: Definindo constraints programaticamente através da VFL - Visual Format Language

import UIKit

// Recurso disponível a partir do iOS 9
@available(iOS 9.0, *)
class CursosViewControllerVFL: UIViewController {
    
    // MARK: Propriedades

    // Define propriedades que seão utilizadas para definir os elementos visuais programaticamente
    
    // Teremos uma StackView com 3 imagens dentro
    //  E um label com a técnica que está sendo utilizada
    let imagemSwift = UIImageView()
    let imagemObjC = UIImageView()
    let imagemLayout = UIImageView()
    let stackView = UIStackView()
    let labelAlura = UILabel()
    
    // MARK: Estados da View
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Inicializa as propriedades dos elementos visuais
        inicializaPropriedades()
        
        // Monta o Stack View, com as 3 imagens em seu interior
        stackView.addArrangedSubview(imagemSwift)
        stackView.addArrangedSubview(imagemObjC)
        stackView.addArrangedSubview(imagemLayout)
        
        // Indica que as constraints serão definidas programaticamente
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        // Adiciona os elementos visuais à superview
        self.view.addSubview(stackView)
        self.view.addSubview(labelAlura)
        
        // Adiciona as constraints aos elementos visuais, de forma programada
        adicionaConstraints()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Funções de Apoio
    func inicializaPropriedades() {
        
        // Função para inicializar os elementos visuais indicar que as constraints serão definidas programaticamente
        
        // Imagem à esquerda do StackView
        imagemSwift.image = UIImage(named: "Swift.png")
        imagemSwift.translatesAutoresizingMaskIntoConstraints = false
        
        // Imagem ap centro do Stack View
        imagemObjC.image = UIImage(named: "Objective-C.png")
        imagemObjC.translatesAutoresizingMaskIntoConstraints = false
        
        // Imagem à direita do StackView
        imagemLayout.image = UIImage(named: "Layout.png")
        imagemLayout.translatesAutoresizingMaskIntoConstraints = false
        
        // A Stack que irá abraçar as imagens
        stackView.axis = UILayoutConstraintAxis.horizontal
        stackView.distribution = UIStackViewDistribution.equalSpacing
        stackView.alignment = UIStackViewAlignment.center
        stackView.spacing = 8.0
        
        // Agora o Label de Copyright da Alura
        labelAlura.font = UIFont.systemFont(ofSize: 17.0)
        //theLabel.textColor = UIColor(red: 76, green: 76, blue: 76, alpha: 1)
        labelAlura.text = "Auto Layout com VFL"
        labelAlura.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    // Função para adiconar as constraints aos elementos visuais, de forma programada
    func adicionaConstraints() {
        
        // Vamos começar a inserir as constraints pelo StackView
        
        // O nosso objetivo é centralizar a Stack, horizontal e verticamente, ou seja, no centro da tela
        
        // Cenraliza o Stack horizontalmente
        var constraints = NSLayoutConstraint.constraints(
            withVisualFormat: "V:[superview]-(<=1)-[stack]",
            options: NSLayoutFormatOptions.alignAllCenterX,
            metrics: nil,
            views: ["superview":view,"stack":stackView])
        
        // Cada constraint criada deve ser adicionada na View principal
        view.addConstraints(constraints)
        
        // Cenraliza o Stack verticalmente
        constraints = NSLayoutConstraint.constraints(
            withVisualFormat: "H:[superview]-(<=1)-[stack]",
            options: NSLayoutFormatOptions.alignAllCenterY,
            metrics: nil,
            views: ["superview":view, "stack":stackView])
        
        view.addConstraints(constraints)
        
        // Quanto ao label, queremos colocá-lo na seguinte posição:
        //  1 - Centralizar horizontalmente (X)
        //  2 - Posicioná-lo a 25 pontos da margem inferior (bottom)
        
        // O label tem que ser centralizado na vertical, em relação à superview
        constraints = NSLayoutConstraint.constraints(
            withVisualFormat: "V:[superview]-(<=1)-[label]",
            options: NSLayoutFormatOptions.alignAllCenterX,
            metrics: nil,
            views: ["superview":view,"label":labelAlura])
        
        view.addConstraints(constraints)
        
        // Posicionamento vertical em relação ao rodapé
        //  Como a VFL não considera a barra do tabbar, tivemos que especificar o valor de 75, e não 25 como estava especificado
        constraints = NSLayoutConstraint.constraints(withVisualFormat: "V:[label]-75-|", options: [], metrics: nil, views: ["label":labelAlura])
        view.addConstraints(constraints)
        
    }

}
