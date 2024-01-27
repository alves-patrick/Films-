//
//  DataFilms.swift
//  Films
//
//  Created by Patrick Alves on 1/25/24.
//

import Foundation

class DataFilms {
    
    static var films:[Film] = []
    
    static func getFavoriteFilms() -> [Film] {
        var favoriteFilms:[Film] = []
        
        for film in DataFilms.films {
            if (film.isMyfavorite){
                favoriteFilms.append(film)
            }
        }
        return favoriteFilms
    }
}
