//
//  CursosViewControllerAnchor.swift
//  Auto Layout
//
//  Created by Carlos A Savi on 02/08/17.
//  Copyright © 2017 Carlos A Savi. All rights reserved.
//

// Técnica 1: Definindo constraints programaticamente através da classe NSLayoutAnchor

import UIKit

// Recurso disponível a partir do iOS 9
@available(iOS 9.0, *)
class CursosViewControllerAnchor: UIViewController {

    // MARK: Propriedades
    
    /*
     PROPRIEDADES DEFINIDAS NA FORMA TRADICIONAL
     Utilizar na 1ª parte do curso, deixando a forma de definição por closure mais para o final
     */
    
    // Define propriedades que seão utilizadas para definir os elementos visuais programaticamente
    
    // Teremos uma StackView com 3 imagens dentro
    //  E um label com a técnica que está sendo utilizada
    let imagemSwift = UIImageView()
    let imagemObjC = UIImageView()
    let imagemLayout = UIImageView()
    let stackView = UIStackView()
    let labelAlura = UILabel()
    
    /*
     PROPRIEDADES DEFINIDAS EM FORMA DE CLOSURE
     Manter comentado na 1ª parte do curso
     Utilizar mais para o final do curso, comentando a forma tradicional
     
     // Teremos uma StackView com 3 imagens dentro
     //  E um label com o copyright da Alura
     let swiftImageView: UIImageView = {
     let theImageView = UIImageView()
     theImageView.image = UIImage(named: "Swift.png")
     theImageView.translatesAutoresizingMaskIntoConstraints = false // Indicando que ela será inserida na view principal, programaticamente
     return theImageView
     }()
     
     // Imagem do centro - curso de Objective-C
     let objcImageView: UIImageView = {
     let theImageView = UIImageView()
     theImageView.image = UIImage(named: "Objective-C.png")
     theImageView.translatesAutoresizingMaskIntoConstraints = false // Indicando que ela será inserida na view principal, programaticamente
     return theImageView
     }()
     
     // Imagem da direita - curso de Auto Layout
     let layoutImageView: UIImageView = {
     let theImageView = UIImageView()
     theImageView.image = UIImage(named: "Layout.png")
     theImageView.translatesAutoresizingMaskIntoConstraints = false // Indicando que ela será inserida na view principal, programaticamente
     return theImageView
     }()
     
     // A Stack que irá abraçar as imagens
     let stackView: UIStackView = {
     let theStackView = UIStackView()
     theStackView.axis = UILayoutConstraintAxis.horizontal
     theStackView.distribution = UIStackViewDistribution.equalSpacing
     theStackView.alignment = UIStackViewAlignment.center
     theStackView.spacing = 8.0
     return theStackView
     }()
     
     // Agora o Label de Copyright da Alura
     let aluraLabel: UILabel = {
     let theLabel = UILabel()
     theLabel.font = UIFont.systemFont(ofSize: 17.0)
     //theLabel.textColor = UIColor(red: 76, green: 76, blue: 76, alpha: 1)
     theLabel.text = "Auto Layout com Layout Anchor"
     theLabel.translatesAutoresizingMaskIntoConstraints = false
     return theLabel
     }()
     */
    
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
        labelAlura.text = "Auto Layout com Layout Anchor"
        labelAlura.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    // Função para adiconar as constraints aos elementos visuais, de forma programada
    func adicionaConstraints() {
        
        // Vamos começar a inserir as constraints pelo StackView
        
        // O nosso objetivo é centralizar a Stack, horizontal e verticamente, ou seja, no centro da tela
        
        // Anchor horizontal
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // Anchor vertical
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // Quanto ao label, queremos colocá-lo na seguinte posição:
        //  1 - Centralizar horizontalmente (X)
        //  2 - Posicioná-lo a 25 pontos da margem inferior (bottom)
        
        // Anchor horizontal
        labelAlura.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // Anchor a 25 pontos do rodapé da tela
        bottomLayoutGuide.topAnchor.constraint(equalTo: labelAlura.bottomAnchor, constant: 25.0).isActive = true
        
    }
    
}
