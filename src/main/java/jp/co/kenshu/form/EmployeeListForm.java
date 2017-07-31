package jp.co.kenshu.form;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

public class EmployeeListForm {

	@NotEmpty(message = "名前は必須です")
	private String name;
	@NotNull(message = "年齢は必須です")
	@Min(value = 18, message = "{value}以上の値を設定してください")
	private Integer age;
	private String memo;

	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name = name;
	}

	public Integer getAge(){
		return age;
	}
	public void setAge(Integer age){
		this.age = age;
	}

	public String getMemo(){
		return memo;
	}
	public void setMemo(String memo){
		this.memo = memo;
	}
}
