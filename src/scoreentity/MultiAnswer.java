package scoreentity;

import java.util.Arrays;

public class MultiAnswer {
	private String [] optionzIds;
	private String  multiId;
	public MultiAnswer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MultiAnswer(String[] optionzIds, String multiId) {
		super();
		this.optionzIds = optionzIds;
		this.multiId = multiId;
	}
	@Override
	public String toString() {
		return "MultiAnswer [optionzIds=" + Arrays.toString(optionzIds) + ", multiId=" + multiId + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((multiId == null) ? 0 : multiId.hashCode());
		result = prime * result + Arrays.hashCode(optionzIds);
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
		MultiAnswer other = (MultiAnswer) obj;
		if (multiId == null) {
			if (other.multiId != null)
				return false;
		} else if (!multiId.equals(other.multiId))
			return false;
		if (!Arrays.equals(optionzIds, other.optionzIds))
			return false;
		return true;
	}
	public String[] getOptionzIds() {
		return optionzIds;
	}
	public void setOptionzIds(String[] optionzIds) {
		this.optionzIds = optionzIds;
	}
	public String getMultiId() {
		return multiId;
	}
	public void setMultiId(String multiId) {
		this.multiId = multiId;
	}
	
	
}
