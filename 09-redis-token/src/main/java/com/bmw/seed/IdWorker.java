package com.bmw.seed;


import java.net.InetAddress;
import java.util.concurrent.atomic.AtomicInteger;

public class IdWorker {
    //当前机器对应的编码，在初始化的时候加载一次,所以要设置为static,表示属于整个类
    private static String machineId;
    static {
        InetAddress ia = null;
        String machineName = "";
        try {
            ia = InetAddress.getLocalHost();
            //机器有多个IP的，获取首个
            machineName += ia.getHostAddress();
            //一个机器可能部署多个程序，但路径肯定不一样，获取当前项目路径的地址
            machineName += System.getProperty("user.dir");
            //然后在数据库中存储一张表，字段是自增id和机器名，然后先查询，如果没有的话insert，就可以用自增id作为机器唯一标识了
            //此处先做个范例，设个默认值
            machineId = "2";
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    //生成自增id的相关属性
    private static AtomicInteger currentSequence = new AtomicInteger(100);
    public static String nextId() {
        StringBuffer sb = new StringBuffer(machineId);
        long currentTimes = System.currentTimeMillis();
        //原子增加并且返回值
        int result = currentSequence.getAndIncrement();
        //new AtomicInteger(100)表示从100开始自增，是为了笔墨1和21还有101这种位数不一样需要补零的情况
        //为了防止AtomicInteger一直增长导致位数变化，此处设置当数字大于某个值后将值设置为原点，也就是每毫秒不生成800个订单ID就没问题
        //上一步到这一步可能有并发问题，也就是同时有多个程序已经自增了，所以会出现901,902和903等情况
        if (result > 900){
            currentSequence.set(100);;
        }
        sb.append(machineId).append(currentTimes).append("-").append(result);
        return sb.toString();
    }
    public static void main(String[] args) {
        IdWorker idWorker = new IdWorker();
        System.out.println(new IdWorker().nextId());
    }
}