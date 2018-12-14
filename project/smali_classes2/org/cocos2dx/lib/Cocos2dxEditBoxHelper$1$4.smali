.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final synthetic a:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;I)V
    .locals 0

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;->a:I

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->closeKeyboard(I)V

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
