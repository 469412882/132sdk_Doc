.class final Lcom/mastersdk/android/w;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/mastersdk/android/u;


# direct methods
.method constructor <init>(Lcom/mastersdk/android/u;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/w;->a:Lcom/mastersdk/android/u;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/mastersdk/android/w;->a:Lcom/mastersdk/android/u;

    invoke-static {p1}, Lcom/mastersdk/android/u;->b(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mastersdk/android/q;->a()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/mastersdk/android/w;->a:Lcom/mastersdk/android/u;

    iget-object v0, p0, Lcom/mastersdk/android/w;->a:Lcom/mastersdk/android/u;

    invoke-static {v0}, Lcom/mastersdk/android/u;->b(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mastersdk/android/q;->e()I

    move-result v0

    invoke-static {p1, v0}, Lcom/mastersdk/android/u;->b(Lcom/mastersdk/android/u;I)V

    iget-object p1, p0, Lcom/mastersdk/android/w;->a:Lcom/mastersdk/android/u;

    iget-object v0, p0, Lcom/mastersdk/android/w;->a:Lcom/mastersdk/android/u;

    invoke-static {v0}, Lcom/mastersdk/android/u;->b(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mastersdk/android/q;->f()I

    move-result v0

    invoke-static {p1, v0}, Lcom/mastersdk/android/u;->a(Lcom/mastersdk/android/u;I)V

    iget-object p1, p0, Lcom/mastersdk/android/w;->a:Lcom/mastersdk/android/u;

    invoke-static {p1}, Lcom/mastersdk/android/u;->a(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/x;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mastersdk/android/w;->a:Lcom/mastersdk/android/u;

    invoke-static {p1}, Lcom/mastersdk/android/u;->a(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/x;

    move-result-object p1

    iget-object v0, p0, Lcom/mastersdk/android/w;->a:Lcom/mastersdk/android/u;

    invoke-static {v0}, Lcom/mastersdk/android/u;->d(Lcom/mastersdk/android/u;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mastersdk/android/x;->downloadStart(I)V

    iget-object p1, p0, Lcom/mastersdk/android/w;->a:Lcom/mastersdk/android/u;

    invoke-static {p1}, Lcom/mastersdk/android/u;->a(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/x;

    move-result-object p1

    iget-object v0, p0, Lcom/mastersdk/android/w;->a:Lcom/mastersdk/android/u;

    invoke-static {v0}, Lcom/mastersdk/android/u;->c(Lcom/mastersdk/android/u;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mastersdk/android/x;->downloadProgress(I)V

    :cond_0
    iget-object p1, p0, Lcom/mastersdk/android/w;->a:Lcom/mastersdk/android/u;

    invoke-static {p1}, Lcom/mastersdk/android/u;->b(Lcom/mastersdk/android/u;)Lcom/mastersdk/android/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mastersdk/android/q;->b()V

    return-void
.end method
