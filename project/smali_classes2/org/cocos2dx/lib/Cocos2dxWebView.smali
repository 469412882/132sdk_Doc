.class public Lorg/cocos2dx/lib/Cocos2dxWebView;
.super Landroid/webkit/WebView;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxWebView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->b:I

    const-string p1, ""

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->c:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v1, "removeJavascriptInterface"

    new-array v2, p1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "searchBoxJavaBridge_"

    aput-object v1, p1, v0

    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxWebView;->a:Ljava/lang/String;

    const-string p2, "This API level do not support `removeJavascriptInterface`"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;

    invoke-direct {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;-><init>(Lorg/cocos2dx/lib/Cocos2dxWebView;)V

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Landroid/webkit/WebChromeClient;

    invoke-direct {p1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxWebView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1(Lorg/cocos2dx/lib/Cocos2dxWebView;)I
    .locals 0

    iget p0, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->b:I

    return p0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebView;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p2, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    :cond_0
    return p2
.end method

.method public setJavascriptInterfaceScheme(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->c:Ljava/lang/String;

    return-void
.end method

.method public setScalesPageToFit(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    return-void
.end method

.method public setWebViewRect(IIII)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x33

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
