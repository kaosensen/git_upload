package com.cathaybk.practice.nt50351.b;

public class Test1 {

	public static void main(String[] args) {
		for (int i = 1; i < 10; i++) {
			for (int j = 2; j < 10; j++) {
				int times = i * j;
				System.out.printf("%d*%d=%2d ", j, i, times);
			}
			System.out.print("\n");
		}
	}
}
