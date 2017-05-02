package travel.users.mapper;

import travel.users.model.Users;

public interface UsersMapper {

	 int insertUsers(Users users);
	 Integer idCheck(String string);
	int insertUsers2(Users users);
	 Users userDetail(String u_id);
	 void userUpdate(String u_id);
}
