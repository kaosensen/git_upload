package com.cathaybk.practice.nt50351.b;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class HRMain {
	public static void main(String[] args) {
		List<Employee> employeeList = new ArrayList<>();
		employeeList.add(new Sales("張志城", "信用卡部", 35000, 6000));
		employeeList.add(new Sales("林大鈞", "保代部", 38000, 4000));
		employeeList.add(new Supervisor("李中白", "資訊部", 65000));
		employeeList.add(new Supervisor("林小中", "理財部", 80000));
		for (Employee employee : employeeList) {
			employee.printInfo();
		}

		Collections.sort(employeeList, (o1, o2) -> {
			if (o1 instanceof Supervisor && o2 instanceof Supervisor) {
				return 0;
			} else if (o1 instanceof Supervisor) {
				return -1;
			} else if (o2 instanceof Supervisor) {
				return 1;
			} else {
				return 0;
			}
		});

		try (BufferedWriter bufferwrite = new BufferedWriter(
				new FileWriter("C:\\Users\\Admin\\Desktop\\Output.csv"));) {
			bufferwrite.write(new String(new byte[] { (byte) 0xef, (byte) 0xbb, (byte) 0xbf }));
			for (Employee emp : employeeList) {
				if (emp instanceof Sales) {
					Sales sel = (Sales) emp;
					bufferwrite.write(emp.getName() + "," + sel.getPayment());
					bufferwrite.newLine();
				} else {
					Supervisor sup = (Supervisor) emp;
					bufferwrite.write(emp.getName() + "," + sup.getPayment());
					bufferwrite.newLine();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
