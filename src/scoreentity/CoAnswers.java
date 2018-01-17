package scoreentity;

public class CoAnswers {
	private String completionId;
	private String coanswer;
	public CoAnswers() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CoAnswers(String completionId, String coanswer) {
		super();
		this.completionId = completionId;
		this.coanswer = coanswer;
	}
	@Override
	public String toString() {
		return "CoAnswers [completionId=" + completionId + ", coanswer=" + coanswer + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((coanswer == null) ? 0 : coanswer.hashCode());
		result = prime * result + ((completionId == null) ? 0 : completionId.hashCode());
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
		CoAnswers other = (CoAnswers) obj;
		if (coanswer == null) {
			if (other.coanswer != null)
				return false;
		} else if (!coanswer.equals(other.coanswer))
			return false;
		if (completionId == null) {
			if (other.completionId != null)
				return false;
		} else if (!completionId.equals(other.completionId))
			return false;
		return true;
	}
	public String getCompletionId() {
		return completionId;
	}
	public void setCompletionId(String completionId) {
		this.completionId = completionId;
	}
	public String getCoanswer() {
		return coanswer;
	}
	public void setCoanswer(String coanswer) {
		this.coanswer = coanswer;
	}
	
}
