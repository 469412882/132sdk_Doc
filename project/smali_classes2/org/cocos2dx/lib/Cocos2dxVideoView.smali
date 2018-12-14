.class public Lorg/cocos2dx/lib/Cocos2dxVideoView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private G:Landroid/media/MediaPlayer$OnPreparedListener;

.field private H:Landroid/media/MediaPlayer$OnCompletionListener;

.field private I:Landroid/media/MediaPlayer$OnErrorListener;

.field private J:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private K:Landroid/view/SurfaceHolder$Callback;

.field protected a:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private b:Ljava/lang/String;

.field private c:Landroid/net/Uri;

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/view/SurfaceHolder;

.field private h:Landroid/media/MediaPlayer;

.field private i:I

.field private j:I

.field private k:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

.field private l:Landroid/media/MediaPlayer$OnPreparedListener;

.field private m:I

.field private n:Landroid/media/MediaPlayer$OnErrorListener;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const-string v0, "Cocos2dxVideoView"

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->f:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->g:Landroid/view/SurfaceHolder;

    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->i:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->j:I

    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->a:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->p:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->q:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->r:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->s:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->t:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->u:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->v:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->w:I

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->x:Z

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->y:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->z:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->A:I

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->B:Z

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->C:Z

    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->D:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->E:Z

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->F:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->G:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->H:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->I:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->J:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->K:Landroid/view/SurfaceHolder$Callback;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->A:I

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->a:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->initVideoView()V

    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->i:I

    return-void
.end method

.method static synthetic access$1(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->j:I

    return-void
.end method

.method static synthetic access$10(Lorg/cocos2dx/lib/Cocos2dxVideoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$11(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->k:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    return-object p0
.end method

.method static synthetic access$12(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 0

    iget p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->A:I

    return p0
.end method

.method static synthetic access$13(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$14(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->n:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$15(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->m:I

    return-void
.end method

.method static synthetic access$16(Lorg/cocos2dx/lib/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->g:Landroid/view/SurfaceHolder;

    return-void
.end method

.method static synthetic access$17(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$2(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 0

    iget p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->i:I

    return p0
.end method

.method static synthetic access$3(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 0

    iget p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->j:I

    return p0
.end method

.method static synthetic access$4(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I

    return-void
.end method

.method static synthetic access$5(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->l:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$6(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$7(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 0

    iget p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->o:I

    return p0
.end method

.method static synthetic access$8(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 0

    iget p0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->f:I

    return p0
.end method

.method static synthetic access$9(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->f:I

    return-void
.end method

.method private initVideoView()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->i:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->j:I

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->K:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setFocusableInTouchMode(Z)V

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->f:I

    return-void
.end method

.method private openVideo()V
    .locals 10

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->g:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->C:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->D:Ljava/lang/String;

    if-nez v0, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->c:Landroid/net/Uri;

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->a:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->release(Z)V

    const/4 v1, 0x1

    const/4 v2, -0x1

    :try_start_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->G:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->F:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->H:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->I:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->J:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->g:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->d:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->m:I

    iget-boolean v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->C:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->a:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->D:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->a:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->c:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to open content: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->c:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I

    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->f:I

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->I:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v1, v0}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    :catch_1
    move-exception v3

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to open content: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private release(Z)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I

    if-eqz p1, :cond_0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->f:I

    :cond_0
    return-void
.end method

.method private setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->c:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->o:I

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->i:I

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->j:I

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->openVideo()V

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->requestLayout()V

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->invalidate()V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public fixSize()V
    .locals 4

    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->x:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->y:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->z:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize(IIII)V

    return-void

    :cond_0
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->p:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->q:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->r:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->s:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize(IIII)V

    return-void
.end method

.method public fixSize(IIII)V
    .locals 2

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->i:I

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->j:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->E:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->i:I

    mul-int v0, v0, p4

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->j:I

    mul-int v1, v1, p3

    if-le v0, v1, :cond_1

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->v:I

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->j:I

    mul-int v0, v0, p3

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->i:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->w:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->i:I

    mul-int v0, v0, p4

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->j:I

    mul-int v1, v1, p3

    if-ge v0, v1, :cond_2

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->i:I

    mul-int v0, v0, p4

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->j:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->v:I

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->w:I

    :cond_2
    :goto_0
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->v:I

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->t:I

    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->w:I

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->u:I

    goto :goto_2

    :cond_3
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->t:I

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->u:I

    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->i:I

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->v:I

    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->j:I

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->w:I

    goto :goto_2

    :cond_4
    :goto_1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->t:I

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->u:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->v:I

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->w:I

    :goto_2
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->v:I

    iget p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->w:I

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->t:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->u:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 p2, 0x33

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->m:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->d:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->d:I

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->d:I

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isInPlaybackState()Z
    .locals 2

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->i:I

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->j:I

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->v:I

    iget p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->w:I

    invoke-virtual {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setMeasuredDimension(II)V

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->v:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->w:I

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_1
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->r:I

    iget p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->s:I

    invoke-virtual {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setMeasuredDimension(II)V

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->r:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->s:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->pause()V

    return v0

    :cond_0
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->resume()V

    :cond_1
    return v0
.end method

.method public pause()V
    .locals 4

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->k:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->k:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->A:I

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    :cond_0
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->f:I

    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    move p1, p2

    return p1

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_2
    return p1
.end method

.method public restart()V
    .locals 2

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->f:I

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->k:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->k:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->A:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->o:I

    return-void

    :cond_0
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->o:I

    return-void
.end method

.method public setFullScreenEnabled(ZII)V
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->x:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->x:Z

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->y:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->z:I

    :cond_0
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize()V

    :cond_1
    return-void
.end method

.method public setKeepRatio(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->E:Z

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize()V

    return-void
.end method

.method public setOnCompletionListener(Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->k:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->n:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->l:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setVideoFileName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "assets/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isDemo()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/chukong/cocosplay/client/CocosPlayClient;->updateAssets(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/chukong/cocosplay/client/CocosPlayClient;->notifyFileLoaded(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->C:Z

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    return-void

    :cond_2
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->D:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVideoRect(IIII)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->p:I

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->q:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->r:I

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->s:I

    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->p:I

    iget p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->q:I

    iget p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->r:I

    iget p4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->s:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize(IIII)V

    return-void
.end method

.method public setVideoURL(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->C:Z

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->B:Z

    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->B:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->o:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->B:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->B:Z

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public start()V
    .locals 4

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->k:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->k:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->A:I

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    :cond_0
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->f:I

    return-void
.end method

.method public stop()V
    .locals 3

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->stopPlayback()V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->k:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->k:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->A:I

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->e:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->f:I

    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->release(Z)V

    return-void
.end method
