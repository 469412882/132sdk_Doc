.class public Lorg/cocos2dx/lib/Cocos2dxSound;
.super Ljava/lang/Object;


# static fields
.field private static h:I = 0x1f4


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/media/SoundPool;

.field private c:F

.field private d:F

.field private final e:Ljava/util/HashMap;

.field private final f:Ljava/util/HashMap;

.field private g:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->g:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->a:Landroid/content/Context;

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->initData()V

    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;IZFFF)I
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/cocos2dx/lib/Cocos2dxSound;->doPlayEffect(Ljava/lang/String;IZFFF)I

    move-result p0

    return p0
.end method

.method private clamp(FFF)F
    .locals 0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private doPlayEffect(Ljava/lang/String;IZFFF)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    iget v4, v0, Lorg/cocos2dx/lib/Cocos2dxSound;->c:F

    mul-float v4, v4, p6

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v5, v6}, Lorg/cocos2dx/lib/Cocos2dxSound;->clamp(FFF)F

    move-result v7

    sub-float v7, v6, v7

    mul-float v4, v4, v7

    iget v7, v0, Lorg/cocos2dx/lib/Cocos2dxSound;->d:F

    mul-float v7, v7, p6

    neg-float v2, v2

    invoke-direct {v0, v2, v5, v6}, Lorg/cocos2dx/lib/Cocos2dxSound;->clamp(FFF)F

    move-result v2

    sub-float v2, v6, v2

    mul-float v7, v7, v2

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v8, p4

    invoke-direct {v0, v8, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxSound;->clamp(FFF)F

    move-result v14

    iget-object v8, v0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-direct {v0, v4, v5, v6}, Lorg/cocos2dx/lib/Cocos2dxSound;->clamp(FFF)F

    move-result v10

    invoke-direct {v0, v7, v5, v6}, Lorg/cocos2dx/lib/Cocos2dxSound;->clamp(FFF)F

    move-result v11

    if-eqz p3, :cond_0

    const/4 v2, -0x1

    const/4 v13, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v12, 0x1

    move/from16 v9, p2

    invoke-virtual/range {v8 .. v14}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v2

    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method private initData()V
    .locals 3

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    :goto_0
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v1, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;-><init>(Lorg/cocos2dx/lib/Cocos2dxSound;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->c:F

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->d:F

    return-void
.end method


# virtual methods
.method public createSoundIDFromAsset(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v1, p1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Cocos2dxSound"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, -0x1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    :cond_1
    return p1
.end method

.method public end()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->c:F

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->d:F

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->initData()V

    return-void
.end method

.method public getEffectsVolume()F
    .locals 2

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->c:F

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->d:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public onEnterBackground()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    return-void
.end method

.method public onEnterForeground()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoResume()V

    return-void
.end method

.method public pauseAllEffects()V
    .locals 4

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->pause(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public pauseEffect(I)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->pause(I)V

    return-void
.end method

.method public playEffect(Ljava/lang/String;ZFFF)I
    .locals 10

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/cocos2dx/lib/Cocos2dxSound;->doPlayEffect(Ljava/lang/String;IZFFF)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->preloadEffect(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return v2

    :cond_1
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v3 .. v9}, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;-><init>(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;ZFFF)V

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget p1, Lorg/cocos2dx/lib/Cocos2dxSound;->h:I

    int-to-long p1, p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget p1, v1, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->f:I

    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return p1

    :goto_1
    monitor-exit v1

    throw p1
.end method

.method public preloadEffect(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isDemo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/chukong/cocosplay/client/CocosPlayClient;->updateAssets(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/chukong/cocosplay/client/CocosPlayClient;->notifyFileLoaded(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->createSoundIDFromAsset(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public resumeAllEffects()V
    .locals 4

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public resumeEffect(I)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->resume(I)V

    return-void
.end method

.method public setEffectsVolume(F)V
    .locals 5

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
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->d:F

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->c:F

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->c:F

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->d:F

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/SoundPool;->setVolume(IFF)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public stopAllEffects()V
    .locals 4

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public stopEffect(I)V
    .locals 4

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public unloadEffect(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->b:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
