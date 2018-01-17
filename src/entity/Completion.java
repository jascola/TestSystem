package entity;

/*`completion`的实体类*/
public class Completion {

	private Integer completionId;
	private Subject subject;
	private String content;
	private String answer;
	public Integer getCompletionId() {
		return completionId;
	}
	public void setCompletionId(Integer completionId) {
		this.completionId = completionId;
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
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public Completion(Integer completionId, Subject subject, String content, String answer) {
		super();
		this.completionId = completionId;
		this.subject = subject;
		this.content = content;
		this.answer = answer;
	}
	public Completion() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Completion [completionId=" + completionId + ", subject=" + subject + ", content=" + content
				+ ", answer=" + answer + "]";
	}
	

	
}
