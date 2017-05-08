package travel.users.mapper;

import java.util.Map;

import travel.users.model.Users;

public interface UsersMapper {

	 int insertUsers(Users users);
	 Integer idCheck(String string);
	int insertUsers2(Users users);
	 Users userDetail(String u_id);
	 int userUpdate(String u_id);
	 Integer checkPw(Map<String, String> map);
}
