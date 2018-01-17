package entity;

/*`score`表的实体类*/
public class Score {

	private Integer scoreId;
	private User user;
	private Subject subject;
	private Double score;
	public Integer getScoreId() {
		return scoreId;
	}
	public void setScoreId(Integer scoreId) {
		this.scoreId = scoreId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
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
	public Score(Integer scoreId, User user, Subject subject, Double score) {
		super();
		this.scoreId = scoreId;
		this.user = user;
		this.subject = subject;
		this.score = score;
	}
	public Score() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Score [scoreId=" + scoreId + ", user=" + user + ", subject=" + subject + ", score=" + score + "]";
	}
	
	
}
