.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final synthetic a:Lorg/cocos2dx/lib/Cocos2dxEditBox;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;Lorg/cocos2dx/lib/Cocos2dxEditBox;I)V
    .locals 0

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->a:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object p1

    new-instance p2, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$1;

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->b:I

    invoke-direct {p2, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;I)V

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->a:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->a:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-virtual {p2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setSelection(I)V

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$1()Lorg/cocos2dx/lib/ResizeLayout;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/ResizeLayout;->setEnableForceDoLayout(Z)V

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setSoftKeyboardShown(Z)V

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$2()Ljava/lang/String;

    move-result-object p1

    const-string p2, "edit box get focus"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->a:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setVisibility(I)V

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object p1

    new-instance p2, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$2;

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->b:I

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;->a:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-direct {p2, p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;ILorg/cocos2dx/lib/Cocos2dxEditBox;)V

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$1()Lorg/cocos2dx/lib/ResizeLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/ResizeLayout;->setEnableForceDoLayout(Z)V

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$2()Ljava/lang/String;

    move-result-object p1

    const-string p2, "edit box lose focus"

    goto :goto_0
.end method
