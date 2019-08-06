<%--
  Created by IntelliJ IDEA.
  User: 钱黎磊
  Date: 2018/12/22
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/Pages/template/cdnmain.jsp" %>
<div id="mianleft">
    <el-collapse v-model="activeNames" @change="handleChange">
        <el-collapse-item title="装机硬件" name="1">
            <div class = "listBC" v-for = "item in names1">
                <a  :href="item.link">
                    {{ item.name }}
                </a>
            </div>
        </el-collapse-item>
        <el-collapse-item title="硬件外设" name="2">
            <div class = "listBC" v-for = "item in names2">
                <a  :href="item.link" >
                {{ item.name }}
                </a>
            </div>
        </el-collapse-item>
        <el-collapse-item title="扩展配件" name="3">
            <div class = "listBC"  v-for = "item in names3">
                <a :href="item.link">
                {{ item.name }}
                </a>
            </div>
        </el-collapse-item>
    </el-collapse>
</div>

<script>
    new Vue({
        el: '#mianleft',
        data: function () {
            return {
                activeNames: ['1'],
                names1:[
                    {
                        name: '主板', link: '${pageContext.request.contextPath}/Pages/xu/motherboard/xuMotherBoard.jsp'
                    },
                    {
                        name: '显卡', link:''
                    },
                    {
                        name: 'CPU', link:'${pageContext.request.contextPath}/Pages/cheng/cpu/cpumemory.jsp'
                    },
                    {
                        name: '内存', link:'${pageContext.request.contextPath}/Pages/qian/memory/qianMemory.jsp'
                    },
                    {
                        name:  '硬盘', link:'${pageContext.request.contextPath}/Pages/chen/Disk/ChenDisk.jsp'
                    },
                    {
                        name: '机箱', link:'${pageContext.request.contextPath}/Pages/xu/chassis/xuChassis.jsp'
                    },
                    {
                        name:  '电源', link:'#'
                    },
                    {
                        name:  '固态硬盘', link:'${pageContext.request.contextPath}/Pages/cheng/ssd/chengssd.jsp'
                    },
                    {
                        name:  '光驱', link:'${pageContext.request.contextPath}/Pages/qian/cd/qianCD.jsp'
                    },
                    {
                        name:  '声卡', link:'${pageContext.request.contextPath}/Pages/chen/SoundCard/ChenSoundCard.jsp'
                    },
                    {
                        name:  '网卡', link:'${pageContext.request.contextPath}/Pages/xu/networkcard/xuNetwordCard.jsp'
                    },
                    {
                        name:   '液晶显示器', link:'${pageContext.request.contextPath}/Pages/wang/monitor/wangMonitor.jsp'
                    }
                ],
                names2:[
                    {
                        name:   '音箱', link:'#'
                    },
                    {
                        name:  '鼠标', link:'${pageContext.request.contextPath}/Pages/qian/mouse/qianMouse.jsp'
                    },
                    {
                        name:   '键盘', link:'${pageContext.request.contextPath}/Pages/chen/Keyboard/ChenKeyboard.jsp'
                    },
                    {
                        name:   '键鼠配件', link:'#'
                    },
                    {
                        name:  '音箱配件', link:'#'
                    },
                    {
                        name:   '移动硬盘', link:'#'
                    },
                    {
                        name:   'U盘', link:'${pageContext.request.contextPath}/Pages/wang/UDisk/wangUDisk.jsp'
                    },
                    {
                        name:   '摄像头', link:'${pageContext.request.contextPath}/Pages/wang/Camera/WangCamera.jsp'
                    }
                ],
                names3:[
                    {
                        name:  '蓝牙适配器', link:'${pageContext.request.contextPath}/Pages/xu/bluetooth/xuBluetooth.jsp'
                    },
                    {
                        name:   '硬盘/光驱盒', link:'#'
                    },
                    {
                        name:   '连接线转接卡', link:'#'
                    },
                    {
                        name:    '多串口卡', link:'${pageContext.request.contextPath}/Pages/qian/mspc/qianMspc.jsp'
                    },
                    {
                        name:   '显示芯片', link:'${pageContext.request.contextPath}/Pages/chen/Display_Chip/ChenDisplayChip.jsp'
                    },

                ],
            }
        },
        methods: {
            handleChange: function (val) {
                console.log(val);
            },
        }
    })
</script>


