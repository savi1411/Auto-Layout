//
//  CursoTableViewController.swift
//  Auto Layout
//
//  Created by Carlos A Savi on 14/08/17.
//  Copyright © 2017 Carlos A Savi. All rights reserved.
//

import UIKit

class CursoTableViewController: UITableViewController {
    
    //MARK: Propriedades
    
    // Cria e inicializa variável para guardar os cursos
    var cursos:[Curso] = [
        Curso(nome: "Objective", descricao: "Programando para iPhone e iPad", logo: "curso1", progresso: 50),
        Curso(nome: "Swift 3", descricao: "Desenvolvendo para iOS no Xcode parte 1", logo: "curso2", progresso: 90),
        Curso(nome: "Swift 3", descricao: "Desenvolvendo para iOS no Xcode parte 2", logo: "curso2", progresso: 25),
        Curso(nome: "Swift 3", descricao: "Desenvolvendo para iOS no Xcode parte 3", logo: "curso2", progresso: 0),
        Curso(nome: "Auto Layout", descricao: "Desenvolvendo para iOS no Xcode parte 1", logo: "curso3", progresso: 38)
    ]

    // MARK: Estados da View
    override func viewDidLoad() {
        super.viewDidLoad()

        // Para omitir as células vazias
        tableView.tableFooterView = UIView(frame: .zero)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cursos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Configura a célula
        
        // Células de tabela são reutilizáveis e devem ter um identificador
        let cellIdentifier = "CursoTableViewCell"
        
        // Valida instância de célula
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? CursoTableViewCell  else {
            fatalError("A célula não é uma instância de CursoTableViewCell")
        }
        
        // Recupera o curso corrente
        let curso = cursos[indexPath.row]
        
        // Recupera dados do data model
        
        // Nome e Descrição
        cell.nomeCurso.text = curso.nome
        cell.descricaoCurso.text = curso.descricao
        
        // Logo
        let nomeLogo = curso.logo
        cell.logoCurso.image = UIImage(named: nomeLogo)
        
        // Barra de Progresso e Percentual
        let fracional = Float(curso.progresso) / 100.0
        let animated = curso.progresso != 0
        cell.progressoCurso.setProgress(fracional, animated: animated)
        cell.percentualCurso.text = ("\(String(describing: curso.progresso))%")

        return cell
    }

}
