package entity;

public class UserQueryDto {
	public UserQueryDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	private String userName;
	private Integer identity;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Integer getIdentity() {
		return identity;
	}
	public void setIdentity(Integer identity) {
		this.identity = identity;
	}
	public UserQueryDto(String userName, Integer identity) {
		super();
		this.userName = userName;
		this.identity = identity;
	}
	
}
