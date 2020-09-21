package org.hv.template.domain.aggregation;

import org.hv.pocket.annotation.Column;
import org.hv.pocket.annotation.Entity;
import org.hv.pocket.annotation.Join;
import org.hv.pocket.annotation.ManyToOne;
import org.hv.pocket.constant.JoinMethod;
import org.hv.pocket.model.BaseEntity;

import java.math.BigDecimal;

/**
 * @author wujianc
 */
@Entity(table = "TBL_ORDER_DETAIL", businessName = "订单明细")
public class OrderDetail extends BaseEntity {

    private static final long serialVersionUID = -2606279551164110703L;
    @Column
    private String code;
    @Column
    private String productDataUuid;
    @Join(columnName = "PRODUCT_DATA_UUID", columnSurname = "PRODUCT_DATA_NAME",
            joinTable = "TBL_PRODUCT_DATA", joinTableSurname = "T1",
            joinMethod = JoinMethod.LEFT, bridgeColumn = "UUID", destinationColumn = "NAME")
    private String productName;
    @Column
    private BigDecimal quantity;
    @Column
    private BigDecimal cost;
    @ManyToOne(clazz = Order.class, upBridgeField = "uuid")
    private String orderUuid;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getProductDataUuid() {
        return productDataUuid;
    }

    public void setProductDataUuid(String productDataUuid) {
        this.productDataUuid = productDataUuid;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public BigDecimal getQuantity() {
        return quantity;
    }

    public void setQuantity(BigDecimal quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getCost() {
        return cost;
    }

    public void setCost(BigDecimal cost) {
        this.cost = cost;
    }

    public String getOrderUuid() {
        return orderUuid;
    }

    public void setOrderUuid(String orderUuid) {
        this.orderUuid = orderUuid;
    }
}
