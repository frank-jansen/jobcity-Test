//
//  ShowViewModel.swift
//  jobsity challenge
//
//  Created by Frank Jansen on 30/11/22.
//

import Foundation

class ShowViewModel: ObservableObject {
    @Published var shows = [Show]()

    func loadData() async {
        guard let url = URL(string:"https://api.tvmaze.com/singlesearch/shows?q=") else {
            print("Invalid Url")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decodedData = try JSONDecoder().decode(JsonData.self, from: data)
            await MainActor.run {
                shows = decodedData.show
            }
        } catch {
            print("Invalid data \(error)")
        }
    }
    
}
