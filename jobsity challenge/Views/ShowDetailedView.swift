//
//  ShowDetailedView.swift
//  jobsity challenge
//
//  Created by Frank Jansen on 9/12/22.
//

import SwiftUI

struct ShowDetailedView: View {
    let show: Show
    var body: some View {
        ScrollView{
            VStack {
                Text(show.name)
                    .bold()
                    .scaledToFit()
                AsyncImage(url: URL(string: "\(show.image?.original ?? "")")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                    
                } placeholder: {
                    ProgressView()
                }
                Text("Original language: \(show.language ?? "")")
                    .padding()
                Text(show.summary ?? "")
                    .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.gray, lineWidth: 4)
                        )
                Text(show.officialSite ?? "")
                Text(show.status ?? "")
              
            }
        }
    }
    
}

struct ShowDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        ShowDetailedView(show: Show(id: 82, url: "https://www.tvmaze.com/shows/82/game-of-thrones", name: "Game of Thrones", type: "Scripted", language: "English", genres: ["Drama", "Adventure", "Fantasy"], status: "Ended", runtime: 60, averageRuntime: 61, premiered: nil, ended: nil, officialSite: "http://www.hbo.com/game-of-thrones", schedule: nil, rating: nil, weight: 99, network: nil, webChannel: nil, dvdCountry: nil, externals: nil, image: ImaGe(medium: "https://static.tvmaze.com/uploads/images/medium_portrait/190/476117.jpg", original: "https://static.tvmaze.com/uploads/images/original_untouched/190/476117.jpg"), summary: "<p>Based on the bestselling book series <i>A Song of Ice and Fire</i> by George R.R. Martin, this sprawling new HBO drama is set in a world where summers span decades and winters can last a lifetime. From the scheming south and the savage eastern lands, to the frozen north and ancient Wall that protects the realm from the mysterious darkness beyond, the powerful families of the Seven Kingdoms are locked in a battle for the Iron Throne. This is a story of duplicity and treachery, nobility and honor, conquest and triumph. In the <b>Game of Thrones</b>, you either win or you die.</p>", updated: 1658720459, _links: Links(currentEpisode: Reference(href: "https://api.tvmaze.com/shows/82"), previousepisode: Previousepisode(href: "https://api.tvmaze.com/episodes/1623968")), season: 9, number: 10, airdate: nil, airtime: nil, airstamp: nil))
    }
}
