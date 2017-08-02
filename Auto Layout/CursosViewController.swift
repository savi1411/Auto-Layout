//
//  CursosViewController.swift
//  Auto Layout
//
//  Created by Carlos A Savi on 29/07/17.
//  Copyright © 2017 Carlos A Savi. All rights reserved.
//

import UIKit

class CursosViewController: UIViewController {
    
    // MARK: Propriedades
    
    /*
     PROPRIEDADES DEFINIDAS NA FORMA TRADICIONAL
     Utilizar na 1ª parte do curso, deixando a forma de definição por closure mais para o final
    */
 
    // Define propriedades que seão utilizadas para definir os elementos visuais programaticamente
    
    // Teremos uma StackView com 3 imagens dentro
    //  E um label com o copyright da Alura
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
        theLabel.text = "© 2017 - Alura Treinamentos LTDA"
        theLabel.translatesAutoresizingMaskIntoConstraints = false
        return theLabel
    }()
    */
    
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
        labelAlura.text = "© 2017 - Alura Treinamentos LTDA"
        labelAlura.translatesAutoresizingMaskIntoConstraints = false

    }
    
    // Função para adiconar as constraints aos elementos visuais, de forma programada
    func adicionaConstraints() {
        
        /*
         NSLayoutConstraint
         Os métodos dessa classe convertem explicitamente uma equação de constraint em código.
         Cada parâmetro corresponde a uma parte da equação
         Você deve especificar um valor para cada parâmetro, mesmo que aquele parâmetro não afete o layout
         A vantagem do método é visualizar a constraint como se ela estivesse sendo construído no Interface Builder
         A desvantagem é a quantidade considerável de código necessária, o que pode dificultar o entendimento
         */
        
        /*
         ANATOMIA DE UMA CONSTRAINT
         Uma constraint é construída a partir de uma equação linear. Com isso em mente, o nosso papel será decifrar os argumentos a serem utilizados na classe NSLayoutConstraint
         Os parâmetros são os seguintes:
         - o item esquerdo da equação
         - o atributo do item que receberá a regra
         - o relacioamento com o outro item
         - o lado direito da equação
         - o atributo do lado direito
         - o multiplicador da constraint
         - a constante da constraint
         
         */
        
        // Vamos começar a inserir as constraints pelo StackView
        
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
        
        /*
         Vamos exercitar a equação com o label da Alura
         O nosso objetivo com o label é
         1 - Centralizar horizontalmente (X)
         2 - Posicioná-lo a 25 pontos da margem inferior (bottom)
         
         Observe que o label é o item esquerdo da equação e a view é o lado direito. Na realidade, utilizamos a diretiva bottomLayoutGuide, que representa o rodapé da view
         */
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
