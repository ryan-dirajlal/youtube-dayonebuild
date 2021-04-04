//
//  Model.swift
//  youtube-onedaybuild
//
//  Created by Ryan Dirajlal on 4/3/21.
//

import Foundation
class Model
{
    func getVideos()
    {
        //create URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else{
            return
        }
        
        //Get a URL session object
        let session = URLSession.shared
        
        
        //Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
         
            
            //check if there were any errors
            
            if error != nil || data == nil
            {
                return
            }
            
            //parsing the data into video objects
            
            
        }
        
        
        //Kick off the task - DONT FORGET
        dataTask.resume()
        
    }
}
