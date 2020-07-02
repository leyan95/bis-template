package org.hv.template.domain.aggregation;

import org.hv.biscuits.spine.AbstractBisEntity;
import org.hv.pocket.annotation.Column;
import org.hv.pocket.annotation.Entity;

import java.math.BigDecimal;

@Entity(table = "TBL_ORDER")
public class Order extends AbstractBisEntity {

    @Column
    private String orderCode;
    @Column
    private BigDecimal price;

    public String getOrderCode() {
        return orderCode;
    }

    public void setOrderCode(String orderCode) {
        this.orderCode = orderCode;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }
}
