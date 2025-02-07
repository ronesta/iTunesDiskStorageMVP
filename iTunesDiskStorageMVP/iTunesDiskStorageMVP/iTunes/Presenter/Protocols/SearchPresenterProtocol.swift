//
//  SearchPresenterProtocol.swift
//  iTunesDiskStorageMVP
//
//  Created by Ибрагим Габибли on 22.01.2025.
//

import Foundation
import UIKit

protocol SearchPresenterProtocol: AnyObject {
    func searchAlbums(with term: String)

    func loadImage(for album: Album, completion: @escaping (UIImage?) -> Void)
}
