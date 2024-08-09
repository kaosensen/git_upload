package com.cathaybk.practice.nt50351.b;

public class Test1 {

	public static void main(String[] args) {
		for (int i = 1; i < 10; i++) {
			for (int j = 2; j < 10; j++) {
				int k = i * j;
				System.out.printf("%d*%d=%d\t", j, i, k);
			}
			System.out.print("\n");
		}
	}
}
