.class final Lcom/mastersdk/android/v;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/mastersdk/android/u;


# direct methods
.method constructor <init>(Lcom/mastersdk/android/u;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/v;->a:Lcom/mastersdk/android/u;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mastersdk/android/v;->a:Lcom/mastersdk/android/u;

    invoke-static {p1}, Lcom/mastersdk/android/u;->a(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/x;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mastersdk/android/v;->a:Lcom/mastersdk/android/u;

    invoke-static {p1}, Lcom/mastersdk/android/u;->a(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/x;

    move-result-object p1

    invoke-interface {p1}, Lcom/mastersdk/android/x;->downloadError()V

    iget-object p1, p0, Lcom/mastersdk/android/v;->a:Lcom/mastersdk/android/u;

    invoke-static {p1}, Lcom/mastersdk/android/u;->b(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mastersdk/android/q;->c()V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/mastersdk/android/v;->a:Lcom/mastersdk/android/u;

    invoke-static {p1}, Lcom/mastersdk/android/u;->c(Lcom/mastersdk/android/u;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/mastersdk/android/u;->a(Lcom/mastersdk/android/u;I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/mastersdk/android/v;->a:Lcom/mastersdk/android/u;

    invoke-static {p1}, Lcom/mastersdk/android/u;->a(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/x;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mastersdk/android/v;->a:Lcom/mastersdk/android/u;

    invoke-static {p1}, Lcom/mastersdk/android/u;->a(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/x;

    move-result-object p1

    iget-object v0, p0, Lcom/mastersdk/android/v;->a:Lcom/mastersdk/android/u;

    invoke-static {v0}, Lcom/mastersdk/android/u;->c(Lcom/mastersdk/android/u;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mastersdk/android/x;->downloadProgress(I)V

    :cond_1
    iget-object p1, p0, Lcom/mastersdk/android/v;->a:Lcom/mastersdk/android/u;

    invoke-static {p1}, Lcom/mastersdk/android/u;->c(Lcom/mastersdk/android/u;)I

    move-result p1

    iget-object v0, p0, Lcom/mastersdk/android/v;->a:Lcom/mastersdk/android/u;

    invoke-static {v0}, Lcom/mastersdk/android/u;->d(Lcom/mastersdk/android/u;)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/mastersdk/android/v;->a:Lcom/mastersdk/android/u;

    invoke-static {p1}, Lcom/mastersdk/android/u;->b(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mastersdk/android/q;->d()V

    iget-object p1, p0, Lcom/mastersdk/android/v;->a:Lcom/mastersdk/android/u;

    invoke-static {p1}, Lcom/mastersdk/android/u;->a(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/x;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mastersdk/android/v;->a:Lcom/mastersdk/android/u;

    invoke-static {p1}, Lcom/mastersdk/android/u;->a(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/x;

    move-result-object p1

    invoke-interface {p1}, Lcom/mastersdk/android/x;->downloadEnd()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    return-void
.end method
