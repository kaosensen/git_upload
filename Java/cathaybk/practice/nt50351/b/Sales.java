package com.cathaybk.practice.nt50351.b;

public class Sales extends Employee {

	private int bouns;
	private int payment;

	public Sales(String name, String department, int salary, int bouns) {
		super(name, department, salary);
		this.bouns = (int) (bouns * 0.05);
		payment = this.bouns + salary;

	}

	public int getBouns() {
		return bouns;
	}

	public void setBouns(int bouns) {
		this.bouns = bouns;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	@Override
	public void printInfo() {
//		BigDecimal pay = new BigDecimal(payment);
		super.printInfo();
		System.out.println("業績獎金：" + bouns + "\n總計：" + payment);
	}
}
