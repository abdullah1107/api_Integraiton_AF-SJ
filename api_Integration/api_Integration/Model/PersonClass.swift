//
//  RootClass.swift
//  Generated using https://jsonmaster.github.io
//  Created on December 16, 2019
//
import Foundation
import SwiftyJSON

struct Person {

	let pk: Int?
	let firstName: String?
	let lastName: String?
	let bloodGp: String?
	let gender: String?
	let contactNumber: String?
	let email: String?
	let groupNumber: String?
	let imageFile: String?

	init(_ json: JSON) {
		pk = json["pk"].intValue
		firstName = json["first_name"].stringValue
		lastName = json["last_name"].stringValue
		bloodGp = json["blood_gp"].stringValue
		gender = json["gender"].stringValue
		contactNumber = json["contact_number"].stringValue
		email = json["email"].stringValue
		groupNumber = json["group_number"].stringValue
		imageFile = json["image_file"].stringValue
	}

}
