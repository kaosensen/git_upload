package com.cathaybk.practice.nt50351.b;

import java.util.HashSet;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;

public class Test2_2 {

	public static Set<Integer> numberSet = new HashSet<>();
	public static Set<Integer> sortSet = new TreeSet<>();
	static Random random = new Random();

	public static void main(String[] args) {
		while (numberSet.size() < 6) {
			int a = random.nextInt(49) + 1;
			numberSet.add(a);
		}
		System.out.println("排序前：" + numberSet);
		sortSet.addAll(numberSet);
		System.out.print("排序後：");
		printList();
	}
	private static void printList() {
		for (int number :sortSet) {
			System.out.printf(number + " ");
		}
	}
}
