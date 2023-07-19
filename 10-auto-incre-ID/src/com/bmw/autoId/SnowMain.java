package com.bmw.autoId;

public class SnowMain {
    public static void main(String[] args) {
        long workerId = 1;
        long datacenterId = 3;
        SnowflakeIdGenerator idGenerator = new SnowflakeIdGenerator(workerId, datacenterId);
        for (int i = 0; i < 10; i++) {
            long id = idGenerator.generateId();
            System.out.println("Generated ID: " + id);
        }
    }
}