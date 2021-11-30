connection: "htf2021"

# include all the views
include: "/views/**/*.view"

datagroup: htf2021_group4_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: htf2021_group4_default_datagroup

explore: appearance {}

explore: bnbreservations {}

explore: company_employees {}

explore: companies {}

explore: aib_bnbs_nyc {}

explore: event_reviews {
  join: events {
    type: left_outer
    sql_on: ${event_reviews.event_id} = ${events.id} ;;
    relationship: many_to_one
  }
}

explore: bnbcheckins {}

explore: ages {}

explore: physical_characteristics {}

explore: events {}

explore: financial_status {}

explore: people {}

explore: nationalities {}

explore: locations {}

explore: religions {}

explore: gender {}

explore: sub_departments {}

explore: ride_info {}

explore: ride_passengers {}

explore: roles {}

explore: taxis {}

explore: taxi_rides {
  join: taxis {
    type: left_outer
    sql_on: ${taxi_rides.taxi_id} = ${taxis.id} ;;
    relationship: many_to_one
  }
}
