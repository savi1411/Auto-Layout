//
//  CursosViewControllerNSLayoutConstraint.swift
//  Auto Layout
//
//  Created by Carlos A Savi on 02/08/17.
//  Copyright © 2017 Carlos A Savi. All rights reserved.
//

// Técnica 2: Definindo constraints programaticamente através da classe NSLayoutConstraints

import UIKit

// Recurso disponível a partir do iOS 9
@available(iOS 9.0, *)
class CursosViewControllerNSLayoutConstraint: UIViewController {

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
        labelAlura.text = "Auto Layout com NSLayoutConstraint"
        labelAlura.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    // Função para adiconar as constraints aos elementos visuais, de forma programada
    func adicionaConstraints() {
               
        // Vamos começar a inserir as constraints pelo StackView
        
        // O nosso objetivo é centralizar a Stack, horizontal e verticamente, ou seja, no centro da tela
        
        // Centraliza o Stack na horizontal
        let constraintStackCenterX = NSLayoutConstraint(
            item: stackView,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0.0
        )
        
        // Adiciona Constraint
        view.addConstraint(constraintStackCenterX)
        
        // Centraliza o Stack na vertical
        let constraintStackCenterY = NSLayoutConstraint(
            item: stackView,
            attribute: .centerY,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerY,
            multiplier: 1.0,
            constant: 0.0
        )
        
        // Adiciona Constraint
        view.addConstraint(constraintStackCenterY)
        
        // Quanto ao label, queremos colocá-lo na seguinte posição:
        //  1 - Centralizar horizontalmente (X)
        //  2 - Posicioná-lo a 25 pontos da margem inferior (bottom)
        
        // Primeiro centraliza na horizontal
        let constraintLabelCenterX = NSLayoutConstraint(
            item: labelAlura,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0.0
        )
        
        // Adiciona Constraint
        view.addConstraint(constraintLabelCenterX)
        
        // E agora coloca a 25 pontos da margem inferior
        let constraintLabelBottom = NSLayoutConstraint(
            item: bottomLayoutGuide,
            attribute: .top,
            relatedBy: .equal,
            toItem: labelAlura,
            attribute: .bottom,
            multiplier: 1.0,
            constant: 25.0
        )
        
        // Adiciona Constraint
        view.addConstraint(constraintLabelBottom)
        
    }

}
