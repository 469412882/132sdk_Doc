.class final Lcom/mastersdk/android/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/mastersdk/android/j;


# direct methods
.method constructor <init>(Lcom/mastersdk/android/j;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/k;->a:Lcom/mastersdk/android/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/mastersdk/android/k;->a:Lcom/mastersdk/android/j;

    invoke-static {v0}, Lcom/mastersdk/android/j;->a(Lcom/mastersdk/android/j;)Lcom/mastersdk/android/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mastersdk/android/i;->c(Lcom/mastersdk/android/i;)V

    return-void
.end method
