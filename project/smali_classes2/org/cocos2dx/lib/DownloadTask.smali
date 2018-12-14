.class Lorg/cocos2dx/lib/DownloadTask;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/loopj/android/http/RequestHandle;

.field b:Lcom/loopj/android/http/AsyncHttpResponseHandler;

.field c:J

.field d:J

.field e:J


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/DownloadTask;->a:Lcom/loopj/android/http/RequestHandle;

    iput-object v0, p0, Lorg/cocos2dx/lib/DownloadTask;->b:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/DownloadTask;->resetStatus()V

    return-void
.end method


# virtual methods
.method resetStatus()V
    .locals 0

    return-void
.end method
