.class final Lcom/mastersdk/android/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/mastersdk/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/mastersdk/android/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/g;->a:Lcom/mastersdk/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/mastersdk/android/g;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p1}, Lcom/mastersdk/android/MainActivity;->n(Lcom/mastersdk/android/MainActivity;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "package:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mastersdk/android/g;->a:Lcom/mastersdk/android/MainActivity;

    invoke-static {p2}, Lcom/mastersdk/android/MainActivity;->a(Lcom/mastersdk/android/MainActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/mastersdk/android/g;->a:Lcom/mastersdk/android/MainActivity;

    invoke-virtual {p1, p2}, Lcom/mastersdk/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
