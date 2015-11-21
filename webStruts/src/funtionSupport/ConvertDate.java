package funtionSupport;

import java.sql.Date;

public class ConvertDate {
	public static Date convert(String date) {
		// Date d=new Date
		String[] s;
		s = date.split(" ");
		int day, month, year;
		day = Integer.parseInt(s[0]);
		year = Integer.parseInt(s[2]) - 1900;
		switch (s[1]) {
		case "January,": {
			month = 0;
			break;
		}
		case "February,": {
			month = 1;
			break;
		}
		case "March,": {
			month = 2;
			break;
		}
		case "April,": {
			month = 3;
			break;
		}
		case "May,": {
			month = 4;
			break;
		}
		case "June,": {
			month = 5;
			break;
		}
		case "July,": {
			month = 6;
			break;
		}
		case "August,": {
			month = 7;
			break;
		}
		case "September,": {
			month = 8;
			break;
		}
		case "October,": {
			month = 9;
			break;
		}
		case "November,": {
			month = 10;
			break;
		}

		default: {
			month = 11;
			break;
		}

		}
		Date res = new Date(year, month, day);
		return res;
	}

	public static void main(String[] args) {
		Date d = convert("7 December, 2015");
		System.out.println(d);
	}
}
