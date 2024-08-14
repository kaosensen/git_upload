package com.cathaybk.practice.nt50351.b;

import java.time.LocalDate;
import java.util.Scanner;

public class Test5 {
	static Scanner scanner = new Scanner(System.in);
	static int year;
	static int month;
	static String[] week = { "日", "一", "二", "三", "四", "五", "六" };
	static StringBuilder sb = new StringBuilder();

	public static void main(String[] args) {

		System.out.println("輸入年份");
		year = scanner.nextInt();
		System.out.println("輸入介於1到12的正整數月份");
		month = scanner.nextInt();

		if (month > 12 || month < 1) {
			do {
				System.out.print("輸入介於1到12的正整數月份");
				month = scanner.nextInt();
			} while (month > 12 || month < 1);
			calendar();
		} else if (month <= 12 && month >= 1) {
			calendar();

		}
	}

	public static void calendar() {
		LocalDate ld = LocalDate.of(year, month, 1);
		sb.append("輸入日期為").append(ld.getYear()).append("年 ").append(ld.getMonthValue()).append("月 ");
		System.out.println(sb);
		System.out.println("-------------------------------------------------------------");
		int daysInMonth = ld.lengthOfMonth();// 一個月有幾天
		int dayNumber = ld.getDayOfWeek().getValue();// 當月第一天是星期幾
		for (String i : week) {
			System.out.printf("%2s" + "\t", i);
		}
		System.out.println("\n===========================================================");
		for (int i = 0; i < dayNumber; i++) {
			if (dayNumber == 7) {
				break;
			} else {
				System.out.print("\t");
			}
		}
		for (int i = 1; i <= daysInMonth; i++) {
			if ((i + dayNumber) % 7 == 0)
				System.out.printf("%2d" + "\n", i);
			else {
				System.out.printf("%2d" + "\t", i);
			}
		}

	}
}
