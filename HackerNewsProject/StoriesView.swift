//
//  ContentView.swift
//  HackerNewsProject
//
//  Created by Myrddin-Evans, Lysander (JD) on 13/12/2023.
//

import SwiftUI

struct StoriesView: View {
    @State var stories: [String]
    
    var body: some View {
        NavigationView {
            Form {
                ForEach(stories, id: \.self) { story in
                    ListLine(story: story)
                }
            }.navigationTitle("Hacker News")
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView(stories: ["Jamie", "Lysander"])
    }
}
