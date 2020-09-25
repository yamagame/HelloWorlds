import Foundation

func printStep(line: String) -> Int32 {
  var sum: Int32 = 0;
  let arr:[String] = line.components(separatedBy: ":")
  if (arr.count > 1) {
    let loop = Int(arr[0])!
    for i in 1...loop {
      for _ in 1...i {
        print(arr[1], terminator: "")
        sum += Int32(arr[1].count)
      }
      print("")
    }
  }
  return sum;
}

let args = CommandLine.arguments
if (args.count > 1) {
  exit(printStep(line: args[1]));
} else {
  while let line = readLine() {
    exit(printStep(line: line));
  }
}
