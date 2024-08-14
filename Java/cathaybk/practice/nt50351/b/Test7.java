package com.cathaybk.practice.nt50351.b;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class Test7 {
	static Scanner scanner = new Scanner(System.in);
	private static final String UPDATE_CARS_SQL = "update STUDENT.CARS set MIN_PRICE = ? ,PRICE = ? where MANUFACTURER = ? and TYPE = ?";
	private static final String INSERT_CARS_SQL = "insert into STUDENT.CARS (MANUFACTURER, TYPE, MIN_PRICE, PRICE) values (?, ?, ?, ?)";
	private static final String DELETE_CARS_SQL = "delete from STUDENT.CARS where MANUFACTURER = ? and TYPE=?";
	private static final String SELECT_CARS_SQL = "select MANUFACTURER,TYPE, MIN_PRICE, PRICE from STUDENT.CARS where MANUFACTURER = ? and TYPE = ?";
	private static final String QUERY_CARS_SQL = "select MANUFACTURER,TYPE, MIN_PRICE, PRICE from STUDENT.CARS";
	private static final String CONN_URL = "jdbc:oracle:thin:@localhost:1521:XE";
	private static final String TYPE = "TYPE";
	private static final String MANUFACTURER = "MANUFACTURER";
	private static final String MIN_PRICE = "MIN_PRICE";
	private static final String PRICE = "PRICE";
	private static final String USER_NAME = "student";
	private static final String PASSWORD = "student123456";

	public static void main(String[] args) {
		doQuery();
		System.out.println("==========================================================");
		System.out.println("請選擇以下指令輸入:select、insert、update、delete");
		String inputString = scanner.nextLine();

		switch (inputString) {
		case "select":
			doSelect();
			break;
		case "insert":
			doInsert();
			break;
		case "update":
			doUpdate();
			break;
		case "delete":
			doDelete();
			break;
		default:
			System.out.println("請輸入正確指令並重新開始");
		}
	}

	private static void inManufacturer() {
		System.out.println("請輸入製造商");
	}

	private static void inType() {
		System.out.println("請輸入類型");
	}

	private static void inMinprice() {
		System.out.println("請輸入底價");
	}

	private static void inPrice() {
		System.out.println("請輸入售價");
	}

	private static void doDelete() {
		try (Connection conn = DriverManager.getConnection(CONN_URL, USER_NAME, PASSWORD);
				PreparedStatement pstmt = conn.prepareStatement(DELETE_CARS_SQL);) {
			try {
				inManufacturer();
				String manufacturer = scanner.nextLine();
				inType();
				String type = scanner.nextLine();
				conn.setAutoCommit(false);
				pstmt.setString(1, manufacturer);
				pstmt.setString(2, type);
				int affectedRows = pstmt.executeUpdate();
				if (affectedRows > 0) {
					conn.commit();
					System.out.println("刪除成功! 修改後結果：");
					doQuery();
				} else {
					System.out.println("沒有找到符合條件的資料進行刪除。");
				}
			} catch (Exception e) {
				System.out.println("刪除失敗，原因：" + e.getMessage());
			}
		} catch (SQLException sqle) {
			System.out.println("rollback 失敗，原因：" + sqle.getMessage());
			sqle.printStackTrace();
		}
	}

	private static void doInsert() {
		try (Connection conn = DriverManager.getConnection(CONN_URL, USER_NAME, PASSWORD);) {
			try {
				inManufacturer();
				String manufacturer = scanner.nextLine();
				inType();
				String type = scanner.nextLine();
				inMinprice();
				BigDecimal minprice = scanner.nextBigDecimal();
				inPrice();
				BigDecimal price = scanner.nextBigDecimal();

				conn.setAutoCommit(false);
				PreparedStatement pstmt = conn.prepareStatement(INSERT_CARS_SQL);
				pstmt.setString(1, manufacturer);
				pstmt.setString(2, type);
				pstmt.setBigDecimal(3, minprice);
				pstmt.setBigDecimal(4, price);
				pstmt.executeUpdate();

				conn.commit();
				System.out.println("新增成功" + "\n" + "新增後結果：");
				doQuery();
			} catch (Exception e) {
				System.out.println("新增失敗，原因：" + e.getMessage());
				try {
					conn.rollback();
				} catch (SQLException sqle) {
					System.out.println("rollback 失敗，原因：" + sqle.getMessage());
				}
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}

	private static void doUpdate() {
		try (Connection conn = DriverManager.getConnection(CONN_URL, USER_NAME, PASSWORD);
				PreparedStatement pstmt = conn.prepareStatement(UPDATE_CARS_SQL);) {
			try {
				inManufacturer();
				String manufacturer = scanner.nextLine();
				inType();
				String type = scanner.nextLine();
				System.out.println("請輸入欲更改底價");
				BigDecimal minprice = scanner.nextBigDecimal();
				System.out.println("請輸入欲更改售價");
				BigDecimal price = scanner.nextBigDecimal();

				conn.setAutoCommit(false);
				pstmt.setBigDecimal(1, minprice);
				pstmt.setBigDecimal(2, price);
				pstmt.setString(3, manufacturer);
				pstmt.setString(4, type);
				pstmt.executeUpdate();
				int affectedRows = pstmt.executeUpdate();
				if (affectedRows > 0) {
					conn.commit();
					System.out.println("更新成功! 受影響的行數: " + affectedRows + "修改後結果");
					doQuery();
				} else {
					System.out.println("沒有找到符合條件的資料進行更新。");
				}
			} catch (Exception e) {
				System.out.println("更新失敗");
				e.printStackTrace();
			}
		} catch (SQLException sqle) {
			System.out.println("rollback 失敗，原因：" + sqle.getMessage());
			sqle.printStackTrace();
		}
	}

	private static void doQuery() {

		try (Connection conn = DriverManager.getConnection(CONN_URL, USER_NAME, PASSWORD);
				PreparedStatement pstmt = conn.prepareStatement(QUERY_CARS_SQL);) {
			List<Map<String, String>> list = new ArrayList<Map<String, String>>();
			ResultSet rs = pstmt.executeQuery();
			StringBuilder sb = new StringBuilder();
			sb.append("查詢結果：\n");
			while (rs.next()) {
				Map<String, String> map = new HashMap<>();
				map.put(MANUFACTURER, rs.getString(MANUFACTURER));
				map.put(TYPE, rs.getString(TYPE));
				map.put(PRICE, rs.getString(PRICE));
				map.put(MIN_PRICE, rs.getString(MIN_PRICE));
				list.add(map);

				sb.append(String.format("製造商：%7s 型號：%7s 售價：%s 底價：%3s\n", map.get(MANUFACTURER), map.get(TYPE),
						map.get(PRICE), map.get(MIN_PRICE)));
			}
			System.out.println(sb.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void doSelect() {

		try (Connection conn = DriverManager.getConnection(CONN_URL, USER_NAME, PASSWORD);
				PreparedStatement pstmt = conn.prepareStatement(SELECT_CARS_SQL);) {
			inManufacturer();
			String manufacturer = scanner.nextLine();
			inType();
			String type = scanner.nextLine();
			pstmt.setString(1, manufacturer);
			pstmt.setString(2, type);
			ResultSet rs = pstmt.executeQuery();
			StringBuilder sb = new StringBuilder();
			while (rs.next()) {
				sb.append(String.format("製造商：%7s型號：%7s售價：%s底價：%3s\n", rs.getString(MANUFACTURER), rs.getString(TYPE),
						rs.getString(PRICE), rs.getString(MIN_PRICE)));
			}
			System.out.println(sb.toString());
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
