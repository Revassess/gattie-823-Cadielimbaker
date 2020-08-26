package com.revature.tier1;

//import java.util.stream.Stream;

public class NumberSumLength {

	public static boolean checkNumberPowerLength(long num) {
		//long length = Stream.of(num).count();
		int length = String.valueOf(num).length();
		Math.pow(num, length);
		long sum = length + length;
		
		if(num==sum) {
		System.out.println("the sum of powers(length of integer) is equal to the original integer");
		return true;
	}else {
		return false;
}
}//don't know if I can use Math.pow because of doubles
}