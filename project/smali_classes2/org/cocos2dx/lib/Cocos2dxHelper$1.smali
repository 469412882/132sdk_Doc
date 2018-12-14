.class Lorg/cocos2dx/lib/Cocos2dxHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p2}, Lcom/enhance/gameservice/IGameTuningService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/enhance/gameservice/IGameTuningService;

    move-result-object p1

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$0(Lcom/enhance/gameservice/IGameTuningService;)V

    const/4 p1, 0x7

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->fastLoading(I)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$1()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$2()Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
