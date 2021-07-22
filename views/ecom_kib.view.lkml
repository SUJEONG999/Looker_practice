view: ecom_kib {
  sql_table_name: `test_mark_cheap_price.ecom_kib`
    ;;

  dimension: category {
    hidden: yes
    sql: ${TABLE}.category ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: customer_first_name {
    type: string
    sql: ${TABLE}.customer_first_name ;;
  }

  dimension: customer_full_name {
    type: string
    sql: ${TABLE}.customer_full_name ;;
  }

  dimension: customer_gender {
    type: string
    sql: ${TABLE}.customer_gender ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_last_name {
    type: string
    sql: ${TABLE}.customer_last_name ;;
  }

  dimension: customer_phone {
    type: string
    sql: ${TABLE}.customer_phone ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.day_of_week ;;
  }

  dimension: day_of_week_i {
    type: number
    sql: ${TABLE}.day_of_week_i ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: geoip__city_name {
    type: string
    sql: ${TABLE}.geoip.city_name ;;
    group_label: "Geoip"
    group_item_label: "City Name"
  }

  dimension: geoip__continent_name {
    type: string
    sql: ${TABLE}.geoip.continent_name ;;
    group_label: "Geoip"
    group_item_label: "Continent Name"
  }

  dimension: geoip__country_iso_code {
    type: string
    sql: ${TABLE}.geoip.country_iso_code ;;
    group_label: "Geoip"
    group_item_label: "Country Iso Code"
  }

  dimension: geoip__location__lat {
    type: number
    sql: ${TABLE}.geoip.location.lat ;;
    group_label: "Geoip Location"
    group_item_label: "Lat"
  }

  dimension: geoip__location__lon {
    type: number
    sql: ${TABLE}.geoip.location.lon ;;
    group_label: "Geoip Location"
    group_item_label: "Lon"
  }

  dimension: geoip__region_name {
    type: string
    sql: ${TABLE}.geoip.region_name ;;
    group_label: "Geoip"
    group_item_label: "Region Name"
  }

  dimension: manufacturer {
    hidden: yes
    sql: ${TABLE}.manufacturer ;;
  }

  dimension_group: order {
    type: time
    description: "bq-datetime"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.order_date ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: products {
    hidden: yes
    sql: ${TABLE}.products ;;
  }

  dimension: sku {
    hidden: yes
    sql: ${TABLE}.sku ;;
  }

  dimension: taxful_total_price {
    type: number
    sql: ${TABLE}.taxful_total_price ;;
  }

  dimension: taxless_total_price {
    type: number
    sql: ${TABLE}.taxless_total_price ;;
  }

  dimension_group: timestamp {
    type: time
    description: "bq-datetime"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: total_quantity {
    type: number
    sql: ${TABLE}.total_quantity ;;
  }

  dimension: total_unique_products {
    type: number
    sql: ${TABLE}.total_unique_products ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      customer_last_name,
      customer_first_name,
      customer_full_name,
      geoip__city_name,
      geoip__region_name,
      geoip__continent_name
    ]
  }
}

view: ecom_kib__sku {
  dimension: ecom_kib__sku {
    type: string
    sql: ecom_kib__sku ;;
  }
}

view: ecom_kib__category {
  dimension: ecom_kib__category {
    type: string
    sql: ecom_kib__category ;;
  }
}

view: ecom_kib__products {
  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: base_price {
    type: number
    sql: ${TABLE}.base_price ;;
  }

  dimension: base_unit_price {
    type: number
    sql: ${TABLE}.base_unit_price ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension_group: created {
    type: time
    description: "bq-datetime"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_on ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: discount_percentage {
    type: number
    sql: ${TABLE}.discount_percentage ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: min_price {
    type: number
    sql: ${TABLE}.min_price ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: tax_amount {
    type: number
    sql: ${TABLE}.tax_amount ;;
  }

  dimension: taxful_price {
    type: number
    sql: ${TABLE}.taxful_price ;;
  }

  dimension: taxless_price {
    type: number
    sql: ${TABLE}.taxless_price ;;
  }

  dimension: unit_discount_amount {
    type: number
    sql: ${TABLE}.unit_discount_amount ;;
  }
}

view: ecom_kib__manufacturer {
  dimension: ecom_kib__manufacturer {
    type: string
    sql: ecom_kib__manufacturer ;;
  }
}
