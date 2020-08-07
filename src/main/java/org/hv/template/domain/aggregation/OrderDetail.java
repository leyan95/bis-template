package org.hv.template.domain.aggregation;

import org.hv.biscuits.spine.AbstractWithOperatorEntity;
import org.hv.pocket.annotation.Column;
import org.hv.pocket.annotation.Entity;
import org.hv.pocket.annotation.ManyToOne;

import java.math.BigDecimal;

/**
 * @author wujianchuan 2020/8/7 15:23
 */
@Entity(table = "TBL_ORDER_DETAIL")
public class OrderDetail extends AbstractWithOperatorEntity {

    @Column
    private String name;
    @Column
    private BigDecimal price;
    @ManyToOne(clazz = Order.class, upBridgeField = "uuid")
    private String orderUuid;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getOrderUuid() {
        return orderUuid;
    }

    public void setOrderUuid(String orderUuid) {
        this.orderUuid = orderUuid;
    }
}
