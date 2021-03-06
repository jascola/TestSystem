package scoreentity;

import java.util.Arrays;

import entity.Subject;

public class FinallyAnswer {
	private CoAnswers[] coanswers;
	private MultiAnswer[] multianswers;
	private ReAnswer[] reanswers;
	private SingleAnswer[] singleanswers;
	private Subject subject;
	public FinallyAnswer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FinallyAnswer(CoAnswers[] coanswers, MultiAnswer[] multianswers, ReAnswer[] reanswers,
			SingleAnswer[] singleanswers, Subject subject) {
		super();
		this.coanswers = coanswers;
		this.multianswers = multianswers;
		this.reanswers = reanswers;
		this.singleanswers = singleanswers;
		this.subject = subject;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Arrays.hashCode(coanswers);
		result = prime * result + Arrays.hashCode(multianswers);
		result = prime * result + Arrays.hashCode(reanswers);
		result = prime * result + Arrays.hashCode(singleanswers);
		result = prime * result + ((subject == null) ? 0 : subject.hashCode());
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
		FinallyAnswer other = (FinallyAnswer) obj;
		if (!Arrays.equals(coanswers, other.coanswers))
			return false;
		if (!Arrays.equals(multianswers, other.multianswers))
			return false;
		if (!Arrays.equals(reanswers, other.reanswers))
			return false;
		if (!Arrays.equals(singleanswers, other.singleanswers))
			return false;
		if (subject == null) {
			if (other.subject != null)
				return false;
		} else if (!subject.equals(other.subject))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "FinallyAnswer [coanswers=" + Arrays.toString(coanswers) + ", multianswers="
				+ Arrays.toString(multianswers) + ", reanswers=" + Arrays.toString(reanswers) + ", singleanswers="
				+ Arrays.toString(singleanswers) + ", subject=" + subject + "]";
	}
	public CoAnswers[] getCoanswers() {
		return coanswers;
	}
	public void setCoanswers(CoAnswers[] coanswers) {
		this.coanswers = coanswers;
	}
	public MultiAnswer[] getMultianswers() {
		return multianswers;
	}
	public void setMultianswers(MultiAnswer[] multianswers) {
		this.multianswers = multianswers;
	}
	public ReAnswer[] getReanswers() {
		return reanswers;
	}
	public void setReanswers(ReAnswer[] reanswers) {
		this.reanswers = reanswers;
	}
	public SingleAnswer[] getSingleanswers() {
		return singleanswers;
	}
	public void setSingleanswers(SingleAnswer[] singleanswers) {
		this.singleanswers = singleanswers;
	}
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	
}
