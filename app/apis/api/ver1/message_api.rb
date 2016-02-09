module API
  module Ver1
    class MessageApi < Grape::API
      resource :message do

        # GET /api/v1/message
        desc 'Return all products.'
        get do
          Message.all
        end

        # GET /api/v1/message/{:id}
        desc 'Return a Message.'
        params do
          requires :id, type: Integer, desc: 'Message id.'
        end
        get ':id' do
          Message.find(params[:id])
        end
      end
    end
  end
end