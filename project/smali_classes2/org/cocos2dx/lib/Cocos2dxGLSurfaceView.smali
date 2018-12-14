.class public Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;


# static fields
.field private static final a:Ljava/lang/String; = "Cocos2dxGLSurfaceView"

.field private static b:Landroid/os/Handler;

.field private static c:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private static d:Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;


# instance fields
.field private e:Lorg/cocos2dx/lib/Cocos2dxRenderer;

.field private f:Lorg/cocos2dx/lib/Cocos2dxEditBox;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->g:Z

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->g:Z

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->initView()V

    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxEditBox;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->f:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    return-object p0
.end method

.method static synthetic access$1()Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->d:Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;

    return-object v0
.end method

.method static synthetic access$2()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    return-object v0
.end method

.method static synthetic access$3(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->e:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    return-object p0
.end method

.method public static closeIMEKeyboard()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static dumpMotionEvent(Landroid/view/MotionEvent;)V
    .locals 9

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DOWN"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "UP"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "MOVE"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "CANCEL"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "OUTSIDE"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "POINTER_DOWN"

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "POINTER_UP"

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-string v1, "7?"

    const/4 v5, 0x7

    aput-object v1, v0, v5

    const-string v1, "8?"

    const/16 v5, 0x8

    aput-object v1, v0, v5

    const-string v1, "9?"

    const/16 v6, 0x9

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v7, v6, 0xff

    const-string v8, "event ACTION_"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v7, v3, :cond_0

    if-ne v7, v4, :cond_1

    :cond_0
    const-string v0, "(pid "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v6, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "["

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v2, v0, :cond_3

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(pid "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    const-string v0, ";"

    goto :goto_0
.end method

.method private getContentText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->e:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->getContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    return-object v0
.end method

.method public static openIMEKeyboard()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getContentText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static queueAccelerometer(FFFJ)V
    .locals 8

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;

    move-object v1, v7

    move v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;-><init>(FFFJ)V

    invoke-virtual {v0, v7}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public deleteBackward()V
    .locals 1

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$14;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$14;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCocos2dxEditText()Lorg/cocos2dx/lib/Cocos2dxEditBox;
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->f:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    return-object v0
.end method

.method protected initView()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLContextClientVersion(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setFocusableInTouchMode(Z)V

    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->c:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->d:Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->b:Landroid/os/Handler;

    return-void
.end method

.method public insertText(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$13;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$13;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isSoftKeyboardShown()Z
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->g:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    const/16 v0, 0x55

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    sget-object p2, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendEmptyMessage(I)Z

    :cond_1
    :pswitch_0
    new-instance p2, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$11;

    invoke-direct {p2, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$11;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;I)V

    invoke-virtual {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    :pswitch_0
    new-instance p2, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$12;

    invoke-direct {p2, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$12;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;I)V

    invoke-virtual {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$4;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setRenderMode(I)V

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$3;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->isInEditMode()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->e:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-virtual {p3, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->setScreenWidthAndHeight(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    new-array v1, v0, [I

    new-array v2, v0, [F

    new-array v3, v0, [F

    iget-boolean v4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->g:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "input_method"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    iput-boolean v5, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->g:Z

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-lt v4, v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    return v6

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V

    :goto_1
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return v6

    :pswitch_2
    if-le v0, v6, :cond_1

    return v5

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V

    goto :goto_1

    :pswitch_3
    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;

    invoke-direct {p1, p0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;[I[F[F)V

    goto :goto_2

    :pswitch_4
    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$7;

    invoke-direct {p1, p0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$7;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;[I[F[F)V

    :goto_2
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return v6

    :pswitch_5
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    aget v0, v2, v5

    aget v1, v3, v5

    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;

    invoke-direct {v2, p0, p1, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V

    :goto_3
    invoke-virtual {p0, v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return v6

    :pswitch_6
    if-le v0, v6, :cond_2

    return v5

    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    aget v0, v2, v5

    aget v1, v3, v5

    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$6;

    invoke-direct {v2, p0, p1, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$6;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V

    goto :goto_3

    return v6

    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    aput v6, v1, v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    aput v6, v2, v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    aput v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCocos2dxEditText(Lorg/cocos2dx/lib/Cocos2dxEditBox;)V
    .locals 1

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->f:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->f:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    if-eqz p1, :cond_0

    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->d:Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->f:Lorg/cocos2dx/lib/Cocos2dxEditBox;

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->d:Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;

    invoke-virtual {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setCocos2dxRenderer(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->e:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->e:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method public setSoftKeyboardShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->g:Z

    return-void
.end method
