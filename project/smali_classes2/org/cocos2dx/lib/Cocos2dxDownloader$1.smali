.class Lorg/cocos2dx/lib/Cocos2dxDownloader$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/cocos2dx/lib/Cocos2dxDownloader;

.field private final synthetic b:I

.field private final synthetic c:J

.field private final synthetic d:J

.field private final synthetic e:J


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;IJJJ)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->a:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->b:I

    iput-wide p3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->c:J

    iput-wide p5, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->d:J

    iput-wide p7, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->a:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->a:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$0(Lorg/cocos2dx/lib/Cocos2dxDownloader;)I

    move-result v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->b:I

    iget-wide v3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->c:J

    iget-wide v5, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->d:J

    iget-wide v7, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->e:J

    invoke-virtual/range {v0 .. v8}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->nativeOnProgress(IIJJJ)V

    return-void
.end method
