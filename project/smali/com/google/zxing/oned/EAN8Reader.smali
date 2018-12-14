.class public final Lcom/google/zxing/oned/EAN8Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN8Reader.java"


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    .line 33
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    return-void
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuffer;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    const/4 v1, 0x0

    .line 39
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 40
    aput v1, v0, v2

    const/4 v3, 0x2

    .line 41
    aput v1, v0, v3

    const/4 v3, 0x3

    .line 42
    aput v1, v0, v3

    .line 43
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 44
    aget p2, p2, v2

    move v4, p2

    const/4 p2, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge p2, v5, :cond_1

    if-ge v4, v3, :cond_1

    .line 47
    sget-object v5, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v0, v4, v5}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    .line 48
    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v5, v4

    const/4 v4, 0x0

    .line 49
    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_0

    .line 50
    aget v6, v0, v4

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    move v4, v5

    goto :goto_0

    .line 54
    :cond_1
    sget-object p2, Lcom/google/zxing/oned/EAN8Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v4, v2, p2}, Lcom/google/zxing/oned/EAN8Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object p2

    .line 55
    aget p2, p2, v2

    move v2, p2

    const/4 p2, 0x0

    :goto_2
    if-ge p2, v5, :cond_3

    if-ge v2, v3, :cond_3

    .line 58
    sget-object v4, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v0, v2, v4}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 59
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v2

    const/4 v2, 0x0

    .line 60
    :goto_3
    array-length v6, v0

    if-ge v2, v6, :cond_2

    .line 61
    aget v6, v0, v2

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    move v2, v4

    goto :goto_2

    :cond_3
    return v2
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 69
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
