.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;ILjava/lang/CharSequence;)V
    .locals 0

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->a:I

    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->b:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->a:I

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->__editBoxEditingChanged(ILjava/lang/String;)V

    return-void
.end method
