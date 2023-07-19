package com.bmw.autoId;

public class SnowflakeIdGenerator {
    // 起始的时间戳
    private final long START_TIMESTAMP = 1626578821000L; // 2021-07-18 00:00:21 GMT+0
    // 每部分占用的位数
    private final long SEQUENCE_BITS = 12; // 序列号位数
    private final long WORKER_ID_BITS = 5; // 工作机器ID位数
    private final long DATACENTER_ID_BITS = 5; // 数据中心ID位数
    // 每部分的最大值
    private final long MAX_SEQUENCE = ~(-1L << SEQUENCE_BITS);
    private final long MAX_WORKER_ID = ~(-1L << WORKER_ID_BITS);
    private final long MAX_DATACENTER_ID = ~(-1L << DATACENTER_ID_BITS);
    // 每部分向左的位移
    private final long WORKER_ID_SHIFT = SEQUENCE_BITS;
    private final long DATACENTER_ID_SHIFT = SEQUENCE_BITS + WORKER_ID_BITS;
    private final long TIMESTAMP_SHIFT = SEQUENCE_BITS + WORKER_ID_BITS + DATACENTER_ID_BITS;
    private long workerId; // 工作机器ID
    private long datacenterId; // 数据中心ID
    private long sequence = 0L; // 序列号
    private long lastTimestamp = -1L; // 上次生成ID的时间戳
    public SnowflakeIdGenerator(long workerId, long datacenterId) {
        if (workerId > MAX_WORKER_ID || workerId < 0) {
            throw new IllegalArgumentException("Invalid worker ID");
        }
        if (datacenterId > MAX_DATACENTER_ID || datacenterId < 0) {
            throw new IllegalArgumentException("Invalid datacenter ID");
        }
        this.workerId = workerId;
        this.datacenterId = datacenterId;
    }
    public synchronized long generateId() {
        long timestamp = System.currentTimeMillis();
        if (timestamp < lastTimestamp) {
            throw new RuntimeException("Clock moved backwards. Refusing to generate ID");
        }
        if (timestamp == lastTimestamp) {
            sequence = (sequence + 1) & MAX_SEQUENCE;
            if (sequence == 0) {
                timestamp = getNextTimestamp(lastTimestamp);
            }
        } else {
            sequence = 0L;
        }
        lastTimestamp = timestamp;
        return ((timestamp - START_TIMESTAMP) << TIMESTAMP_SHIFT) |
                (datacenterId << DATACENTER_ID_SHIFT) |
                (workerId << WORKER_ID_SHIFT) |
                sequence;
    }
    private long getNextTimestamp(long lastTimestamp) {
        long timestamp = System.currentTimeMillis();
        while (timestamp <= lastTimestamp) {
            timestamp = System.currentTimeMillis();
        }
        return timestamp;
    }
}
