.class Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;->a:I

    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$2()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxWebView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$3;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setVisibility(I)V

    :cond_1
    return-void
.end method
