### Run container    
```docker run -itd --name basicYamlToDokrCompose -u 1000 -v `pwd`:/app -w /app ruby```

### Gerar yaml    
```docker exec -it basicYamlToDokrCompose bash -c "ruby app.rb"```



![alt text](https://raw.githubusercontent.com/TiagoTi/BasicYamlToDokrCompose/master/Readme.gif "Logo Title Text 1")
