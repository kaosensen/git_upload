package com.cathaybk.practice.nt50351.b;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Test6 {
	Map<String,String >map = new HashMap<>();
	List<map>list = new List<map>() {
	};
    public static void main(String[] args) {
        String filePath = "C:\\Users\\Admin\\Desktop\\Java班\\cars.csv"; 

        try (BufferedReader br = new BufferedReader(new FileReader(filePath));) {
            String line;
            
            
            
            while ((line = br.readLine()) != null) {
                System.out.println(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

