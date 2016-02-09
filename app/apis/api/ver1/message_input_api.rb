module API
  module Ver1
    class MessageInputApi < Grape::API
      resource :messageinput do

        # GET /api/v1/message
        desc 'Return all Message.'
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

        # POST /api/v1/message/
        desc 'Create a Message.'
        params do
          requires :title , type: String, desc: 'Message title.'
          requires :body , type: String, desc: 'Message body.'
        end
        post do
          Message.create!({
                           title: params[:title],
                           body: params[:body]
                       })
        end

        # PUT /api/v1/message/{:id}
        desc 'Update a Message.'
        params do
          requires :title , type: String, desc: 'Message title.'
          requires :body , type: String, desc: 'Message body.'
        end
        put ':id' do
          Message.find(params[:id]).update({
                           title: params[:title],
                           body: params[:body]
                      })
        end

        # POST /api/v1/message/{:id}
        desc 'Delete a Message.'
        delete ':id' do
          Message.find(params[:id]).delete
        end

      end
    end
  end
end