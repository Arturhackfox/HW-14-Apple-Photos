//
//  PhotosModel.swift
//  HW-14-Apple-Photos
//
//  Created by Arthur Sh on 04.02.2024.
//

import Foundation

struct PhotosModel {
    let imageName: String
    let cellName: String
    let imageCount: String
    var isLocked: Bool = false
}

extension PhotosModel {
    static let photos = [
        // MARK: - Section 1
        [
            PhotosModel(imageName: "1", cellName: "Recents", imageCount: "2175"),
            PhotosModel(imageName: "2", cellName: "Favourites", imageCount: "22"),
            PhotosModel(imageName: "3", cellName: "Instagram", imageCount: "130"),
            PhotosModel(imageName: "4", cellName: "Pinterest", imageCount: "1"),
            PhotosModel(imageName: "10", cellName: "Loopsie", imageCount: "15"),
            PhotosModel(imageName: "11", cellName: "DJI", imageCount: "23"),
            PhotosModel(imageName: "7", cellName: "Epik", imageCount: "75"),
            PhotosModel(imageName: "8", cellName: "TikTok", imageCount: "301")
        ],
        // MARK: - Section 2
        [
            PhotosModel(imageName: "9", cellName: "People", imageCount: "2175"),
            PhotosModel(imageName: "12", cellName: "Places", imageCount: "2175"),
        ],
        // MARK: - Section 3
        [
            PhotosModel(imageName: "video", cellName: "Videos", imageCount: "254"),
            PhotosModel(imageName: "person.crop.square", cellName: "Selfies", imageCount: "157"),
            PhotosModel(imageName: "livephoto", cellName: "Live Photos", imageCount: "149"),
            PhotosModel(imageName: "florinsign.circle", cellName: "Portraits", imageCount: "157"),
            PhotosModel(imageName: "square.3.layers.3d.down.right", cellName: "Bursts", imageCount: "449"),
            PhotosModel(imageName: "camera.viewfinder", cellName: "Screenshots", imageCount: "29"),
            PhotosModel(imageName: "record.circle", cellName: "Screen Recordings", imageCount: "654"),
            PhotosModel(imageName: "r.square.on.square", cellName: "RAW", imageCount: "49"),
            PhotosModel(imageName: "video.circle", cellName: "ProRes", imageCount: "4")
        ],
        // MARK: - Section 4
        [
            PhotosModel(imageName: "square.and.arrow.down", cellName: "Imports", imageCount: "169"),
            PhotosModel(imageName: "square.on.square", cellName: "Dublicates", imageCount: "76"),
            PhotosModel(imageName: "eye.slash", cellName: "Hidden", imageCount: "", isLocked: true),
            PhotosModel(imageName: "trash", cellName: "Recently Deleted", imageCount: "", isLocked: true)
        ]
    ]
}
