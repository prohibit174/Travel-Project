package travel.users.mapper;

import travel.users.model.Users;

public interface UsersMapper {

	public int insertUsers(Users users);
	public Integer idCheck(String string);
}
