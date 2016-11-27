package test;

import beans.User;

public class Test {

	public static void main(String[] args) {
		
		//Creating new user bean
		User user = new User("divyeshchudasma@abc.com", "abcdfhglg");
		
		if(user.validate()) {
			System.out.println("Bean validates OK.");
		}
		else {
			System.out.println(user.getMessage());
		}
	}
}
