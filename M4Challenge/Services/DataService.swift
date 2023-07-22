//
//  DataService.swift
//  M4Challenge
//
//  Created by Chuck Belcher on 7/21/23.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Book] {
        
        //Get path to local json file
        let filePath = Bundle.main.path(forResource: "data", ofType: "json")
        guard filePath != nil else {
            return [Book]()
        }
        
        //create url to file path
        let url = URL(fileURLWithPath: filePath!)
        
        do {
            //decode data
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do {
                let bookData = try decoder.decode([Book].self, from: data)
                return bookData
                
            } catch {
                print(error)
            }
            
        } catch {
            print(error)
        }
        return [Book]()
    }
}
