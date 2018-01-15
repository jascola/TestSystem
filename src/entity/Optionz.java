package entity;

/*`option`表的实体类*/
public class Optionz {

	private Integer optionzId;
	private String content;
	private Integer choiceId;
	private Integer isRight;
	public Optionz(Integer optionzId, String content, Integer choiceId, Integer isRight) {
		super();
		this.optionzId = optionzId;
		this.content = content;
		this.choiceId = choiceId;
		this.isRight = isRight;
	}
	public Optionz() {
		
	}
	public Integer getOptionzId() {
		return optionzId;
	}
	public void setOptionzId(Integer optionzId) {
		this.optionzId = optionzId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getChoiceId() {
		return choiceId;
	}
	public void setChoiceId(Integer choiceId) {
		this.choiceId = choiceId;
	}
	public Integer getIsRight() {
		return isRight;
	}
	public void setIsRight(Integer isRight) {
		this.isRight = isRight;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((choiceId == null) ? 0 : choiceId.hashCode());
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + ((isRight == null) ? 0 : isRight.hashCode());
		result = prime * result + ((optionzId == null) ? 0 : optionzId.hashCode());
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
		Optionz other = (Optionz) obj;
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
		if (isRight == null) {
			if (other.isRight != null)
				return false;
		} else if (!isRight.equals(other.isRight))
			return false;
		if (optionzId == null) {
			if (other.optionzId != null)
				return false;
		} else if (!optionzId.equals(other.optionzId))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Option [optionzId=" + optionzId + ", content=" + content + ", choiceId=" + choiceId + ", isRight="
				+ isRight + "]";
	}
	
}
