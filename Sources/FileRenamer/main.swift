
import ArgumentParser
import Foundation

struct FileRenamer: ParsableCommand {

    @Argument(help: "Location of WWDC20 videos.")
    var directory: String

    @Argument(help: "The location of the WWDC20 information json.")
    var json: String

    func run() throws {
        let fileManager = FileManager()
        let directory = try Unwrap(Process().currentDirectoryURL)
        let jsonURL = URL(fileURLWithPath: self.json, relativeTo: directory)
        let jsonData = try Data(contentsOf: jsonURL)
        let json = try JSONDecoder().decode(JSON.self, from: jsonData)

        let filesURL = URL(fileURLWithPath: self.directory, relativeTo: directory)
        let files = try fileManager.contentsOfDirectory(atPath: filesURL.path)

        for file in files {
            var session = file
            session.removeFirst(9)
            session.removeLast(7)
            let id = "wwdc2020-" + session

            guard let content = json.contents.first(where: { $0.id == id }) else {
                continue
            }

            let name = session + " " + content.title
            let origin = filesURL
                .appendingPathComponent(file)
            let destination = filesURL.path + "/" + name + ".mp4"
//                .appendingPathComponent(name)
//                .appendingPathExtension("mp4")

            try fileManager.moveItem(atPath: origin.path, toPath: destination)

            print(session, "from:", origin, "to:", destination)
        }
    }
}

FileRenamer.main()
