//
//  CastViewModel.swift
//  jobsity challenge
//
//  Created by Frank Jansen on 1/12/22.
//

import Foundation

class CastViewModel: ObservableObject {
    @Published var cast = [Cast]()

    func loadData(id: Int) async {
        guard let url = URL(string:" https://api.tvmaze.com/shows/\(id)/cast") else {
            print("Invalid Url")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decodedData = try JSONDecoder().decode(CastJsonData.self, from: data)
            await MainActor.run {
                cast = decodedData.cast
            }
        } catch {
            print("Invalid data \(error)")
        }
    }
    
}
