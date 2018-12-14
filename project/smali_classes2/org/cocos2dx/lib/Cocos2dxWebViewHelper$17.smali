.class Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$17;->a:I

    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$17;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$2()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$17;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxWebView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$17;->b:Z

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setScalesPageToFit(Z)V

    :cond_0
    return-void
.end method
