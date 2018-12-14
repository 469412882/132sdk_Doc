.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:F

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:I

.field private final synthetic f:I


# direct methods
.method constructor <init>(FIIIII)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->a:F

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->b:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->c:I

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->d:I

    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->e:I

    iput p6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setFocusableInTouchMode(Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputFlag(I)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputMode(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setReturnType(I)V

    const v3, -0x777778

    invoke-virtual {v0, v3}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setHintTextColor(I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setVisibility(I)V

    invoke-virtual {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setBackgroundColor(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextColor(I)V

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setSingleLine()V

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->a:F

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setOpenGLViewScaleX(F)V

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->b:I

    int-to-float v3, v3

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float v3, v3, v4

    div-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->a:F

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float v4, v4, v5

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-static {v3}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->convertToSP(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->a:F

    mul-float v4, v4, v5

    div-float/2addr v4, v1

    float-to-int v1, v4

    int-to-float v1, v1

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->convertToSP(F)I

    move-result v1

    invoke-virtual {v0, v1, v3, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setPadding(IIII)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->c:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->d:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->e:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->b:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x33

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$1()Lorg/cocos2dx/lib/ResizeLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/cocos2dx/lib/ResizeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->f:I

    invoke-direct {v1, p0, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->f:I

    invoke-direct {v1, p0, v0, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;Lorg/cocos2dx/lib/Cocos2dxEditBox;I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->f:I

    invoke-direct {v1, p0, v0, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;Lorg/cocos2dx/lib/Cocos2dxEditBox;I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->f:I

    invoke-direct {v1, p0, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$3()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->f:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
