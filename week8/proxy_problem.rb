# proxy_problem
# class ReportService
#   def fetch(user_id)
#     puts "Fetching report for user #{user_id} from external API..."
#     sleep(2) # simulate slow API
#     "Report data for user #{user_id}"
#   end
# end


# class ReportsController
#   def show
#     user_id = params[:user_id]

#     service = ReportService.new
#     report = service.fetch(user_id)

#     render json: { report: report }
#   end
# end

# fixing the problem with a proxy
class ReportService
  def fetch(user_id)
    puts "Fetching report for user #{user_id} from external API..."
    sleep(2) # simulate slow API
    "Report data for user #{user_id}"
  end
end

# here we use a proxy to cache the results of the ReportService.
class ReportServiceProxy
  def initialize
    @service = ReportService.new
    @report_service = {}
  end

  def fetch(user_id)
    @cache[user_id] ||= @report_service.fetch(user_id)
  end
end

class ReportsController
  def show
    user_id = params[:user_id]

    proxy = ReportServiceProxy.new
    report = proxy.fetch(user_id)

    render json: { report: report }
  end
end
