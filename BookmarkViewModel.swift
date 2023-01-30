//
//  BookmarkViewModel.swift
//  NotesKinder
//
//  Created by Kin Der on 18.01.2023.
//

import Foundation

class BookmarkListViewModel: ObservableObject {
    @Published private(set) var bookmarks: [Note]



    func reload() async {
        bookmarks = await Model.loadAllModels(
            ofType: Note.self
        )
    }
}
