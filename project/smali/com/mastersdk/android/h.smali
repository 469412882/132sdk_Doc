.class final Lcom/mastersdk/android/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/mastersdk/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/mastersdk/android/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/h;->a:Lcom/mastersdk/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/mastersdk/android/h;->a:Lcom/mastersdk/android/MainActivity;

    invoke-virtual {p1}, Lcom/mastersdk/android/MainActivity;->finish()V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
