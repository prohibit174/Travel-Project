package travel.carpool.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import travel.carpool.model.Carpool;
import travel.carpool.model.Search;

public interface CarpoolMapper {
	 int insertCarpool(Carpool carpool);
	 List<Carpool> listCarpool(Search search);
	 int deleteCarpool(Carpool carpool);
	Carpool detailCarpool(String c_num);

}
