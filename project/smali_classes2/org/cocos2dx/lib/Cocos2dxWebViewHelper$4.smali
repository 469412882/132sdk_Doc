.class Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$4;->a:I

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$4;->b:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$4;->c:I

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$4;->d:I

    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$4;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$2()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$4;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxWebView;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$4;->b:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$4;->c:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$4;->d:I

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$4;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setWebViewRect(IIII)V

    :cond_0
    return-void
.end method
