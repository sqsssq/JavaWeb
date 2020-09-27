package sq;

public class UserService {
    // 用户登陆业务逻辑
    public boolean login(String username, String password) {
        if ("sq".equals(username) && "180110910823".equals(password)) {
            return true;
        } else {
            return false;

        }
    }
}
