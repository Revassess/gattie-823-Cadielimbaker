package com.revature.tier1;

public class CompareStrings {

    public static boolean compareStrings(String s1, String s2){
    	
    if (s1.equals(s2)) {
    	System.out.println("These two strings are equal");
    	return true;
    }
       System.out.println("These two strings aren't equal"); 
	return false;
    }
}