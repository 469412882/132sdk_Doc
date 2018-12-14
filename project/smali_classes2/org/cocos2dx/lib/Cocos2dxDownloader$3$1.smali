.class Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lorg/cocos2dx/lib/Cocos2dxDownloader;

.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader$3;Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->a:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->b:I

    iput-object p4, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->a:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->a:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$0(Lorg/cocos2dx/lib/Cocos2dxDownloader;)I

    move-result v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->b:I

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->c:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->nativeOnFinish(IIILjava/lang/String;[B)V

    return-void
.end method
