package site.suimu.service;

import net.sf.json.JSONObject;
import site.suimu.pojo.QianMouse;

public interface QianMouseService {
    String INSERT_SUCCESS = "成功添加";

    String INSERT_FAILED = "添加失败";

    String DELETE_SUCCESS = "删除成功";

    String DELETE_FAILED = "删除失败";

    String UPDATE_SUCCESS = "更新成功";

    String UPDATE_FAILED = "更新失败";

    // 查询所有人员信息,并封装成一个json对象
    JSONObject selAll(QianMouse qianMouse);

    // 新建一个
    String insertQianMouse(QianMouse qianMouse);

    // 根据name删除
    String deleteQianMouse(String phone, int id);

    //update
    String updateQianMouse(QianMouse qianMouse);
}
