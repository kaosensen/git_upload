package com.cathaybk.practice.nt50351.b;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.List;

public class Practic4_HRMain {

	public static void main(String[] args) {

		List<Employee> employeeList = new ArrayList<>();
		employeeList.add(new Sales("張志城", "信用卡部", 35000, 6000));
		employeeList.add(new Sales("林大鈞", "保代部", 38000, 4000));
		employeeList.add(new Supervisor("李中白", "資訊部", 65000));
		employeeList.add(new Supervisor("林小中", "理財部", 80000));
//		Collections.sort(employeeList);
		try (BufferedWriter bw = new BufferedWriter(
				new FileWriter("C:\\Users\\Admin\\Desktop\\Output.csv"));) {
			for (Employee emp : employeeList) {
				bw.write(new String(new byte[] { (byte) 0xef, (byte) 0xbb, (byte) 0xbf }));
				if (emp instanceof Sales) {
					Sales sel = (Sales) emp;
					bw.write(emp.getName() + "," + sel.getPayment());
					bw.newLine();
				} else {
					Supervisor sup = (Supervisor) emp;
					bw.write(emp.getName() + "," + sup.getPayment());
					bw.newLine();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
