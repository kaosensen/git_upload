package com.cathaybk.practice.nt50351.b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;



public class Test2_1 {
	public static List<Integer> lista = new ArrayList<>();
	public static List<Integer> listb = new ArrayList<>();

	public static void main(String[] args) {
		Random rand = new Random();
		for (int i = 1; i < 50; i++) {
			lista.add(i);
		}
		while (listb.size() < 6) {
			int b = rand.nextInt(lista.size());
			listb.add(lista.get(b));
			lista.remove(b);
		}
		System.out.printf("排序前:");
		forLoop();
		Collections.sort(listb);
		System.out.print("\n排序後:");
		forLoop();
	}

	private static void forLoop() {
		for (int i :listb) {
			System.out.printf(i + " ");
		}
	}
}
