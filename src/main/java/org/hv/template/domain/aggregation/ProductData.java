package org.hv.template.domain.aggregation;

import org.hv.pocket.annotation.Column;
import org.hv.pocket.annotation.Entity;
import org.hv.pocket.model.BaseEntity;

import java.math.BigDecimal;
import java.time.LocalDate;

/**
 * @author wujianc
 */
@Entity(table = "TBL_PRODUCT_DATA", businessName = "产品档案")
public class ProductData extends BaseEntity {
    private static final long serialVersionUID = -6475583572907576967L;
    @Column
    private String name;
    @Column
    private String code;
    @Column
    private LocalDate expiryDate;
    @Column
    private BigDecimal price;
    @Column
    private String baseUnit;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public LocalDate getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(LocalDate expiryDate) {
        this.expiryDate = expiryDate;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getBaseUnit() {
        return baseUnit;
    }

    public void setBaseUnit(String baseUnit) {
        this.baseUnit = baseUnit;
    }
}
