//
//  TableViewCellVoos.swift
//  infraero
//
//  Created by Aluno on 03/03/2018.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit

class TableViewCellVoos: UITableViewCell {

    @IBOutlet weak var vrImagem: UIImageView!
    @IBOutlet weak var vrTitle: UILabel!
    @IBOutlet weak var vrDescricao: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
