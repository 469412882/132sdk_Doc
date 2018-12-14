.class final Lcom/mastersdk/android/D;
.super Ljava/io/FileOutputStream;


# instance fields
.field private synthetic a:Lcom/mastersdk/android/C;


# direct methods
.method public constructor <init>(Lcom/mastersdk/android/C;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/mastersdk/android/D;->a:Lcom/mastersdk/android/C;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final write([BII)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object p1, p0, Lcom/mastersdk/android/D;->a:Lcom/mastersdk/android/C;

    invoke-static {p1}, Lcom/mastersdk/android/C;->a(Lcom/mastersdk/android/C;)I

    move-result p2

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/mastersdk/android/C;->a(Lcom/mastersdk/android/C;I)V

    iget-object p1, p0, Lcom/mastersdk/android/D;->a:Lcom/mastersdk/android/C;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Integer;

    iget-object p3, p0, Lcom/mastersdk/android/D;->a:Lcom/mastersdk/android/C;

    invoke-static {p3}, Lcom/mastersdk/android/C;->a(Lcom/mastersdk/android/C;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lcom/mastersdk/android/C;->a(Lcom/mastersdk/android/C;[Ljava/lang/Object;)V

    return-void
.end method
