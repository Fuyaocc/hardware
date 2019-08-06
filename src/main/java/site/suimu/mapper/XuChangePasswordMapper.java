package site.suimu.mapper;

import org.apache.ibatis.annotations.Update;

public interface XuChangePasswordMapper {

    @Update("Update xu_login set lg_password=#{password} where lg_phone=#{phone}")
    int updatePassword(String phone, String password);
}
