package funtionSupport;

public class FormatString {
	public static String format(String s){
		String res = s.toLowerCase();
		res = res.trim();
		res = res.replaceAll("\\s+", " ");
		return res;
	}
}
