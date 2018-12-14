.class public Lorg/cocos2dx/lib/Cocos2dxDownloader;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/loopj/android/http/AsyncHttpClient;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->b:Lcom/loopj/android/http/AsyncHttpClient;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->d:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxDownloader;)I
    .locals 0

    iget p0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->a:I

    return p0
.end method

.method static synthetic access$1(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Lcom/loopj/android/http/AsyncHttpClient;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->b:Lcom/loopj/android/http/AsyncHttpClient;

    return-object p0
.end method

.method static synthetic access$2(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method public static cancelAllRequests(Lorg/cocos2dx/lib/Cocos2dxDownloader;)V
    .locals 2

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxDownloader$4;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxDownloader$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static createDownloader(IILjava/lang/String;)Lorg/cocos2dx/lib/Cocos2dxDownloader;
    .locals 2

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-direct {v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;-><init>()V

    iput p0, v0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->a:I

    iget-object p0, v0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->b:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setEnableRedirects(Z)V

    if-lez p1, :cond_0

    iget-object p0, v0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->b:Lcom/loopj/android/http/AsyncHttpClient;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    :cond_0
    iget-object p0, v0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->b:Lcom/loopj/android/http/AsyncHttpClient;

    const-class p0, Ljavax/net/ssl/SSLException;

    invoke-static {p0}, Lcom/loopj/android/http/AsyncHttpClient;->allowRetryExceptionClass(Ljava/lang/Class;)V

    iput-object p2, v0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static createTask(Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;

    invoke-direct {v1, p3, p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;-><init>(Ljava/lang/String;Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method native nativeOnFinish(IIILjava/lang/String;[B)V
.end method

.method native nativeOnProgress(IIJJJ)V
.end method

.method public onFinish(IILjava/lang/String;[B)V
    .locals 8

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/DownloadTask;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;IILjava/lang/String;[B)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method onProgress(IJJJ)V
    .locals 11

    move-object v9, p0

    iget-object v0, v9, Lorg/cocos2dx/lib/Cocos2dxDownloader;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/DownloadTask;

    if-eqz v0, :cond_0

    move-wide v3, p2

    iput-wide v3, v0, Lorg/cocos2dx/lib/DownloadTask;->c:J

    move-wide v5, p4

    iput-wide v5, v0, Lorg/cocos2dx/lib/DownloadTask;->d:J

    move-wide/from16 v7, p6

    iput-wide v7, v0, Lorg/cocos2dx/lib/DownloadTask;->e:J

    goto :goto_0

    :cond_0
    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    :goto_0
    new-instance v10, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;

    move-object v0, v10

    move-object v1, v9

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;IJJJ)V

    invoke-static {v10}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart(I)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/DownloadTask;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/cocos2dx/lib/DownloadTask;->resetStatus()V

    :cond_0
    return-void
.end method
