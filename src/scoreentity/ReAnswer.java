package scoreentity;

public class ReAnswer {
	private String recogniz;
	private String reanswer;
	public String getRecogniz() {
		return recogniz;
	}
	public void setRecogniz(String recogniz) {
		this.recogniz = recogniz;
	}
	public String getReanswer() {
		return reanswer;
	}
	public void setReanswer(String reanswer) {
		this.reanswer = reanswer;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((reanswer == null) ? 0 : reanswer.hashCode());
		result = prime * result + ((recogniz == null) ? 0 : recogniz.hashCode());
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
		ReAnswer other = (ReAnswer) obj;
		if (reanswer == null) {
			if (other.reanswer != null)
				return false;
		} else if (!reanswer.equals(other.reanswer))
			return false;
		if (recogniz == null) {
			if (other.recogniz != null)
				return false;
		} else if (!recogniz.equals(other.recogniz))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "ReAnswer [recogniz=" + recogniz + ", reanswer=" + reanswer + "]";
	}
	public ReAnswer(String recogniz, String reanswer) {
		super();
		this.recogniz = recogniz;
		this.reanswer = reanswer;
	}
	public ReAnswer() {
		super();
		// TODO Auto-generated constructor stub
	}
}
