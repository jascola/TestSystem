package entity;

public class ScoreQueryDto {
	private Integer userId;
	private String userName;
	private Subject subject;
	private Double score;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	public Double getScore() {
		return score;
	}
	public void setScore(Double score) {
		this.score = score;
	}
	public ScoreQueryDto(Integer userId, String userName, Subject subject, Double score) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.subject = subject;
		this.score = score;
	}
	public ScoreQueryDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ScoreQueryDto [userId=" + userId + ", userName=" + userName + ", subject=" + subject + ", score="
				+ score + "]";
	}
	
	
	
}
