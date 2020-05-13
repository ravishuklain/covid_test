view: covid_insights {
  sql_table_name: public.covid_insights ;;

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

  dimension: index_1 {
    type: number
    sql: ${TABLE}."index_1" ;;
  }

  dimension: precovid_daily_visits {
    type: number
    sql: ${TABLE}."precovid_daily_visits" ;;
  }

  dimension: precovid_total_visits {
    type: number
    sql: ${TABLE}."precovid_total_visits" ;;
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
