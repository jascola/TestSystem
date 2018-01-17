package entity;

public class ChoiceQueryDto {
	private Integer choiceId;
	private String content;
	private Integer subjectId;
	public Integer getChoiceId() {
		return choiceId;
	}
	public void setChoiceId(Integer choiceId) {
		this.choiceId = choiceId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(Integer subjectId) {
		this.subjectId = subjectId;
	}
	public ChoiceQueryDto(Integer choiceId, String content, Integer subjectId) {
		super();
		this.choiceId = choiceId;
		this.content = content;
		this.subjectId = subjectId;
	}
	public ChoiceQueryDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ChoiceQueryDto [choiceId=" + choiceId + ", content=" + content + ", subjectId=" + subjectId + "]";
	}
	
	
}
