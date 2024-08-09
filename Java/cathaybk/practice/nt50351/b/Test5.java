package com.cathaybk.practice.nt50351.b;

import java.time.LocalDate;

import javax.swing.JOptionPane;

public class Test5 {

	public static void main(String[] args) {
		String[] week ={"日","一","二","三","四","五","六"};
		int a, b, c;
		String year = JOptionPane.showInputDialog("輸入年份");
		c = Integer.parseInt(year);
		String month = JOptionPane.showInputDialog("輸入月份");
		b = Integer.parseInt(month);
		String day = JOptionPane.showInputDialog("輸入日期");
		a = Integer.parseInt(day);

		LocalDate d2 = LocalDate.of(c, b, a);
		System.out.println("輸入年份為"+c);
		System.out.println("輸入月份為"+b);
		System.out.println("輸入日期為"+a);
		System.out.println(d2.getYear()+"年 " + d2.getMonthValue()+"月 " + d2.getDayOfMonth()+"日 "+" 星期"+d2.getDayOfWeek().name()); 
		System.out.println("==============================================");
		System.out.println("day-of-year:" + d2.getDayOfYear()); 
		System.out.println("day-of-month:" + d2.getDayOfMonth()); 
		System.out.println("day-of-week:" + d2.getDayOfWeek().name()); 
		System.out.println("day-of-week:" + d2.getDayOfWeek().getValue()); 

	}

}
