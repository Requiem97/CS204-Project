package bean;

public class Items {
	private String name;
	private int weight,items;
	private double benefit,value;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getItems() {
		return items;
	}
	public void setItem(int items) {
		this.items = items;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public double getBenefit() {
		return benefit;
	}
	public void setBenefit(double benefit) {
		this.benefit = benefit;
	}
	public double getValue() {
		return value;
	}
	public void setValue(double value) {
		this.value = value;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(benefit);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + items;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		temp = Double.doubleToLongBits(value);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + weight;
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
		Items other = (Items) obj;
		if (Double.doubleToLongBits(benefit) != Double.doubleToLongBits(other.benefit))
			return false;
		if (items != other.items)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (Double.doubleToLongBits(value) != Double.doubleToLongBits(other.value))
			return false;
		if (weight != other.weight)
			return false;
		return true;
	}

	
	
}
