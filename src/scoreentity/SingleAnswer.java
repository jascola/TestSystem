package scoreentity;

public class SingleAnswer {
	private String singleId;
	private String optionzId;
	public String getSingleId() {
		return singleId;
	}
	public void setSingleId(String singleId) {
		this.singleId = singleId;
	}
	public String getOptionzId() {
		return optionzId;
	}
	public void setOptionzId(String optionzId) {
		this.optionzId = optionzId;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((optionzId == null) ? 0 : optionzId.hashCode());
		result = prime * result + ((singleId == null) ? 0 : singleId.hashCode());
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
		SingleAnswer other = (SingleAnswer) obj;
		if (optionzId == null) {
			if (other.optionzId != null)
				return false;
		} else if (!optionzId.equals(other.optionzId))
			return false;
		if (singleId == null) {
			if (other.singleId != null)
				return false;
		} else if (!singleId.equals(other.singleId))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "SingleAnswer [singleId=" + singleId + ", optionzId=" + optionzId + "]";
	}
	public SingleAnswer(String singleId, String optionzId) {
		super();
		this.singleId = singleId;
		this.optionzId = optionzId;
	}
	public SingleAnswer() {
		super();
		// TODO Auto-generated constructor stub
	}
}
