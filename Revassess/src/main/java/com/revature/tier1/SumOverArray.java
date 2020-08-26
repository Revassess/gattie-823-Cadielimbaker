package com.revature.tier1;

import java.util.Arrays;
import java.util.Scanner;

public class SumOverArray {

	public static int IterateAndSum(int[] arr) {
		Scanner sc = new Scanner(System.in);
		int length = sc.nextInt();
		int[] input = new int[length];
		
		System.out.println("enter the elements of the array");
		for(int i = 0; i < length; i++) {
			input[i]=sc.nextInt();
		}
		int total = sumOfElements(input);
		System.out.println("Sum of all the array elements is:" + total);
		sc.close();
		return total;
	}

	private static int sumOfElements(int[] arr) {
		int sum = 0;
		for(int i : arr) {
			sum = sum + i;
		}
		return sum;
	}
}//could use a stream
