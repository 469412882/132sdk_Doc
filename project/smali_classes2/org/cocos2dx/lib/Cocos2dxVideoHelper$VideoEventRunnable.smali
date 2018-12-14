.class Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;->a:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;->a:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;->b:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->nativeExecuteVideoCallback(II)V

    return-void
.end method
