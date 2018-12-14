.class Lorg/cocos2dx/lib/Cocos2dxActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Z)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->a:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->a:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0(Lorg/cocos2dx/lib/Cocos2dxActivity;)Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$1;->b:Z

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setKeepScreenOn(Z)V

    return-void
.end method
