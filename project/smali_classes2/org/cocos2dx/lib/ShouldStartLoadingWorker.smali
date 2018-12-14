.class Lorg/cocos2dx/lib/ShouldStartLoadingWorker;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/concurrent/CountDownLatch;

.field private b:[Z

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;[ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->b:[Z

    iput p3, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->c:I

    iput-object p4, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->b:[Z

    iget v1, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->c:I

    iget-object v2, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->_shouldStartLoading(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    iget-object v0, p0, Lorg/cocos2dx/lib/ShouldStartLoadingWorker;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
