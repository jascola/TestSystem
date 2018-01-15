package entity;

/*`subject`表的实体类*/
public class Choice {
	
	private Integer choiceId;
	private Integer subjectId;
	private String content;
	private Integer isMulti;
	public Integer getChoiceId() {
		return choiceId;
	}
	public void setChoiceId(Integer choiceId) {
		this.choiceId = choiceId;
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
	public Integer getIsMulti() {
		return isMulti;
	}
	public void setIsMulti(Integer isMulti) {
		this.isMulti = isMulti;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((choiceId == null) ? 0 : choiceId.hashCode());
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + ((isMulti == null) ? 0 : isMulti.hashCode());
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
		Choice other = (Choice) obj;
		if (choiceId == null) {
			if (other.choiceId != null)
				return false;
		} else if (!choiceId.equals(other.choiceId))
			return false;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (isMulti == null) {
			if (other.isMulti != null)
				return false;
		} else if (!isMulti.equals(other.isMulti))
			return false;
		if (subjectId == null) {
			if (other.subjectId != null)
				return false;
		} else if (!subjectId.equals(other.subjectId))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Subject [choiceId=" + choiceId + ", subjectId=" + subjectId + ", content=" + content + ", isMulti="
				+ isMulti + "]";
	}
	public Choice(Integer choiceId, Integer subjectId, String content, Integer isMulti) {
		super();
		this.choiceId = choiceId;
		this.subjectId = subjectId;
		this.content = content;
		this.isMulti = isMulti;
	}
	public Choice() {
		
	}
	
}
