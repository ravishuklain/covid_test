view: daily_visitation_alldates {
  sql_table_name: public.daily_visitation_alldates ;;

  dimension: brand_name {
    type: string
    sql: ${TABLE}."brand_name" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
  }

  dimension: category_type {
    type: string
    sql: ${TABLE}."category_type" ;;
  }

  dimension_group: dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."dt" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."region" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}."visits" ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}."zip" ;;
  }

  measure: count {
    type: count
    drill_fields: [brand_name]
  }
}
