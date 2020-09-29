package org.hv.template.domain.workunit;

import org.hv.biscuits.annotation.Affairs;
import org.hv.biscuits.annotation.Service;
import org.hv.biscuits.domain.even.Monitor;
import org.hv.biscuits.service.AbstractService;
import org.hv.template.domain.aggregation.Order;
import org.hv.template.domain.aggregation.Stock;
import org.hv.template.domain.port.in.StockWorkUnitPort;
import org.hv.template.domain.port.out.StockPersistencePort;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import static org.hv.template.domain.constant.EvenConstant.EVEN_ORDER_CREATE;

/**
 * @author wujianc
 */
@Service(session = "template")
public class StockWorkUnit extends AbstractService implements StockWorkUnitPort, Monitor {
    private static final Logger LOGGER = LoggerFactory.getLogger(StockWorkUnit.class);

    private final StockPersistencePort persistencePort;

    public StockWorkUnit(StockPersistencePort persistencePort) {
        this.persistencePort = persistencePort;
    }

    @Override
    @Affairs
    public boolean deductingTheInventory(Order order) {
        LOGGER.info("TODO: 遍历订单明细计算库存量进行扣减");
        Stock stock = new Stock();
        persistencePort.updateStock(stock);
        return true;
    }

    @Override
    public String[] evenSourceIds() {
        return new String[]{EVEN_ORDER_CREATE};
    }

    @Override
    public void execute(Object... objects) throws Exception {
        boolean success = this.deductingTheInventory((Order) objects[0]);
        if (!success) {
            throw new Exception("扣减库存失败");
        }
    }
}
