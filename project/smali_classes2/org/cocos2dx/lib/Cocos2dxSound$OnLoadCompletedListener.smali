.class public Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field private synthetic a:Lorg/cocos2dx/lib/Cocos2dxSound;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxSound;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->a:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    if-nez p3, :cond_0

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->a:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$0(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->a:Lorg/cocos2dx/lib/Cocos2dxSound;

    iget-object v1, p1, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->e:Ljava/lang/String;

    iget-boolean v3, p1, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->a:Z

    iget v4, p1, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->b:F

    iget v5, p1, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->c:F

    iget v6, p1, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->d:F

    move v2, p2

    invoke-static/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$1(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;IZFFF)I

    move-result p2

    iput p2, p1, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->f:I

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_0
    return-void
.end method
