.class Lorg/cocos2dx/lib/Cocos2dxDownloader$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/cocos2dx/lib/Cocos2dxDownloader;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:[B


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;IILjava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->a:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->b:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->c:I

    iput-object p4, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->e:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->a:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->a:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$0(Lorg/cocos2dx/lib/Cocos2dxDownloader;)I

    move-result v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->b:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->c:I

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->d:Ljava/lang/String;

    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;->e:[B

    invoke-virtual/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->nativeOnFinish(IIILjava/lang/String;[B)V

    return-void
.end method
