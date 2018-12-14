.class public Lorg/cocos2dx/lib/Cocos2dxMusic;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "Cocos2dxMusic"


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Landroid/media/MediaPlayer;

.field private d:F

.field private e:F

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->g:Z

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->h:Z

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->b:Landroid/content/Context;

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->initData()V

    return-void
.end method

.method private createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;
    .locals 7

    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isDemo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/chukong/cocosplay/client/CocosPlayClient;->updateAssets(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/chukong/cocosplay/client/CocosPlayClient;->notifyFileLoaded(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    :goto_0
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:F

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->e:F

    invoke-virtual {v6, p1, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p1

    const/4 v6, 0x0

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxMusic;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6
.end method

.method private initData()V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:F

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->e:F

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Z

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->initData()V

    return-void
.end method

.method public getBackgroundVolume()F
    .locals 2

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:F

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->e:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBackgroundMusicPlaying()Z
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onEnterBackground()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Z

    :cond_0
    return-void
.end method

.method public onEnterForeground()V
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Z

    :cond_0
    return-void
.end method

.method public pauseBackgroundMusic()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Z

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->h:Z

    :cond_0
    return-void
.end method

.method public playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->i:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    if-nez p1, :cond_2

    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxMusic;->a:Ljava/lang/String;

    const-string p2, "playBackgroundMusic: background media player is null"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    iget-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :goto_2
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Z

    iput-boolean p2, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxMusic;->a:Ljava/lang/String;

    const-string p2, "playBackgroundMusic: error state"

    goto :goto_0
.end method

.method public preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->i:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public resumeBackgroundMusic()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Z

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->h:Z

    :cond_0
    return-void
.end method

.method public rewindBackgroundMusic()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->i:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->g:Z

    invoke-virtual {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->playBackgroundMusic(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setBackgroundVolume(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->e:F

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:F

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->d:F

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->e:F

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_2
    return-void
.end method

.method public stopBackgroundMusic()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->createMediaplayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->c:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxMusic;->f:Z

    :cond_0
    return-void
.end method
