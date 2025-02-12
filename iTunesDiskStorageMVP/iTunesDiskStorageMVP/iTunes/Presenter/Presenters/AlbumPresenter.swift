//
//  AlbumPresenter.swift
//  iTunesDiskStorageMVP
//
//  Created by Ибрагим Габибли on 22.01.2025.
//

import Foundation
import UIKit

class AlbumPresenter: AlbumPresenterProtocol {
    weak var view: AlbumViewProtocol?
    private let networkManager: NetworkManagerProtocol
    private let storageManager: StorageManagerProtocol

    private let album: Album

    init(networkManager: NetworkManagerProtocol,
         storageManager: StorageManagerProtocol,
         album: Album
    ) {
        self.networkManager = networkManager
        self.storageManager = storageManager
        self.album = album
    }

    func loadAlbumDetails() {
        networkManager.loadImage(from: album.artworkUrl100) { [weak self] loadedImage in

            guard let self else {
                return
            }

            view?.displayAlbumDetails(album: album, image: loadedImage ?? UIImage())
        }
    }
}
