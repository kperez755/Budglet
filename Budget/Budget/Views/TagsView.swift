//
//  TagsView.swift
//  Budget
//
//  Created by Kevin Perez on 1/21/25.
//

import SwiftUI

struct TagsView: View {
    @Binding var selectedTags: Set<Tag>
    @FetchRequest(sortDescriptors: []) private var tags: FetchedResults<Tag>
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(tags) { tag in
                    Text(tag.name ?? "")
                        .padding(10)

                    .background(selectedTags.contains(tag) ? .blue: .gray)
                    .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
                    .onTapGesture {
                        if selectedTags.contains(tag) {
                            selectedTags.remove(tag)
                            
                        } else {
                            selectedTags.insert(tag)
                        }
                    }
                }
            } .foregroundColor(.white)
        }
        
    }
}

struct TagsViewContainerView: View {
    
    @State private var selectedTags: Set<Tag> = []
    
    var body: some View {
        TagsView(selectedTags: $selectedTags)
            .environment(\.managedObjectContext, CoreDataProvider.preview.context)
    }
}
#Preview {
    TagsViewContainerView()
}
