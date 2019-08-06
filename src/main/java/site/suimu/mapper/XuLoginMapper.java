package site.suimu.mapper;

import net.sf.json.JSONObject;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import site.suimu.pojo.XuLogin;

public interface XuLoginMapper {

    JSONObject selectOne(@Param("phone") String phone, @Param("password") String password);

    /*@Update("Update xu_login set lg_sessionid=#{sessionid} where lg_phone=#{phone}")
    int updateSessionid(String phone,String sessionid);*/
}
