/**
* Your implementation of the DifferenceOfSquares exercise
*/
component {
	
	 function squareOfSum( number ) {
         var sum = 0;
         for (var i = 1; i <= number; ++i){
             sum += i;
         }

         return sum ^ 2;
	}
	
	 function sumOfSquares( number ) {
         var sum = 0;
         for(var i=1; i <= number; ++i){
             sum += i ^ 2;
         }
         return sum;
	}
	
	 function differenceOfSquares( number ) {
        return squareOfSum(number) - sumOfSquares(number);
	}
	
}
