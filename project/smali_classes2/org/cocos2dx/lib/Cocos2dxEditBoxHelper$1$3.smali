.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final synthetic a:Lorg/cocos2dx/lib/Cocos2dxEditBox;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;Lorg/cocos2dx/lib/Cocos2dxEditBox;I)V
    .locals 0

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;->a:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;->a:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getInputType()I

    move-result p1

    const/high16 p2, 0x20000

    and-int/2addr p1, p2

    if-eq p1, p2, :cond_0

    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;->b:I

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->closeKeyboard(I)V

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
