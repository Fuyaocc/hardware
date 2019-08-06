package site.suimu.service;

import net.sf.json.JSONObject;
import site.suimu.pojo.ChengCPU;

import java.util.List;

public interface ChengCPUService {

    String INSERT_SUCCESS = "成功添加";

    String INSERT_FAILED = "添加失败";

    String DELETE_SUCCESS = "删除成功";

    String DELETE_FAILED = "删除失败";


    public JSONObject selectCPU(ChengCPU chengCPU);

    public String deleteCPU(int id);

    public String insertCPU(ChengCPU chengCPU);




}
