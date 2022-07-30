//
//  StoryModels.swift
//  myapp
//
//  Created by 조준영 on 2022/07/31.
//


struct Story {
    
    let pages: [StoryPage]

    subscript(_ pageIndex: Int) -> StoryPage {
        return pages[pageIndex]
    }
}

struct StoryPage {
    let text: String
    
    let choices: [Choice]
    
    init(_ text: String, choices: [Choice]) {
        self.text = text
        self.choices = choices
    }
}
struct Choice {
    let text: String
    let destination: Int
}
