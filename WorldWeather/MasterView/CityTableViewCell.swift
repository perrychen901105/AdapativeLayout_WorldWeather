//
//  CityTableViewCell.swift
//  WorldWeather
//
//  Created by mac on 14-10-10.
//  Copyright (c) 2014年 RayWenderlich. All rights reserved.
//

import UIKit

class CityTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var cityImageView: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    
    // MARK: - Properties
    var cityWeather: CityWeather? {
        didSet {
            configureCell()
        }
    }
    
    // MARK: - Utility methods
    private func configureCell() {
        cityImageView.image = cityWeather?.cityImage
        cityNameLabel.text = cityWeather?.name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
