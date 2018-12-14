.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:F

.field private final synthetic b:F

.field private final synthetic c:F

.field private final synthetic d:J


# direct methods
.method constructor <init>(FFFJ)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->a:F

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->b:F

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->c:F

    iput-wide p4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->a:F

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->b:F

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->c:F

    iget-wide v3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->onSensorChanged(FFFJ)V

    return-void
.end method
