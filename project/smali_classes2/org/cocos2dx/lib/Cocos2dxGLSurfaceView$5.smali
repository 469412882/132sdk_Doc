.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private final synthetic b:I

.field private final synthetic c:F

.field private final synthetic d:F


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->b:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->c:F

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->a:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$3(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->b:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->c:F

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->d:F

    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleActionDown(IFF)V

    return-void
.end method
