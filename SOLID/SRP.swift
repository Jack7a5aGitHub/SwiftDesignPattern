import Foundation

class Journal: CustomStringConvertible {
    var entries = [String]()
    var count = 0

    func addEntry(_ text: String) -> Int {
        count += 1
        entries.append("\(count): \(text)")
        return count - 1
    }

    func removeEntry(_ index: Int) {
        entries.remove(at: index)
    }

    var description: String {
        return entries.joined(separator: "\n")
    }

    func save(_ filename: String, _ overwrite: Bool = false) {
    // save to a file
    }
    func load(_ filename: String) {}
    func load(_ uri: URI) {}
}

class Persistence {
    func saveToFile(_ journal: Journal, 
    _ filename: String, _ overwrite: Bool = false) {
    
    }
}

func main() {
    let j = Journal()
    let _ = j.addEntry("Jack ate an apple.")
    let bug = j.addEntry("I went to school by bus")
    print(j)

    j.removeEntry(bug)
    print("===")
    print(j)

    let p = Persistence()
    let filePath = "/usr/local"
    p.saveToFile(j, filePath, false)
}

main()