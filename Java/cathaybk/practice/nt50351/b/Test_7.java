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

public class Test_7 {
	static Scanner scanner = new Scanner(System.in);
	public static final String UPDATE_CARS_SQL = "update STUDENT.CARS set MIN_PRICE = ? ,PRICE = ? where MANUFACTURER = ? and TYPE = ?";
	public static final String INSERT_CARS_SQL = "insert into STUDENT.CARS (MANUFACTURER, TYPE, MIN_PRICE, PRICE) values (?, ?, ?, ?)";
	public static final String DELETE_CARS_SQL = "delete from STUDENT.CARS where MANUFACTURER = ? and TYPE=?";
	public static final String SELECT_CARS_SQL = "select * from STUDENT.CARS where MANUFACTURER = ? and TYPE = ?";
	public static final String CONN_URL = "jdbc:oracle:thin:@localhost:1521:XE";

	public static void main(String[] args) {
		doQuery();
		System.out.println("==========================================================");
		System.out.println("請選擇以下指令輸入:select、insert、update、delete");
		String inputString = scanner.nextLine();
		if (inputString.equals("select")) {
			doSelect();
		} else if (inputString.equals("insert")) {
			doInsert();
		} else if (inputString.equals("update")) {
			doUpdate();
		} else {
			doDelete();
		}
	}

	private static void doDelete() {
		try (Connection conn = DriverManager.getConnection(CONN_URL, "student", "student123456");) {
			try (PreparedStatement pstmt = conn.prepareStatement(DELETE_CARS_SQL);) {
				System.out.println("請輸入製造商");
				String manufacturer = scanner.nextLine();
				System.out.println("請輸入類型");
				String type = scanner.nextLine();
				conn.setAutoCommit(false);
				pstmt.setString(1, manufacturer);
				pstmt.setString(2, type);

				pstmt.executeUpdate();
				conn.commit();

				System.out.println("刪除成功");
			} catch (Exception e) {
				try {
					conn.rollback();
					System.out.println("刪除失敗");
				} catch (SQLException sqle) {
					sqle.printStackTrace();
				}
				e.printStackTrace();
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}

	public static void doInsert() {
		try (Connection conn = DriverManager.getConnection(CONN_URL, "student", "student123456");) {
			try {
				System.out.println("請輸入製造商");
				String manufacturer = scanner.nextLine();
				System.out.println("請輸入類型");
				String type = scanner.nextLine();
				System.out.println("請輸入底價");
				BigDecimal minprice = scanner.nextBigDecimal();
				System.out.println("請輸入售價");
				BigDecimal price = scanner.nextBigDecimal();

				conn.setAutoCommit(false);
				PreparedStatement pstmt = conn.prepareStatement(INSERT_CARS_SQL);
				pstmt.setString(1, manufacturer);
				pstmt.setString(2, type);
				pstmt.setBigDecimal(3, minprice);
				pstmt.setBigDecimal(4, price);
				pstmt.executeUpdate();

				conn.commit();
				System.out.println("新增成功");
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

	public static void doUpdate() {
		try (Connection conn = DriverManager.getConnection(CONN_URL, "student", "student123456");) {
			try (PreparedStatement pstmt = conn.prepareStatement(UPDATE_CARS_SQL);) {
				System.out.println("請輸入製造商");
				String manufacturer = scanner.nextLine();
				System.out.println("請輸入類型");
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

				conn.commit();
				System.out.println("更新成功");
			} catch (Exception e) {
				try {
					conn.rollback();
					System.out.println("更新失敗");
				} catch (SQLException sqle) {
					sqle.printStackTrace();
				}
				e.printStackTrace();
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}

	public static void doQuery() {

		try (Connection conn = DriverManager.getConnection(CONN_URL, "student", "student123456");
				PreparedStatement pstmt = conn.prepareStatement("select * from STUDENT.CARS ");) {
			List<Map<String, String>> list = new ArrayList<Map<String, String>>();
			ResultSet rs = pstmt.executeQuery();
			StringBuilder sb = new StringBuilder();
			sb.append("查詢結果：\n");
			while (rs.next()) {
				Map<String, String> map = new HashMap<>();
				map.put("MANUFACTURER", rs.getString("MANUFACTURER"));
				map.put("TYPE", rs.getString("TYPE"));
				map.put("PRICE", rs.getString("PRICE"));
				map.put("MIN_PRICE", rs.getString("MIN_PRICE"));
				list.add(map);

				sb.append(String.format("製造商：%7s 型號：%7s 售價：%s 底價：%3s\n", map.get("MANUFACTURER"), map.get("TYPE"),
						map.get("PRICE"), map.get("MIN_PRICE")));
			}
			System.out.println(sb.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void doSelect() {

		try (Connection conn = DriverManager.getConnection(CONN_URL, "student", "student123456");
				PreparedStatement pstmt = conn
						.prepareStatement(SELECT_CARS_SQL);) {
			System.out.println("請輸入製造商");
			String manufacturer = scanner.nextLine();
			System.out.println("請輸入類型");
			String type = scanner.nextLine();
			pstmt.setString(1, manufacturer);
			pstmt.setString(2, type);
			ResultSet rs = pstmt.executeQuery();
			StringBuilder sb = new StringBuilder();
			while (rs.next()) {
				sb.append("製造商： ").append(rs.getString("MANUFACTURER")).append("  類型：").append(rs.getString("TYPE"))
						.append("   底價：").append(rs.getString("MIN_PRICE")).append("   售價：")
						.append(rs.getString("PRICE"));
				System.out.println(sb.toString());
				sb.setLength(0);
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
