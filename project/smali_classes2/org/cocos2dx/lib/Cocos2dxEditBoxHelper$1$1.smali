.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final synthetic a:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;I)V
    .locals 0

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object p2

    new-instance p3, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;

    iget p4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;->a:I

    invoke-direct {p3, p0, p4, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
