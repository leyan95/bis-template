package org.hv.template.lock;

import java.util.Date;

/**
 * @author wujianchuan 2020/9/29 14:14
 */
public class MyLockTest {

    private static final ParallelLock LOCK = new ParallelLock(10);

    public static void main(String[] args) {
        for (int i = 0; i < 100; i++) {
            new MyThread(LOCK, "Thread-" + i).start();
        }
    }

    static class MyThread extends Thread {

        ParallelLock lock;

        public MyThread(ParallelLock lock, String name) {
            super(name);
            this.lock = lock;
        }

        @Override
        public void run() {
            lock.lock();
            try {
                System.out.println("Thread " + Thread.currentThread().getName() + " do something thing..." + new Date());
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            } finally {
                lock.unlock();
            }
        }
    }
}
