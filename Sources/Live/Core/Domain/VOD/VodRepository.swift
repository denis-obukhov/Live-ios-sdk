//
//  VodRepository.swift
//  
//
//  Created by Sacha on 24/07/2020.
//

import Foundation
import Combine

public protocol VodRepository {
	func getVodCategories() -> AnyPublisher<[VodCategory], Error>
	func fetch(category: VodCategory) -> AnyPublisher<VodCategory, Error>
	func getPlaylist(playlist: VodPlaylist) -> AnyPublisher<VodPlaylist, Error>
	func fetch(video: VodVideo) -> AnyPublisher<VodVideo, Error>
	func search(query: String) -> AnyPublisher<[VodItem], Error>
}
