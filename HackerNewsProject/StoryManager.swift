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
        self.story = Story()
    }
    
    func getMainStory() async {
        print("Fetching story")
        guard let url = URL(string: "https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty") else {
            print("Invalid URL")
            return
        }
        
        do {
            print("Getting data from API")
            let (data, _) = try await URLSession.shared.data(from: url)
            print("Got data")
            if let decodedResponse = try? JSONDecoder().decode(Story.self, from: data) {
                print(decodedResponse)
                DispatchQueue.main.async {
                    self.story = decodedResponse
                }
            }
            else {
                print("Failed to decode")
            }
        }
        catch {
            print("Invalid")
        }
    }
}
