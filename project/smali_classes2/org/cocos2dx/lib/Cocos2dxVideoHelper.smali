.class public Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
.super Ljava/lang/Object;


# static fields
.field static a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

.field private static e:I


# instance fields
.field private b:Landroid/widget/FrameLayout;

.field private c:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private d:Landroid/util/SparseArray;

.field private f:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/widget/FrameLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->b:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->c:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->f:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->c:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->b:Landroid/widget/FrameLayout;

    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-direct {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V

    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    return-void
.end method

.method private _createVideoView(I)V
    .locals 2

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->c:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v0, v1, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;I)V

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setZOrderOnTop(Z)V

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->f:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setOnCompletionListener(Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;)V

    return-void
.end method

.method private _pauseVideo(I)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->pause()V

    :cond_0
    return-void
.end method

.method private _removeVideoView(I)V
    .locals 2

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->stopPlayback()V

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private _restartVideo(I)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->restart()V

    :cond_0
    return-void
.end method

.method private _resumeVideo(I)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->resume()V

    :cond_0
    return-void
.end method

.method private _seekVideoTo(II)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->seekTo(I)V

    :cond_0
    return-void
.end method

.method private _setFullScreenEnabled(IZII)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3, p4}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setFullScreenEnabled(ZII)V

    :cond_0
    return-void
.end method

.method private _setVideoKeepRatio(IZ)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setKeepRatio(Z)V

    :cond_0
    return-void
.end method

.method private _setVideoRect(IIIII)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoRect(IIII)V

    :cond_0
    return-void
.end method

.method private _setVideoURL(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_0

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p1, p3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoURL(Ljava/lang/String;)V

    return-void

    :pswitch_1
    invoke-virtual {p1, p3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoFileName(Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private _setVideoVisible(IZ)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize()V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private _startVideo(I)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->start()V

    :cond_0
    return-void
.end method

.method private _stopVideo(I)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->stop()V

    :cond_0
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)Lorg/cocos2dx/lib/Cocos2dxActivity;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->c:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-object p0
.end method

.method static synthetic access$1(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_createVideoView(I)V

    return-void
.end method

.method static synthetic access$10(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_seekVideoTo(II)V

    return-void
.end method

.method static synthetic access$11(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoVisible(IZ)V

    return-void
.end method

.method static synthetic access$12(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_restartVideo(I)V

    return-void
.end method

.method static synthetic access$13(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoKeepRatio(IZ)V

    return-void
.end method

.method static synthetic access$14(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->onBackKeyEvent()V

    return-void
.end method

.method static synthetic access$2(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_removeVideoView(I)V

    return-void
.end method

.method static synthetic access$3(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoURL(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_startVideo(I)V

    return-void
.end method

.method static synthetic access$5(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoRect(IIIII)V

    return-void
.end method

.method static synthetic access$6(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setFullScreenEnabled(IZII)V

    return-void
.end method

.method static synthetic access$7(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_pauseVideo(I)V

    return-void
.end method

.method static synthetic access$8(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_resumeVideo(I)V

    return-void
.end method

.method static synthetic access$9(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_stopVideo(I)V

    return-void
.end method

.method public static createVideoWidget()I
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    sget v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->e:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    sget v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->e:I

    return v0
.end method

.method public static native nativeExecuteVideoCallback(II)V
.end method

.method private onBackKeyEvent()V
    .locals 7

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cocos2dx/lib/Cocos2dxVideoView;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v1, v1, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setFullScreenEnabled(ZII)V

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->c:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v5, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;

    const/16 v6, 0x3e8

    invoke-direct {v5, p0, v3, v6}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoEventRunnable;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;II)V

    invoke-virtual {v4, v5}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static pauseVideo(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static removeVideoWidget(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static restartVideo(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static resumeVideo(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static seekVideoTo(II)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static setFullScreenEnabled(IZII)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput p1, v0, Landroid/os/Message;->arg2:I

    goto :goto_0

    :cond_0
    iput p0, v0, Landroid/os/Message;->arg2:I

    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p0, p0, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static setVideoKeepRatioEnabled(IZ)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :goto_0
    iput p0, v0, Landroid/os/Message;->arg2:I

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static setVideoRect(IIIII)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static setVideoUrl(IILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static setVideoVisible(IZ)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :goto_0
    iput p0, v0, Landroid/os/Message;->arg2:I

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static startVideo(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static stopVideo(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->a:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
