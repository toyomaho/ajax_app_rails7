class ApplicationController < ActionController::Base
  before_action :basic_auth
end

private

def basic_auth
  authenticate_or_request_with_http_basic do |username, password|
    # 環境変数を読み込む記述に変更
    username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
  end
end
