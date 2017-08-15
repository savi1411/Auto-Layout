//
//  CursoTableViewCell.swift
//  Auto Layout
//
//  Created by Carlos A Savi on 14/08/17.
//  Copyright © 2017 Carlos A Savi. All rights reserved.
//

import UIKit

class CursoTableViewCell: UITableViewCell {
    
    //MARK: Propriedades da Célula
    @IBOutlet weak var progressoCurso: UIProgressView!
    @IBOutlet weak var logoCurso: UIImageView!
    @IBOutlet weak var nomeCurso: UILabel!
    @IBOutlet weak var descricaoCurso: UILabel!
    @IBOutlet weak var percentualCurso: UILabel!
    
    //MARK: Estados da View
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
