package org.hv.template.adapters.persistence;

import org.hv.biscuits.repository.AbstractRepository;
import org.hv.template.domain.aggregation.Stock;
import org.hv.template.domain.port.out.StockPersistencePort;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/**
 * @author wujianc
 */
@Component
public class StockPersistence extends AbstractRepository implements StockPersistencePort {
    private static final Logger LOGGER = LoggerFactory.getLogger(StockPersistence.class);

    @Override
    public int updateStock(Stock stock) {
        LOGGER.info("更新库存");
        return 0;
    }
}
