
import ArgumentParser
import Foundation

struct File: ExpressibleByArgument {

    let url: URL
    let name: String

    init?(argument: String) {
        guard let directory = Process().currentDirectoryURL else { return nil }
        url = URL(fileURLWithPath: argument, relativeTo: directory)
        name = url.lastPathComponent
        print(url)
    }
}
