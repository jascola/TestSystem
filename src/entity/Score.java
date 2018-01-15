package entity;

/*`score`表的实体类*/
public class Score {

	private Integer scoreId;
	private Integer userId;
	private Integer subjectId;
	private Double score;
	public Score(Integer scoreId, Integer userId, Integer subjectId, Double score) {
		super();
		this.scoreId = scoreId;
		this.userId = userId;
		this.subjectId = subjectId;
		this.score = score;
	}
	public Score() {
		
	}
	public Integer getScoreId() {
		return scoreId;
	}
	public void setScoreId(Integer scoreId) {
		this.scoreId = scoreId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(Integer subjectId) {
		this.subjectId = subjectId;
	}
	public Double getScore() {
		return score;
	}
	public void setScore(Double score) {
		this.score = score;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((score == null) ? 0 : score.hashCode());
		result = prime * result + ((scoreId == null) ? 0 : scoreId.hashCode());
		result = prime * result + ((subjectId == null) ? 0 : subjectId.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
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
		Score other = (Score) obj;
		if (score == null) {
			if (other.score != null)
				return false;
		} else if (!score.equals(other.score))
			return false;
		if (scoreId == null) {
			if (other.scoreId != null)
				return false;
		} else if (!scoreId.equals(other.scoreId))
			return false;
		if (subjectId == null) {
			if (other.subjectId != null)
				return false;
		} else if (!subjectId.equals(other.subjectId))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Score [scoreId=" + scoreId + ", userId=" + userId + ", subjectId=" + subjectId + ", score=" + score
				+ "]";
	}
	
}
