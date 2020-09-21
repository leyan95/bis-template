package org.hv.template.domain.port.out;

import org.hv.template.domain.aggregation.Stock;

/**
 * @author wujianc
 */
public interface StockPersistencePort {
    /**
     * 更新库存
     *
     * @param stock 库存
     * @return 影响行数
     */
    int updateStock(Stock stock);
}
