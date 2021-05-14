package com.edu.look.controller;

public class Test {
	public static void main(String[] args) {
		double money = 1000;
		double rate = 5/10000;
		int a =625;
		double b = 13/100;
		double baijifen = a*money;
		System.out.println(baijifen);
		for(int i=0;i<180;i++){
			System.out.println(baijifen);
			baijifen = baijifen + baijifen*rate*5.25;
		}
	}

}
