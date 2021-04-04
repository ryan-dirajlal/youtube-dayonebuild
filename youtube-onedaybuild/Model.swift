//
//  Model.swift
//  youtube-onedaybuild
//
//  Created by Ryan Dirajlal on 4/3/21.
//

import Foundation

protocol ModelDelegate{
    func videosFetched(_ videos:[Video])
}
class Model
{
    var delegate:ModelDelegate?
    
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
            
            do
            {
                //parsing the data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                if response.items != nil {
                    DispatchQueue.main.async{
                        //call the videosFetched method of the delegate
                            self.delegate?.videosFetched(response.items!)
                    }
                    
               
                }
                //dump(response)
            }
            
            catch
            {
                
            }
            
            
        }
        
        
        //Kick off the task - DONT FORGET
        dataTask.resume()
        
    }
}
