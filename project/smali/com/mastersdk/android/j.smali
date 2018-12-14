.class final Lcom/mastersdk/android/j;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/mastersdk/android/i;


# direct methods
.method constructor <init>(Lcom/mastersdk/android/i;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/j;->a:Lcom/mastersdk/android/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mastersdk/android/j;)Lcom/mastersdk/android/i;
    .locals 0

    iget-object p0, p0, Lcom/mastersdk/android/j;->a:Lcom/mastersdk/android/i;

    return-object p0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/mastersdk/android/j;->a:Lcom/mastersdk/android/i;

    invoke-static {p1}, Lcom/mastersdk/android/i;->a(Lcom/mastersdk/android/i;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/mastersdk/android/j;->a:Lcom/mastersdk/android/i;

    invoke-static {v1}, Lcom/mastersdk/android/i;->b(Lcom/mastersdk/android/i;)I

    move-result v1

    rem-int/2addr v1, p1

    if-nez v1, :cond_0

    const/16 v0, 0x1388

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mastersdk/android/k;

    invoke-direct {v1, p0}, Lcom/mastersdk/android/k;-><init>(Lcom/mastersdk/android/j;)V

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/mastersdk/android/j;->a:Lcom/mastersdk/android/i;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mastersdk/android/i;->a(Lcom/mastersdk/android/i;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
