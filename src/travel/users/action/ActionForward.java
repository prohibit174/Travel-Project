package travel.users.action;

public class ActionForward {

	private boolean isRedirect;
	//redirect가 true면 redirect, false면 dispathcer해라.
	//어떻게 해당 jsp를 찾아갈껀지
	
	private String path;
	//어디로 찾아갈껀지
	
	public boolean isRedirect(){
		return isRedirect;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	
}
