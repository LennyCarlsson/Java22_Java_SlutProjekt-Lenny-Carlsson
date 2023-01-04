package model;

public class WeatherBean {

	private String cityStr;
	private String countryStr;
	private String cloudsStr;
	private String updateString;
	private String splitDateTime;
	private String updateDateString;
	private String tempString;
	private String tempCelciusString;

	public WeatherBean(String cityStr, String countryStr) {

		this.cityStr = cityStr;
		this.countryStr = countryStr;

	}

	public String getCityStr() {
		
		return cityStr;
	}

	public String getCountryStr() {
		
		return countryStr;
	}

	public String getCloudsStr() {
		
		return cloudsStr;
	}

	public void setCloudsStr(String cloudsStr) {
		
		this.cloudsStr = cloudsStr;
	}

	public void setLastUpdate(String updateString) {
		
		this.updateString = updateString;

	}

	public String getLastUpdate() {
		
		splitDateTime = updateString.substring(0, 10) + " at: " + updateString.substring(11, 19);
		return splitDateTime;
	}

	public String getLastDateUpdate() {
		
		this.updateDateString = updateString.substring(0, 10);
		return updateDateString;
	}

	public void setLastTemp(String tempString) {
		
		this.tempString = tempString;
	}

	public String getLastTemp() {
		
		return tempString;
	}

	public String getLastCelciusTemp() {

		double kelvinTemp = Double.parseDouble(tempString);
		double celsiusTemp = kelvinTemp - 273.15;
		tempCelciusString = String.format("%.2f", celsiusTemp);

		return tempCelciusString;
	}
}
