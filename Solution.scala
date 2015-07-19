object Solution extends App {
 def f(arr:List[Int]):Int = arr.size
  println(f(io.Source.stdin.getLines.toList.map(_.trim).map(_.toInt)))
}