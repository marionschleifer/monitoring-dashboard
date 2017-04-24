defmodule NewRelicTest do
  use ExUnit.Case

  import Kitto.Api.NewRelic

  test "filter green" do
    api_result = {:ok, %{"links" => %{"server.alert_policy" => "/v2/alert_policies/{alert_policy_id}"}, "servers" => [%{"account_id" => 72424, "health_status" => "green", "host" => "amlin-blue-space", "id" => 2632575, "last_reported_at" => "2017-04-14T09:31:56+00:00", "links" => %{"alert_policy" => 38166}, "name" => "amlin-blue-space", "reporting" => true, "summary" => %{"cpu" => 0.65, "cpu_stolen" => 0.15, "disk_io" => 0.11, "fullest_disk" => 38.5, "fullest_disk_free" => 31739000000, "memory" => 12.8, "memory_total" => 4158652416, "memory_used" => 532676608}}, %{"account_id" => 72424, "health_status" => "green", "host" => "amlin-blue-space-staging", "id" => 4529254, "last_reported_at" => "2017-04-14T09:31:52+00:00", "links" => %{"alert_policy" => 38166}, "name" => "amlin-blue-space-staging", "reporting" => true, "summary" => %{"cpu" => 0.96, "cpu_stolen" => 0.04, "disk_io" => 0.21, "fullest_disk" => 18.7, "fullest_disk_free" => 16381000000, "memory" => 15.0, "memory_total" => 2108686336, "memory_used" => 316669952}}, %{"account_id" => 72424, "health_status" => "green", "host" => "backbone", "id" => 717503, "last_reported_at" => "2017-04-14T09:31:15+00:00", "links" => %{"alert_policy" => 38166}, "name" => "backbone", "reporting" => true, "summary" => %{"cpu" => 0.17, "cpu_stolen" => 0.0, "disk_io" => 0.0, "fullest_disk" => 58.7, "fullest_disk_free" => 1186995000000, "memory" => 4.58, "memory_total" => 16775118848, "memory_used" => 767557632}}, %{"account_id" => 72424, "health_status" => "green", "host" => "bikezermatt", "id" => 7003067, "last_reported_at" => "2017-04-14T09:31:37+00:00", "links" => %{"alert_policy" => 38166}, "name" => "bikezermatt", "reporting" => true, "summary" => %{"cpu" => 0.63, "cpu_stolen" => 0.27, "disk_io" => 0.04, "fullest_disk" => 58.0, "fullest_disk_free" => 4330000000, "memory" => 19.7, "memory_total" => 1050673152, "memory_used" => 206569472}}, %{"account_id" => 72424, "health_status" => "green", "host" => "billboard", "id" => 717610, "last_reported_at" => "2017-04-14T09:32:15+00:00", "links" => %{"alert_policy" => 38166}, "name" => "billboard", "reporting" => true, "summary" => %{"cpu" => 2.38, "cpu_stolen" => 0.05, "disk_io" => 0.0, "fullest_disk" => 47.8, "fullest_disk_free" => 5014000000, "memory" => 23.8, "memory_total" => 2109734912, "memory_used" => 502267904}}]}}
    result = filter(api_result)
    assert result == []
  end

  test "filter red" do
    api_result = {:ok, %{"links" => %{"server.alert_policy" => "/v2/alert_policies/{alert_policy_id}"}, "servers" => [%{"account_id" => 72424, "health_status" => "green", "host" => "amlin-blue-space", "id" => 2632575, "last_reported_at" => "2017-04-14T09:31:56+00:00", "links" => %{"alert_policy" => 38166}, "name" => "amlin-blue-space", "reporting" => true, "summary" => %{"cpu" => 0.65, "cpu_stolen" => 0.15, "disk_io" => 0.11, "fullest_disk" => 38.5, "fullest_disk_free" => 31739000000, "memory" => 12.8, "memory_total" => 4158652416, "memory_used" => 532676608}}, %{"account_id" => 72424, "health_status" => "red", "host" => "amlin-blue-space-staging", "id" => 4529254, "last_reported_at" => "2017-04-14T09:31:52+00:00", "links" => %{"alert_policy" => 38166}, "name" => "amlin-blue-space-staging", "reporting" => true, "summary" => %{"cpu" => 0.96, "cpu_stolen" => 0.04, "disk_io" => 0.21, "fullest_disk" => 18.7, "fullest_disk_free" => 16381000000, "memory" => 15.0, "memory_total" => 2108686336, "memory_used" => 316669952}}, %{"account_id" => 72424, "health_status" => "green", "host" => "backbone", "id" => 717503, "last_reported_at" => "2017-04-14T09:31:15+00:00", "links" => %{"alert_policy" => 38166}, "name" => "backbone", "reporting" => true, "summary" => %{"cpu" => 0.17, "cpu_stolen" => 0.0, "disk_io" => 0.0, "fullest_disk" => 58.7, "fullest_disk_free" => 1186995000000, "memory" => 4.58, "memory_total" => 16775118848, "memory_used" => 767557632}}, %{"account_id" => 72424, "health_status" => "green", "host" => "bikezermatt", "id" => 7003067, "last_reported_at" => "2017-04-14T09:31:37+00:00", "links" => %{"alert_policy" => 38166}, "name" => "bikezermatt", "reporting" => true, "summary" => %{"cpu" => 0.63, "cpu_stolen" => 0.27, "disk_io" => 0.04, "fullest_disk" => 58.0, "fullest_disk_free" => 4330000000, "memory" => 19.7, "memory_total" => 1050673152, "memory_used" => 206569472}}, %{"account_id" => 72424, "health_status" => "green", "host" => "billboard", "id" => 717610, "last_reported_at" => "2017-04-14T09:32:15+00:00", "links" => %{"alert_policy" => 38166}, "name" => "billboard", "reporting" => true, "summary" => %{"cpu" => 2.38, "cpu_stolen" => 0.05, "disk_io" => 0.0, "fullest_disk" => 47.8, "fullest_disk_free" => 5014000000, "memory" => 23.8, "memory_total" => 2109734912, "memory_used" => 502267904}}]}}
    result = filter(api_result)
    assert result == [%{label: "amlin-blue-space-staging", value: "Down"}]
  end
end