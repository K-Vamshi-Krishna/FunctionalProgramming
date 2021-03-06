package recursion
import scala.annotation.tailrec

/*object Lists {

//	@param xs A list of natural numbers


def sum(xs:List[Int]): Int={

	def loop(acc:Int, xs: List[Int]): Int= {
		if(xs.isEmpty) acc
		else loop(acc+xs.head,xs.tail)
	
	}
  println("How are you");
  loop(0,xs)
  } 	    	 	
}*/
object Sum extends App{


	val list = List.range(1,100)
	println(sum(list))
	println(sum2(list))
	//println(sum3(list))
	//println(sumWithReduce))
	
	def sum(ints:List[Int]): Int = ints match{
	case Nil =>0
	case x::tail => x+sum(tail)
	}
	//tail recursion
	def sum2(ints:List[Int]):Int={
	@tailrec
	def sumAcc( acc:Int,ints:List[Int]):Int =
	{
	 ints match{
	   case Nil => acc
	   case x::tail =>sumAcc(acc+x, tail)
	  }
	 } 
	 sumAcc(0,ints)
	}
	//(3)
	def sum3(ints:List[Int]): Int={
	 if (xs.isEmpty)0
	 else xs.head + sum3(xs.tail)
	 }
	 def sumWithReduce(ints:List[Int]) = {
         ints.reduceLeft(_+_)
	}	 

}

object Product extends App {
	val list = List(1,2,3,4,5)
	// tail-recursion
	def product2(ints: List[Int]): Int ={
	@tailrec
	def productAcc(ints: List[Int],acc:Int) Int={
	 ints match{
        case Nil => acc
        case x::tail => productAcc(tail,acc *x)
	 }
	 productAcc(ints,1)
	}
}
object Max extends App {
	def max(ints: List[Int]): Int={
	def maxAcc(ints: List[Int], theMax: Int): Int=ints match{
	  case Nil => theMax
	  case x :: tail =>
	   val newMax = if(x > theMax) x else theMax
	   maxAcc(tail,newMax)
	 }
	 maxAcc(ints,0)
	}
}
