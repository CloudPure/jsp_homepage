package culture;

public class CultureDto {
	private int year;
	private String kind;
	private String name;
	private String loc;
	
	public CultureDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CultureDto(int year, String kind, String name, String loc) {
		super();
		this.year = year;
		this.kind = kind;
		this.name = name;
		this.loc = loc;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}
	
	
	
	
}
