//
//  MainViewController.swift
//  api_Integration
//  Created by Muhammad Abdullah Al Mamun on 15/12/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class MainViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var personalTableView: UITableView!
    
    var datajson = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personalTableView.dataSource = self
        personalTableView.delegate = self
        
        // Do any additional setup after loading the view.
        load_datafromServer()
        //load_datafromcustomclass()
     
    }
    let headers: HTTPHeaders = [
        "Accept": "application/json"
    ]
    
    func load_datafromcustomclass(){
//       let apiUrl = "\(baseUrl)/information/list/personalinfo"
//       let jsons = fetchData(apitype:"GET", urlString: apiUrl, baseURL: "")
//        print(jsons)
       
    }
    
    func load_datafromServer(){
        
        AF.request("http://127.0.0.1:8000/api/information/list/personalinfo", headers: headers).response { response in
            //debugPrint(response)

            let items = JSON(response.value as Any)
            
//            for (key,subJson):(String, JSON) in items[0] {
//                         // Do something you want
//                print("key: ", key + "  ======   " + "value:", subJson)
//            }
//            
            // print(item.0) only print primaryKey
            DispatchQueue.main.async() {
                
                for item in items {
                    let person = Person(item.1)
                    //print(person.bloodGp ?? "")
                    self.datajson.append(person)
                    //self.datajson.append(self.person.lastName)
                    
                    
                }
                //print(self.datajson.count)
                self.personalTableView.reloadData()
            }
        }.resume()

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datajson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        let cell:PersonalTableViewCell = personalTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PersonalTableViewCell
        

        cell.configure(with: datajson[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
 
    

    
}

extension UIImageView {
  public func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() {
                self.image = image
            }
        }.resume()
    }
    
 public func downloaded(from link: String, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}

    
    //        for json in datajson{
    //            //print()
    //            //cell.pk.text = String(json.pk)
    //            let str:String = String(json.pk ?? 0)
    //            cell.pk.text = str
    //            cell.firstName.text = json.firstName ?? ""
    //            cell.lastName.text = json.lastName ?? ""
    //            cell.bloodGP.text = json.bloodGp ?? ""
    //            cell.email.text = json.email ?? ""
    //            cell.contactNumber.text = json.contactNumber ?? ""
    //            //let imageURL = json.imageFile
    //            //cell.Profileimage.downloaded(from: imageURL ?? "")
    //        }
    

           // let person = Person(jsons)
            //print(person)
            // If json is .Dictionary
//            for (key,subJson):(String, String) in Person(jsons) {
//               // Do something you want
//                print("key:", key ,"value:", subJson)
//            }
            // If json is .Array
          //   The `index` is 0..<json.count's string value
         

            
               
        
            
    
//    let parameters: [String: String] = [
//        "username": "badhon",
//        "email": "badhon@gmail.com",
//        "phone": "01600008931",
//        "password": "badhon"
//    ]
    
    
    
    //    func postData() {
    //
    //        //AF.request("192.168.43.189:8000/api/v1/create", method: .post, parameters: parameters, encoder: JSONParameterEncoder.default)
    //
    //        AF.request("http://192.168.43.189:8000/api/v1/create", method: .post, parameters: parameters, encoder: JSONParameterEncoder.default).responseJSON { response in
    //            debugPrint(response) }
    //    }
    
//    func update() {
//        AF.request("http://192.168.43.189:8000/api/v1/delete/5", method: .delete, parameters: parameters, encoder: JSONParameterEncoder.default).responseJSON { response in
//            //debugPrint(response)
//
//
//        }
//    }
    
    
//    func load_datafromServer(){
//        AF.request("http://127.0.0.1:8000/api/information/list/personalinfo", method: .get, parameters: parameters, encoder: JSONParameterEncoder.default, headers:headers).responseJSON {
//            response in
//
//            debugPrint(response)
//
//        }
//    }
