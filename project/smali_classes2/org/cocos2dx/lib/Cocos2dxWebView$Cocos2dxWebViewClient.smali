.class Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lorg/cocos2dx/lib/Cocos2dxWebView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxWebView;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->a:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;)Lorg/cocos2dx/lib/Cocos2dxWebView;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->a:Lorg/cocos2dx/lib/Cocos2dxWebView;

    return-object p0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->a:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;

    invoke-direct {v0, p0, p2}, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->a:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance p2, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$3;

    invoke-direct {p2, p0, p4}, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->a:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->a:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$0(Lorg/cocos2dx/lib/Cocos2dxWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$1;

    invoke-direct {v1, p0, p2}, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to create URI from url"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->a:Lorg/cocos2dx/lib/Cocos2dxWebView;

    invoke-static {v4}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$1(Lorg/cocos2dx/lib/Cocos2dxWebView;)I

    move-result v4

    invoke-direct {v0, v3, v1, v4, p2}, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;-><init>(Ljava/util/concurrent/CountDownLatch;[ZILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    :try_start_1
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$2()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\'shouldOverrideUrlLoading\' failed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    aget-boolean p1, v1, v2

    return p1
.end method
