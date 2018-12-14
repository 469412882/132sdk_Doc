.class final Lcom/mastersdk/android/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/mastersdk/android/m;


# direct methods
.method constructor <init>(Lcom/mastersdk/android/m;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/a;->a:Lcom/mastersdk/android/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mastersdk/android/a;->a:Lcom/mastersdk/android/m;

    iget-object v0, v0, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-virtual {v0}, Lcom/mastersdk/android/MainActivity;->c()V

    iget-object v0, p0, Lcom/mastersdk/android/a;->a:Lcom/mastersdk/android/m;

    iget-object v0, v0, Lcom/mastersdk/android/m;->a:Lcom/mastersdk/android/MainActivity;

    invoke-virtual {v0}, Lcom/mastersdk/android/MainActivity;->a()V

    const-string v0, ""

    const-string v1, "MainActivity : initDownLoadLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
