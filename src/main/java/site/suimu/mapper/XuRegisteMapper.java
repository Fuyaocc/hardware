package site.suimu.mapper;

import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import site.suimu.pojo.XuLogin;

import java.util.List;

public interface XuRegisteMapper {

    List<JSONObject> selectOne(@Param("phone") String phone);


    @Insert("insert into xu_login (lg_phone,lg_password) val ues(#{phone},#{password})")
    int insertXuLogin(XuLogin xuLogin);
}
