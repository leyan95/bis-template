package org.hv.template.lock;

import java.util.concurrent.locks.AbstractQueuedSynchronizer;

/**
 * 可同时执行指定数量的任务
 *
 * @author wujianchuan 2020/9/29 11:43
 */
public class ParallelLock {

    private final Sync sync;

    public ParallelLock(int parallelThreadCount) {
        sync = new Sync(parallelThreadCount);
    }

    static final class Sync extends AbstractQueuedSynchronizer {

        private static final long serialVersionUID = 8083049666357266306L;

        Sync(int count) {
            setState(count);
        }

        @Override
        protected int tryAcquireShared(int arg) {
            for (; ; ) {
                int count = getState();
                int newCount = count - arg;
                //NOTE: 小于0获取同步状态失败
                if (newCount < 0 || compareAndSetState(count, newCount)) {
                    return newCount;
                }
            }
        }

        @Override
        protected boolean tryReleaseShared(int arg) {
            for (; ; ) {
                int count = getState();
                int newCount = arg + count;
                if (compareAndSetState(count, newCount)) {
                    return true;
                }
            }
        }
    }

    public void lock() {
        sync.acquireShared(1);
    }

    public void unlock() {
        sync.releaseShared(1);
    }
}
