package entity;

/*`completion`的实体类*/
public class Completion {

	private Integer completionId;
	private Integer subjectId;
	private String content;
	private String answer;
	public Completion(Integer completionId, Integer subjectId, String content, String answer) {
		super();
		this.completionId = completionId;
		this.subjectId = subjectId;
		this.content = content;
		this.answer = answer;
	}
	public Completion() {
		
	}
	
	public Integer getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(Integer subjectId) {
		this.subjectId = subjectId;
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
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((answer == null) ? 0 : answer.hashCode());
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + ((completionId == null) ? 0 : completionId.hashCode());
		result = prime * result + ((subjectId == null) ? 0 : subjectId.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Completion other = (Completion) obj;
		if (answer == null) {
			if (other.answer != null)
				return false;
		} else if (!answer.equals(other.answer))
			return false;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (completionId == null) {
			if (other.completionId != null)
				return false;
		} else if (!completionId.equals(other.completionId))
			return false;
		if (subjectId == null) {
			if (other.subjectId != null)
				return false;
		} else if (!subjectId.equals(other.subjectId))
			return false;
		return true;
	}
	public Integer getCompletionId() {
		return completionId;
	}
	public void setCompletionId(Integer completionId) {
		this.completionId = completionId;
	}
	@Override
	public String toString() {
		return "Completion [completionId=" + completionId + ", subjectId=" + subjectId + ", content=" + content
				+ ", answer=" + answer + "]";
	}

	
}
