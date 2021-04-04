//
//  Constants.swift
//  youtube-onedaybuild
//
//  Created by Ryan Dirajlal on 4/3/21.
//

import Foundation

struct Constants
{
    static var API_KEY = "AIzaSyAWMbWnsiPPZaszEu5ju24ttpTFVRiaYD0"
    static var PLAYLIST_ID = "UU2D6eRvCeMtcF5OGHf1-trw"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
