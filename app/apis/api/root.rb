module API
  class Root < Grape::API
    # http://localhost:3000/api/
    prefix 'api'

    mount API::Ver1::Root
    #mount API::Ver2::Root

    add_swagger_documentation(
      api_version: "v1",
      base_path: "/",
      hide_documentation_path: true
    )
  end
end