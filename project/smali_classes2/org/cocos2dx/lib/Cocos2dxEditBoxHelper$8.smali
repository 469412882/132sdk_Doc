.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->a:I

    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$3()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setVisibility(I)V

    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->requestFocus()Z

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->a:I

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->openKeyboard(I)V

    return-void

    :cond_1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;->a:I

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->closeKeyboard(I)V

    :cond_2
    return-void
.end method
