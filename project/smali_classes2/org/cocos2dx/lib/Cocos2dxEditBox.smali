.class public Lorg/cocos2dx/lib/Cocos2dxEditBox;
.super Landroid/widget/EditText;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getOpenGLViewScaleX()F
    .locals 1

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->d:F

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setEditBoxViewRect(IIII)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x33

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setInputFlag(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x1000

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x4000

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x2000

    goto :goto_0

    :pswitch_3
    const/high16 p1, 0x80000

    :goto_0
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->a:I

    goto :goto_1

    :pswitch_4
    const/16 p1, 0x81

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->a:I

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance p1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {p1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_1
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->a:I

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->b:I

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputType(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setInputMode(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x3002

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x11

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x1002

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x21

    goto :goto_0

    :pswitch_6
    const p1, 0x20001

    :goto_0
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->b:I

    :goto_1
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->b:I

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->a:I

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputType(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxLength(I)V
    .locals 2

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->c:I

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/text/InputFilter;

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->c:I

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setMultilineEnabled(Z)V
    .locals 1

    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->b:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->b:I

    return-void
.end method

.method public setOpenGLViewScaleX(F)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->d:F

    return-void
.end method

.method public setReturnType(I)V
    .locals 1

    const v0, 0x10000001

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void

    :pswitch_0
    const p1, 0x10000002

    :goto_0
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void

    :pswitch_1
    const p1, 0x10000003

    goto :goto_0

    :pswitch_2
    const p1, 0x10000004

    goto :goto_0

    :pswitch_3
    const p1, 0x10000006

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setImeOptions(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
