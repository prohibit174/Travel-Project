package travel.carpool.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import travel.carpool.model.Carpool;
import travel.carpool.model.Search;

public interface CarpoolMapper {
	public int insertCarpool(Carpool carpool);
	public List<Carpool> listCarpool(Search search);

}
