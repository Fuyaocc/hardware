package site.suimu.mapper;

import static org.junit.Assert.*;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import site.suimu.pojo.ChenUser;

import javax.annotation.Resource;

//配置spring和junit整合，这样junit在启动时就会加载spring容器
@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring的配置文件
@ContextConfiguration({"classpath:applicationContext.xml"})
public class ChenUserMapperTest {

    @Resource
    ChenUserMapper chenUserMapper;

    @org.junit.Test
    public void insert() {
        ChenUser chenUser = new ChenUser();
        chenUser.setPhone("182512806333");
        int status = chenUserMapper.insert(chenUser);
        System.out.println(status);
    }
}
