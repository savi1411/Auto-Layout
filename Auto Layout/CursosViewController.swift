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
    
    // As propriedades serão inicializadas através de closures
    
    // Teremos uma StackView com 3 imagens dentro
    //  E um label com o copyright da Alura
    
    // Imagem da esquerda - curso de Swift
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Monta o Stack View, com as 3 imagens em seu interior
        stackView.addArrangedSubview(swiftImageView)
        stackView.addArrangedSubview(objcImageView)
        stackView.addArrangedSubview(layoutImageView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(stackView)
        
        // Adiciona o label à superview
        self.view.addSubview(aluraLabel)
        
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

        // Vamos começar pelo StackView
 
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
            item: aluraLabel,
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
            toItem: aluraLabel,
            attribute: .bottom,
            multiplier: 1.0,
            constant: 25.0
        )
        
        // Adiciona Constraint
        view.addConstraint(constraintLabelBottom)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
