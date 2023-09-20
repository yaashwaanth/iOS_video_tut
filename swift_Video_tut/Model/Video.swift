//
//  Video.swift
//  swift_Video_tut
//
//  Created by G Yashwanth Sharma on 20/09/23.
//

import Foundation


struct Video: Identifiable , Codable {
    var id: String {
        return NSUUID().uuidString

    }
    let videoUrl: String
}
