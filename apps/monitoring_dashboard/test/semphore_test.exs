defmodule SemaphoreTest do
  use ExUnit.Case

  test "filter green" do
    api_result = {:ok,  [%{"branches" => [%{"branch_history_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/719421?auth_token=w6dx4haxVPaRxqx5vLW1",   "branch_name" => "pdf-render-performance",   "branch_status_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/719421/status?auth_token=w6dx4haxVPaRxqx5vLW1",   "branch_url" => "https://semaphoreci.com/simplificator-ci/webgate/branches/pdf-render-performance",   "build_info_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/719421/builds/2?auth_token=w6dx4haxVPaRxqx5vLW1",   "build_log_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/719421/builds/2/log?auth_token=w6dx4haxVPaRxqx5vLW1",   "build_number" => 2,   "build_url" => "https://semaphoreci.com/simplificator-ci/webgate/branches/pdf-render-performance/builds/2",   "commit" => %{"author_email" => "lucian.cancescu@simplificator.com",   "author_name" => "Lucian Cancescu",   "id" => "9b7899ddc744cc4b24d7eddc9582ec206fabbcdb",   "message" => "Prototype pdf render",   "timestamp" => "2016-03-03T16:02:28+01:00",   "url" => "https://github.com/docuteam/webgate/commit/9b7899ddc744cc4b24d7eddc9582ec206fabbcdb"},  "finished_at" => "2016-03-03T16:05:31+01:00",   "project_name" => "webgate",   "result" => "failed",   "started_at" => "2016-03-03T16:02:52+01:00"},   %{"branch_history_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/1249801?auth_token=w6dx4haxVPaRxqx5vLW1",   "branch_name" => "review-documentation",   "branch_status_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/1249801/status?auth_token=w6dx4haxVPaRxqx5vLW1",   "branch_url" => "https://semaphoreci.com/simplificator-ci/webgate/branches/review-documentation",   "build_info_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/1249801/builds/1?auth_token=w6dx4haxVPaRxqx5vLW1",   "build_log_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/1249801/builds/1/log?auth_token=w6dx4haxVPaRxqx5vLW1",   "build_number" => 1,   "build_url" => "https://semaphoreci.com/simplificator-ci/webgate/branches/review-documentation/builds/1",   "commit" => %{"author_email" => "a.nef@docuteam.ch",   "author_name" => "Andreas Nef",   "id" => "69314824beeac964be38b20009f0a477307e496a",   "message" => "add RHEL6 install instructions",   "timestamp" => "2017-03-30T15:33:38+02:00",   "url" => "https://github.com/docuteam/webgate/commit/69314824beeac964be38b20009f0a477307e496a"},   "finished_at" => "2017-03-30T15:37:44+02:00",   "project_name" => "webgate",   "result" => "passed",   "started_at" => "2017-03-30T15:34:08+02:00"}],   "created_at" => "2015-03-11T13:39:53+01:00",   "hash_id" => "a336606c-7331-46e4-af98-168bc563c5e5",   "html_url" => "https://semaphoreci.com/simplificator-ci/webgate",   "id" => 9840,   "name" => "webgate",   "owner" => "docuteam",   "servers" => [],   "updated_at" => "2017-04-13T18:05:25+02:00"}]}
    result = Kitto.Jobs.Semaphore.filter(api_result)
    assert result == []
  end

  test "filter red" do
    api_result = {:ok,  [%{"branches" => [%{"branch_history_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/719421?auth_token=w6dx4haxVPaRxqx5vLW1",   "branch_name" => "master",   "branch_status_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/719421/status?auth_token=w6dx4haxVPaRxqx5vLW1",   "branch_url" => "https://semaphoreci.com/simplificator-ci/webgate/branches/pdf-render-performance",   "build_info_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/719421/builds/2?auth_token=w6dx4haxVPaRxqx5vLW1",   "build_log_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/719421/builds/2/log?auth_token=w6dx4haxVPaRxqx5vLW1",   "build_number" => 2,   "build_url" => "https://semaphoreci.com/simplificator-ci/webgate/branches/pdf-render-performance/builds/2",   "commit" => %{"author_email" => "lucian.cancescu@simplificator.com",   "author_name" => "Lucian Cancescu",   "id" => "9b7899ddc744cc4b24d7eddc9582ec206fabbcdb",   "message" => "Prototype pdf render",   "timestamp" => "2016-03-03T16:02:28+01:00",   "url" => "https://github.com/docuteam/webgate/commit/9b7899ddc744cc4b24d7eddc9582ec206fabbcdb"},  "finished_at" => "2016-03-03T16:05:31+01:00",   "project_name" => "webgate",   "result" => "failed",   "started_at" => "2016-03-03T16:02:52+01:00"},   %{"branch_history_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/1249801?auth_token=w6dx4haxVPaRxqx5vLW1",   "branch_name" => "review-documentation",   "branch_status_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/1249801/status?auth_token=w6dx4haxVPaRxqx5vLW1",   "branch_url" => "https://semaphoreci.com/simplificator-ci/webgate/branches/review-documentation",   "build_info_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/1249801/builds/1?auth_token=w6dx4haxVPaRxqx5vLW1",   "build_log_url" => "https://semaphoreci.com/api/v1/projects/a336606c-7331-46e4-af98-168bc563c5e5/1249801/builds/1/log?auth_token=w6dx4haxVPaRxqx5vLW1",   "build_number" => 1,   "build_url" => "https://semaphoreci.com/simplificator-ci/webgate/branches/review-documentation/builds/1",   "commit" => %{"author_email" => "a.nef@docuteam.ch",   "author_name" => "Andreas Nef",   "id" => "69314824beeac964be38b20009f0a477307e496a",   "message" => "add RHEL6 install instructions",   "timestamp" => "2017-03-30T15:33:38+02:00",   "url" => "https://github.com/docuteam/webgate/commit/69314824beeac964be38b20009f0a477307e496a"},   "finished_at" => "2017-03-30T15:37:44+02:00",   "project_name" => "webgate",   "result" => "passed",   "started_at" => "2017-03-30T15:34:08+02:00"}],   "created_at" => "2015-03-11T13:39:53+01:00",   "hash_id" => "a336606c-7331-46e4-af98-168bc563c5e5",   "html_url" => "https://semaphoreci.com/simplificator-ci/webgate",   "id" => 9840,   "name" => "webgate",   "owner" => "docuteam",   "servers" => [],   "updated_at" => "2017-04-13T18:05:25+02:00"}]}
    result = Kitto.Jobs.Semaphore.filter(api_result)
    assert result == [%{label: "webgate: master", value: "failed"}]
  end
end