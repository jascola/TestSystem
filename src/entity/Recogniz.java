package entity;

/*`recogniz`的实体类*/
public class Recogniz {

	private Integer recognizId;
	private Subject subject;
	private String content;
	private String answer;
	public Integer getRecognizId() {
		return recognizId;
	}
	public void setRecognizId(Integer recognizId) {
		this.recognizId = recognizId;
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
	public Recogniz(Integer recognizId, Subject subject, String content, String answer) {
		super();
		this.recognizId = recognizId;
		this.subject = subject;
		this.content = content;
		this.answer = answer;
	}
	public Recogniz() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Recogniz [recognizId=" + recognizId + ", subject=" + subject + ", content=" + content + ", answer="
				+ answer + "]";
	}
	
	
}
