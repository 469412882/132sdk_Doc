.class final Lcom/mastersdk/android/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/mastersdk/android/MainActivity;

.field private final synthetic b:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/mastersdk/android/MainActivity;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/d;->a:Lcom/mastersdk/android/MainActivity;

    iput-object p2, p0, Lcom/mastersdk/android/d;->b:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mastersdk/android/d;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->l(Lcom/mastersdk/android/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mastersdk/android/d;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->l(Lcom/mastersdk/android/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mastersdk/android/d;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v1}, Lcom/mastersdk/android/MainActivity;->a(Lcom/mastersdk/android/MainActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mastersdk/android/d;->b:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mastersdk/android/d;->a:Lcom/mastersdk/android/MainActivity;

    invoke-virtual {v1, v0}, Lcom/mastersdk/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/mastersdk/android/d;->a:Lcom/mastersdk/android/MainActivity;

    invoke-virtual {v0}, Lcom/mastersdk/android/MainActivity;->finish()V

    return-void
.end method
