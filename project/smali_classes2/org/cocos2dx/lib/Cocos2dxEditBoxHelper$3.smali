.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:F


# direct methods
.method constructor <init>(ILjava/lang/String;F)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->a:I

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->b:Ljava/lang/String;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$3()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->c:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v3, 0x2

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;->c:F

    div-float/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextSize(IF)V

    :cond_1
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    return-void
.end method
