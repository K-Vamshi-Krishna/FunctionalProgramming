object check {
	def solution(a: Array[Int]): Int = {
	val sums = a.scanLeft(0L)(_+_).tail
	def equilibrium(index: Int) = leftSum(index) == rightSum(index)
	def leftSum(index: Int) = if (index == 0) 0 else sums(index - 1)
	def rightSum(index: Int) = sums.last - sums(index)
	(0 until a.length) find (equilibrium(_)) getOrElse(-1)
	}
}
