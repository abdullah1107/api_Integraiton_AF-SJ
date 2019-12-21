//
//  PersonalTableViewCell.swift
//  api_Integration
//
//  Created by Muhammad Abdullah Al Mamun on 16/12/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class PersonalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var pk: UILabel!
    
    @IBOutlet weak var firstName: UILabel!
    
    @IBOutlet weak var lastName: UILabel!
    
    @IBOutlet weak var bloodGP: UILabel!
    
    @IBOutlet weak var email: UILabel!
    
    @IBOutlet weak var contactNumber: UILabel!
    
    @IBOutlet weak var Profileimage:UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    public func configure(with json: Person) {
        
        let str:String = String(json.pk ?? 0)
        pk.text = str
        firstName.text = json.firstName ?? ""
        lastName.text = json.lastName ?? ""
        bloodGP.text = json.bloodGp ?? ""
        email.text = json.email ?? ""
        contactNumber.text = json.contactNumber ?? ""
       // let imageURL = json.imageFile
      //  Profileimage.downloaded(from: imageURL ?? "")
        
    }
    
}
