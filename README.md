# UIWebViewCustomUserAgent
修改UIWebView的UserAgent。

### 源文件 Source
./Classes/UIWebView+customUA.h   
./Classes/UIWebView+customUA.m   

### 方法 Methods   
`+ [UIWebView setUseragent:newAgent]`   
直接修改 UserAgent   
`+ [UIWebView appendUseragent:append]`   
在原UserAgent基础上添加一段   
`- [UIWebView logUserAgent]`   
打印UserAgent   

### 使用 Use   
在`- [AppDelegate application:didFinishedLaunchingWithOptions]`方法内，调用`setUseragent`或`appendUseragent`方法修改。   
