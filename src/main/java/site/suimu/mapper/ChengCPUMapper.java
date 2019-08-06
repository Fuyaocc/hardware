package site.suimu.mapper;

import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import site.suimu.pojo.ChengCPU;

import java.util.List;

public interface ChengCPUMapper {


    public List<JSONObject> selectCPU(ChengCPU chengCPU);

    @Delete("delete from cheng_cpu where cpu_id=#{id}")
    public int deleteCPU(@Param("id") int id);

    @Insert("insert into cheng_cpu (lg_phone,cpu_brand,cpu_price,cpu_set,cpu_suitable_type,cpu_core_counts,cpu_slot_type,cpu_thread_counts,cpu_image_url,cpu_grade,cpu_link) values (#{phone},#{brand},#{price},#{set},#{suitableType},#{coreCounts},#{slotType},#{threadCounts},#{imageUrl},#{grade},#{link})")
    public int insertCPU(ChengCPU chengCPU);




}
