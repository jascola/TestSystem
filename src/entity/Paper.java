package entity;

import java.util.List;
import java.util.Set;

public class Paper {

	private List<ChoicePaper> choicepaperlist;
	private Set<Completion> completionset;
	private Set<Recogniz> recognizset;
	public Paper(List<ChoicePaper> choicepaperlist, Set<Completion> completionset, Set<Recogniz> recognizset) {
		super();
		this.choicepaperlist = choicepaperlist;
		this.completionset = completionset;
		this.recognizset = recognizset;
	}
	public List<ChoicePaper> getChoicepaperlist() {
		return choicepaperlist;
	}
	public void setChoicepaperlist(List<ChoicePaper> choicepaperlist) {
		this.choicepaperlist = choicepaperlist;
	}
	public Set<Completion> getCompletionset() {
		return completionset;
	}
	public void setCompletionset(Set<Completion> completionset) {
		this.completionset = completionset;
	}
	public Set<Recogniz> getRecognizset() {
		return recognizset;
	}
	public void setRecognizset(Set<Recogniz> recognizset) {
		this.recognizset = recognizset;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((choicepaperlist == null) ? 0 : choicepaperlist.hashCode());
		result = prime * result + ((completionset == null) ? 0 : completionset.hashCode());
		result = prime * result + ((recognizset == null) ? 0 : recognizset.hashCode());
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
		Paper other = (Paper) obj;
		if (choicepaperlist == null) {
			if (other.choicepaperlist != null)
				return false;
		} else if (!choicepaperlist.equals(other.choicepaperlist))
			return false;
		if (completionset == null) {
			if (other.completionset != null)
				return false;
		} else if (!completionset.equals(other.completionset))
			return false;
		if (recognizset == null) {
			if (other.recognizset != null)
				return false;
		} else if (!recognizset.equals(other.recognizset))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Paper [choicepaperlist=" + choicepaperlist + ", completionset=" + completionset + ", recognizset="
				+ recognizset + "]";
	}
	public Paper() {
		super();
		// TODO Auto-generated constructor stub
	}
}
