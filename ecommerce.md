```mermaid
erDiagram
    ACCOUNT {
        number id
        string name
        string password
        string address
        number phone_number
    }

    PRODUCT {
        number id
        string name
        string seller
        number stock
        number price
    }

    CATEGORY {
        number id
        string name
    }

    ORDER {
        number id
        number account_id
        number status_order
        number total_order
        date order_date
    }

    PAYMENTS {
        number id
        number order_id
        string payment_method
        number total_price
        string payment_status
    }

    ORDER_PRODUCT {
        number order_id
        number product_id
    }

    PRODUCT_CATEGORY {
        number product_id
        number category_id
    }

    ACCOUNT ||--o{ ORDER : membuat
    ORDER ||--|| PAYMENTS : dibayar
    ORDER ||--o{ ORDER_PRODUCT : memiliki
    PRODUCT ||--o{ ORDER_PRODUCT : dimiliki
    CATEGORY ||--o{ PRODUCT_CATEGORY : mengelompokkan
    PRODUCT ||--o{ PRODUCT_CATEGORY : termasuk

```

**ACCOUNT dan ORDER**
Satu akun bisa membuat banyak order, dan satu order hanya dibuat oleh satu akun.

**ORDER dan PAYMENTS**
Satu order hanya dapat dibayar oleh satu payment dan satu payment hanya dapat membayar satu order

**ORDER dan ORDER_PRODUCT**
Satu order dapat memiliki banyak product.

**PRODUCT dan ORDER_PRODUCT**
Satu product dapat dimiliki banyak order.

**CATEGORY dan PRODUCT_CATEGORY**
Satu category menggelompokan banyak product.

**PRODUCT dan PRODUCT_CATEGORY**
Satu product mempunyai banyak category.