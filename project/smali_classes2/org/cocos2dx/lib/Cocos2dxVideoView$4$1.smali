.class Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lorg/cocos2dx/lib/Cocos2dxVideoView$4;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoView$4;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->access$0(Lorg/cocos2dx/lib/Cocos2dxVideoView$4;)Lorg/cocos2dx/lib/Cocos2dxVideoView;

    move-result-object p1

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$11(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->access$0(Lorg/cocos2dx/lib/Cocos2dxVideoView$4;)Lorg/cocos2dx/lib/Cocos2dxVideoView;

    move-result-object p1

    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$11(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    move-result-object p1

    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->access$0(Lorg/cocos2dx/lib/Cocos2dxVideoView$4;)Lorg/cocos2dx/lib/Cocos2dxVideoView;

    move-result-object p2

    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$12(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p2

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    :cond_0
    return-void
.end method
