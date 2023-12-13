//
//  LinkManager.swift
//  HackerNewsProject
//
//  Created by Jamie Carruthers on 13/12/2023.
//

import Foundation

class StoryManager : ObservableObject {
    @Published var story: Story
    
    init() {
        self.story = Story(from: )
    }
}
