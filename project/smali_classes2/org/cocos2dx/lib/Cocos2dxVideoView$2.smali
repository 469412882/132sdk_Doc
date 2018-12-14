.class Lorg/cocos2dx/lib/Cocos2dxVideoView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private synthetic a:Lorg/cocos2dx/lib/Cocos2dxVideoView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$4(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$5(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$5(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$6(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$0(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$7(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->seekTo(I)V

    :cond_1
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$2(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$3(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize()V

    :cond_2
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$8(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->start()V

    :cond_3
    return-void
.end method
