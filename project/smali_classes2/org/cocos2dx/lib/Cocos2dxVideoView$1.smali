.class Lorg/cocos2dx/lib/Cocos2dxVideoView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field private synthetic a:Lorg/cocos2dx/lib/Cocos2dxVideoView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$0(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V

    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p2, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$2(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$3(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$2(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p2

    iget-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$3(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method
