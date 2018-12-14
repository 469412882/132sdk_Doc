.class public final Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECBlocks"
.end annotation


# instance fields
.field private final ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

.field private final ecCodewordsPerBlock:I


# direct methods
.method constructor <init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;)V
    .locals 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    const/4 p1, 0x1

    .line 194
    new-array p1, p1, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iput-object p1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    return-void
.end method

.method constructor <init>(ILcom/google/zxing/qrcode/decoder/Version$ECB;Lcom/google/zxing/qrcode/decoder/Version$ECB;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    const/4 p1, 0x2

    .line 199
    new-array p1, p1, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    iput-object p1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    return-void
.end method


# virtual methods
.method public getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    return-object v0
.end method

.method public getECCodewordsPerBlock()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    return v0
.end method

.method public getNumBlocks()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 208
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getTotalECCodewords()I
    .locals 2

    .line 215
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method
