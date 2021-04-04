//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Ryan Dirajlal on 4/3/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {

    

    
    @IBOutlet weak var tableView: UITableView!
    
    var model = Model()
    var videos = [Video]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //set itself as the datasource and delegate
        tableView.dataSource = self
        tableView.delegate = self
        //set itself as the delegate of the model
        model.delegate = self
        
        model.getVideos()
    }
    
    //MARK: Model Delegate Methods
    
    func videosFetched(_ videos: [Video]) {
        
        //set returned videos to video property
        self.videos = videos
        
        //refresh tableview
        tableView.reloadData()
        
    }
    
    //MARK: - TableViewMethods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath)
        
        //configure the cell with the data
        //get the title for the video in question
        let title = self.videos[indexPath.row].title
        
        cell.textLabel?.text = title
        
        //return the cell
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }


}

