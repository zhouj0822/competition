package org.user;

import org.docshare.mvc.Controller;

public class IndexController extends Controller {
	public void index(){
		jump("/unlogin/Top");
		
		render();
	}
}
