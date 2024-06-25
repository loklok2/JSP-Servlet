package common;  //default 패키지 외의 패키지 ★ 자바빈 규약 1번

public class Person {
	private String name;  // private 멤버 변수 ★ 자바빈 규악 2번
	private int age;		// private 멤버 변수 ★ 자바빈 규악 2번
	
	public Person() {}

	public Person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
}
