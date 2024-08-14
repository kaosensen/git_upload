package com.cathaybk.practice.nt50351.b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Random;



public class Test2_1 {
	public static List<Integer> listAll = new ArrayList<>();
	public static List<Integer> listNumber = new ArrayList<>();

	public static void main(String[] args) {
		Random rand = new Random();
		for (int i = 1; i < 50; i++) {
			listAll.add(i);
		}
		while (listNumber.size() < 6) {
			int b = rand.nextInt(listAll.size());
			listNumber.add(listAll.get(b));
			listAll.remove(b);
		}
		System.out.printf("排序前:");
		printList();
		Collections.sort(listNumber,new Comparator<Integer>() {
			public int compare(Integer o1,Integer o2) {
				return o1.intValue()-o2.intValue();
			}
		
		});
		System.out.print("\n排序後:");
		printList();
	}

	private static void printList() {
		for (int number :listNumber) {
			System.out.printf(number + " ");
		}
	}
}
