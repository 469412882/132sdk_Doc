.class Lorg/cocos2dx/lib/Cocos2dxVideoView$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private synthetic a:Lorg/cocos2dx/lib/Cocos2dxVideoView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$8(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$2(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v1

    if-ne v1, p3, :cond_1

    iget-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$3(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p3

    if-ne p3, p4, :cond_1

    const/4 p2, 0x1

    :cond_1
    iget-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$6(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    move-result-object p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$7(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$7(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->seekTo(I)V

    :cond_2
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->start()V

    :cond_3
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$16(Lorg/cocos2dx/lib/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$17(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$16(Lorg/cocos2dx/lib/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$10(Lorg/cocos2dx/lib/Cocos2dxVideoView;Z)V

    return-void
.end method
