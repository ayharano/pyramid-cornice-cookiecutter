<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Swagger UI</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Source+Code+Pro:300,600|Titillium+Web:400,600,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ '${request.static_url(' }}'{{cookiecutter.repo_name}}:static/bower_components/swagger-ui/dist/swagger-ui.css'){{ '}' }}" >
    <link rel="icon" type="image/png" href="{{ '${request.static_url(' }}'{{cookiecutter.repo_name}}:static/bower_components/swagger-ui/dist/favicon-32x32.png'){{ '}' }}" sizes="32x32" />
    <link rel="icon" type="image/png" href="{{ '${request.static_url(' }}'{{cookiecutter.repo_name}}:static/bower_components/swagger-ui/dist/favicon-16x16.png'){{ '}' }}" sizes="16x16" />
    <style>
      html
      {
        box-sizing: border-box;
        overflow: -moz-scrollbars-vertical;
        overflow-y: scroll;
      }
      *,
      *:before,
      *:after
      {
        box-sizing: inherit;
      }
      body
      {
        margin:0;
        background: #fafafa;
      }
    </style>
  </head>

  <body>
    <div id="swagger-ui"></div>

    <script src="{{ '${request.static_url(' }}'{{cookiecutter.repo_name}}:static/bower_components/swagger-ui/dist/swagger-ui-bundle.js'){{ '}' }}"> </script>
    <script src="{{ '${request.static_url(' }}'{{cookiecutter.repo_name}}:static/bower_components/swagger-ui/dist/swagger-ui-standalone-preset.js'){{ '}' }}"> </script>
    <script>
    window.onload = function() {
      // Build a system
      const ui = SwaggerUIBundle({
        url: "{{ '${ request.host_url }' }}/__api__",
        dom_id: '#swagger-ui',
        deepLinking: true,
        presets: [
          SwaggerUIBundle.presets.apis,
          SwaggerUIStandalonePreset
        ],
        plugins: [
          SwaggerUIBundle.plugins.DownloadUrl
        ],
        layout: "StandaloneLayout"
      })
      window.ui = ui
    }
  </script>
  </body>
</html>