.class Lorg/cocos2dx/lib/Cocos2dxVideoView$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field private synthetic a:Lorg/cocos2dx/lib/Cocos2dxVideoView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;->a:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$15(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V

    return-void
.end method
