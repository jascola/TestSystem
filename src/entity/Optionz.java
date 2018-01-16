package entity;

/*`option`表的实体类*/
public class Optionz {

	private Integer optionzId;
	private String content;
	private Choice choice;
	private Integer isRight;
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
	public Choice getChoice() {
		return choice;
	}
	public void setChoice(Choice choice) {
		this.choice = choice;
	}
	public Integer getIsRight() {
		return isRight;
	}
	public void setIsRight(Integer isRight) {
		this.isRight = isRight;
	}
	public Optionz(Integer optionzId, String content, Choice choice, Integer isRight) {
		super();
		this.optionzId = optionzId;
		this.content = content;
		this.choice = choice;
		this.isRight = isRight;
	}
	public Optionz() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Optionz [optionzId=" + optionzId + ", content=" + content + ", choice=" + choice + ", isRight="
				+ isRight + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((choice == null) ? 0 : choice.hashCode());
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
		if (choice == null) {
			if (other.choice != null)
				return false;
		} else if (!choice.equals(other.choice))
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
	
	
}
