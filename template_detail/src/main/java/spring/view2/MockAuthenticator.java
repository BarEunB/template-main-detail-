package spring.view2;


public class MockAuthenticator implements Authenticator {
	public void authenticate(String id, String password) {
		if (!id.equals("abc")) {
			throw new AuthenticationException("invalid id "+id);
		}
	}  

}  
