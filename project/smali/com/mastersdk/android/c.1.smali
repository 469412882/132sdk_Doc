.class final Lcom/mastersdk/android/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/mastersdk/android/b;


# direct methods
.method constructor <init>(Lcom/mastersdk/android/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/c;->a:Lcom/mastersdk/android/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mastersdk/android/c;->a:Lcom/mastersdk/android/b;

    iget-object v0, v0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->k(Lcom/mastersdk/android/MainActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mastersdk/android/c;->a:Lcom/mastersdk/android/b;

    iget-object v0, v0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {v0}, Lcom/mastersdk/android/MainActivity;->k(Lcom/mastersdk/android/MainActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/mastersdk/android/MainActivity;->b(Lcom/mastersdk/android/MainActivity;I)V

    iget-object v0, p0, Lcom/mastersdk/android/c;->a:Lcom/mastersdk/android/b;

    iget-object v0, v0, Lcom/mastersdk/android/b;->a:Lcom/mastersdk/android/MainActivity;

    invoke-virtual {v0}, Lcom/mastersdk/android/MainActivity;->a()V

    return-void
.end method
