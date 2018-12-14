.class Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;->a:Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;->a:Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;->access$0(Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;)Lorg/cocos2dx/lib/Cocos2dxWebView;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->access$1(Lorg/cocos2dx/lib/Cocos2dxWebView;)I

    move-result v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->_didFinishLoading(ILjava/lang/String;)V

    return-void
.end method
