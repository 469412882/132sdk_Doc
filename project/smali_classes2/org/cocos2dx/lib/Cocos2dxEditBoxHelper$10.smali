.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$10;->a:I

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$3()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$10;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$10;->b:I

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setReturnType(I)V

    :cond_0
    return-void
.end method
