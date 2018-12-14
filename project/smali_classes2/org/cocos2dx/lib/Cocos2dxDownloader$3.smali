.class Lorg/cocos2dx/lib/Cocos2dxDownloader$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lorg/cocos2dx/lib/Cocos2dxDownloader;

.field private final synthetic c:I

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->b:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->c:I

    iput-object p4, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    new-instance v0, Lorg/cocos2dx/lib/DownloadTask;

    invoke-direct {v0}, Lorg/cocos2dx/lib/DownloadTask;-><init>()V

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/cocos2dx/lib/DataTaskHandler;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->b:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->c:I

    invoke-direct {v1, v2, v3}, Lorg/cocos2dx/lib/DataTaskHandler;-><init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;I)V

    iput-object v1, v0, Lorg/cocos2dx/lib/DownloadTask;->b:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->b:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$1(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v1

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->d:Ljava/lang/String;

    iget-object v4, v0, Lorg/cocos2dx/lib/DownloadTask;->b:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v1, v2, v3, v4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2dx/lib/DownloadTask;->a:Lcom/loopj/android/http/RequestHandle;

    :cond_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->b:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v3}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$2(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lorg/cocos2dx/lib/FileTaskHandler;

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->b:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v5, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->c:I

    invoke-direct {v3, v4, v5, v1, v2}, Lorg/cocos2dx/lib/FileTaskHandler;-><init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/io/File;Ljava/io/File;)V

    iput-object v3, v0, Lorg/cocos2dx/lib/DownloadTask;->b:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v5, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bytes="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/http/Header;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Lorg/apache/http/Header;

    :cond_2
    move-object v6, v2

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->b:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$1(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v3

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->d:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v0, Lorg/cocos2dx/lib/DownloadTask;->b:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual/range {v3 .. v8}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2dx/lib/DownloadTask;->a:Lcom/loopj/android/http/RequestHandle;

    :cond_3
    iget-object v1, v0, Lorg/cocos2dx/lib/DownloadTask;->a:Lcom/loopj/android/http/RequestHandle;

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t create DownloadTask for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->b:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->c:I

    invoke-direct {v1, p0, v2, v3, v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxDownloader$3;Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/lang/String;)V

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->b:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$3(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
