package com.cathaybk.practice.nt50351.b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class Test2 {
	public static List<Integer> list = new ArrayList<>();

	public static void main(String[] args) {
		Random rand = new Random();

		while (list.size() < 6) {
			int a = rand.nextInt(49) + 1;
			if (!list.contains(a)) {
				list.add(a);
			}
		}
		System.out.print("排序前:");
		printList();
		Collections.sort(list);
		System.out.print("\n排序後:");
		printList();
	}

	private static void printList() {
		for (int number :list) {
			System.out.printf(number + " ");
		}
	}
}
