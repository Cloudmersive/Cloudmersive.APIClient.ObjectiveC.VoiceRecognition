Remove-Item –path ./client –recurse

Invoke-WebRequest -Uri 'https://api-console.cloudmersive.com/swagger/api/spec/speech' -OutFile '.\speech-api-swagger.json'
(Get-Content .\speech-api-swagger.json).replace('localhost', "api.cloudmersive.com") | Set-Content .\speech-api-swagger.json
(Get-Content .\speech-api-swagger.json).replace('"http"', '"https"') | Set-Content .\speech-api-swagger.json



& java -jar swagger-codegen-cli.jar generate -i .\speech-api-swagger.json -l objc -o client -c packageconfig.json
(Get-Content ./client/CloudmersiveVoiceRecognitionApiClient.podspec).replace('CloudmersiveVoiceRecognitionApiClient/**/*.{m,h}', "client/CloudmersiveVoiceRecognitionApiClient/**/*.{m,h}") | Set-Content ./client/CloudmersiveVoiceRecognitionApiClient.podspec
(Get-Content ./client/CloudmersiveVoiceRecognitionApiClient.podspec).replace('CloudmersiveVoiceRecognitionApiClient/**/*.h', "client/CloudmersiveVoiceRecognitionApiClient/**/*.h") | Set-Content ./client/CloudmersiveVoiceRecognitionApiClient.podspec