import SwiftUI

struct ComicView: View {
    @StateObject private var viewModel = ComicViewModel()

    var body: some View {
        VStack {
            if let comic = viewModel.comic {
                Text(comic.title)
                    .font(.title)
                    .padding()

                AsyncImage(url: URL(string: comic.img)) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
                .padding()

                Text(comic.alt)
                    .font(.body)
                    .padding()

                HStack {
                    Button("Previous") {
                        viewModel.fetchPreviousComic()
                    }
                    .padding()

                    Spacer()

                    Button("Next") {
                        viewModel.fetchNextComic()
                    }
                    .padding()
                }
            } else {
                ProgressView()
            }
        }
        .onAppear {
            viewModel.fetchLatestComic()
        }
    }
}
