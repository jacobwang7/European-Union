//
//  ListTableViewCell.swift
//  European Union
//
//  Created by Jacob Wang on 3/5/21.
//

import UIKit

protocol ListTableViewCellDelegate: class {
    func euroButtonToggled(sender: ListTableViewCell)
}

class ListTableViewCell: UITableViewCell {
    @IBOutlet weak var euroButton: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    
    weak var delegate: ListTableViewCellDelegate?
    
    @IBAction func euroTapped(_ sender: UIButton) {
        delegate?.euroButtonToggled(sender: self)
    }
    
    var nation: Nation! {
        didSet {
            countryLabel.text = nation.country
            capitalLabel.text = "Capital: \(nation.capital)"
            euroButton.isSelected = nation.usesEuro
        }
    }
    
}
