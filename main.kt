import kotlin.system.*

fun printStep(line: String): Int {
  var sum: Int = 0
  var arr: List<String> = line.split(":")
  if (arr.size > 1) {
    var loop = arr[0].toInt()
    for (i in 1..loop) {
      for (j in 1..i) {
        print(arr[1])
        sum += arr[1].count()
      }
      println("")
    }
  }
  return sum
}

fun main(args: Array<String>) {
  if (args.count() > 0) {
    exitProcess(printStep(args[0]))
  } else {
    val input = readLine()
    if (input!=null) {
      exitProcess(printStep(input))
    }
  }
}
