package com.cathaybk.practice.nt50351.b;

import java.time.LocalDate;
import java.util.Scanner;

public class Test5 {
	static Scanner scanner = new Scanner(System.in);

	public static void main(String[] args) {
		String[] week = { "日", "一", "二", "三", "四", "五", "六" };

		int year, month;
		System.out.println("輸入年份");
		year = scanner.nextInt();
		System.out.println("輸入介於1到12的正整數月份");
		month = scanner.nextInt();
		LocalDate ld = LocalDate.of(year, month, 1);
		System.out.println("輸入日期為" + ld.getYear() + "年 " + ld.getMonthValue() + "月 ");
		System.out.println("--------------------------------");
		int daysInMonth = ld.lengthOfMonth();// 一個月有幾天
		int dayNumber = ld.getDayOfWeek().getValue();// 當月第一天是星期幾
		for (String i : week) {
			System.out.printf("%2s" + "　 ", i);
		}
		System.out.println("");
		System.out.println("================================");
		for (int i = 0; i < dayNumber; i++) {
			if (dayNumber == 7) {
				continue;
			} else {
				System.out.print(" 　 　");
			}
		}
		for (int i = 1; i <= daysInMonth; i++) {
			if (i % 7 == (7 - dayNumber))
				System.out.printf("%2d" + "\n", i);
			else {
				System.out.printf("%2d" + "　　", i);
			}
		}
	}
}
