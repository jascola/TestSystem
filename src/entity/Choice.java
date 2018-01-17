package entity;

/*`subject`表的实体类*/
public class Choice {
	
	private Integer choiceId;
	private Subject subject;
	private String content;
	private Integer isMulti;
	public Integer getChoiceId() {
		return choiceId;
	}
	public void setChoiceId(Integer choiceId) {
		this.choiceId = choiceId;
	}
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getIsMulti() {
		return isMulti;
	}
	public void setIsMulti(Integer isMulti) {
		this.isMulti = isMulti;
	}
	public Choice(Integer choiceId, Subject subject, String content, Integer isMulti) {
		super();
		this.choiceId = choiceId;
		this.subject = subject;
		this.content = content;
		this.isMulti = isMulti;
	}
	public Choice() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Choice [choiceId=" + choiceId + ", subject=" + subject + ", content=" + content + ", isMulti=" + isMulti
				+ "]";
	}
	
	
}
