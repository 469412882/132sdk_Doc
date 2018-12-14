.class final Lcom/mastersdk/android/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mastersdk/android/x;


# instance fields
.field final synthetic a:Lcom/mastersdk/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/mastersdk/android/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final downloadEnd()V
    .locals 5

    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->k(Lcom/mastersdk/android/MainActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0, v1}, Lcom/mastersdk/android/MainActivity;->b(Lcom/mastersdk/android/MainActivity;I)V

    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->a(Lcom/mastersdk/android/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "downloads"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->b(Lcom/mastersdk/android/MainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-virtual {v4, v2}, Lcom/mastersdk/android/MainActivity;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    const-string v2, "file"

    invoke-virtual {v1, v2, v3}, Lcom/mastersdk/android/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "downfile"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v1, v0}, Lcom/mastersdk/android/MainActivity;->d(Lcom/mastersdk/android/MainActivity;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    const-string v4, "file"

    invoke-virtual {v0, v4, v3}, Lcom/mastersdk/android/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "downfile"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->f(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->f(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u4e0b\u8f7d/\u6821\u9a8c\u5931\u8d25,\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final downloadError()V
    .locals 4

    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->k(Lcom/mastersdk/android/MainActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->k(Lcom/mastersdk/android/MainActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mastersdk/android/c;

    invoke-direct {v1, p0}, Lcom/mastersdk/android/c;-><init>(Lcom/mastersdk/android/b;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->f(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->f(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u6587\u4ef6\u4e0b\u8f7d/\u6821\u9a8c\u5931\u8d25,\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final downloadProgress(I)V
    .locals 4

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->i(Lcom/mastersdk/android/MainActivity;)I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 p1, p1, 0x64

    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->i(Lcom/mastersdk/android/MainActivity;)I

    move-result v0

    div-int/2addr p1, v0

    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->f(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->g(Lcom/mastersdk/android/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->g(Lcom/mastersdk/android/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v1}, Lcom/mastersdk/android/MainActivity;->g(Lcom/mastersdk/android/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v1}, Lcom/mastersdk/android/MainActivity;->j(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v1}, Lcom/mastersdk/android/MainActivity;->k(Lcom/mastersdk/android/MainActivity;)I

    move-result v1

    if-lez v1, :cond_1

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mastersdk/android/MainActivity;->b(Lcom/mastersdk/android/MainActivity;I)V

    :cond_1
    return-void
.end method

.method public final downloadStart(I)V
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0, p1}, Lcom/mastersdk/android/MainActivity;->a(Lcom/mastersdk/android/MainActivity;I)V

    iget-object p1, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->f(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->g(Lcom/mastersdk/android/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->g(Lcom/mastersdk/android/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    iget-object v0, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->h(Lcom/mastersdk/android/MainActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->f(Lcom/mastersdk/android/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u8d44\u6e90\u4e0b\u8f7d\u4e2d..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
