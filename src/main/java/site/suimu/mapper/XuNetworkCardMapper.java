package site.suimu.mapper;

import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.Param;
import site.suimu.pojo.XuNetworkCard;

import java.util.List;

public interface XuNetworkCardMapper {
    List<JSONObject> selectAll(XuNetworkCard xuNetworkCard);
    int insertInto(XuNetworkCard xuNetworkCard);
    int update(XuNetworkCard xuNetworkCard);
    int delete(@Param("phone") String phone, @Param("id") int id);
}
