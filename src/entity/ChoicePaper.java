package entity;

import java.util.Arrays;
import java.util.List;

public class ChoicePaper {

	private Choice choice;
	private List<Optionz> optionz;
	public ChoicePaper(Choice choice, List<Optionz> optionz) {
		super();
		this.choice = choice;
		this.optionz = optionz;
	}
	public ChoicePaper() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ChoicePaper [choice=" + choice + ", optionz=" + optionz + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((choice == null) ? 0 : choice.hashCode());
		result = prime * result + ((optionz == null) ? 0 : optionz.hashCode());
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
		ChoicePaper other = (ChoicePaper) obj;
		if (choice == null) {
			if (other.choice != null)
				return false;
		} else if (!choice.equals(other.choice))
			return false;
		if (optionz == null) {
			if (other.optionz != null)
				return false;
		} else if (!optionz.equals(other.optionz))
			return false;
		return true;
	}
	public Choice getChoice() {
		return choice;
	}
	public void setChoice(Choice choice) {
		this.choice = choice;
	}
	public List<Optionz> getOptionz() {
		return optionz;
	}
	public void setOptionz(List<Optionz> optionz) {
		this.optionz = optionz;
	}
	
	
	
}
