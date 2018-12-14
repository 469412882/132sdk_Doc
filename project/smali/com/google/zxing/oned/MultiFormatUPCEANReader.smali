.class public final Lcom/google/zxing/oned/MultiFormatUPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "MultiFormatUPCEANReader.java"


# instance fields
.field private final readers:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    .line 44
    :goto_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    if-eqz p1, :cond_4

    .line 46
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v1}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 48
    :cond_1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/oned/UPCAReader;

    invoke-direct {v1}, Lcom/google/zxing/oned/UPCAReader;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 51
    :cond_2
    :goto_1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/oned/EAN8Reader;

    invoke-direct {v1}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 54
    :cond_3
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 55
    iget-object p1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    new-instance v0, Lcom/google/zxing/oned/UPCEReader;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 58
    :cond_4
    iget-object p1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 59
    iget-object p1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    new-instance v0, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v0}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 61
    iget-object p1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    new-instance v0, Lcom/google/zxing/oned/EAN8Reader;

    invoke-direct {v0}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 62
    iget-object p1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    new-instance v0, Lcom/google/zxing/oned/UPCEReader;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 68
    invoke-static {p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    .line 71
    iget-object v4, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/UPCEANReader;

    .line 74
    :try_start_0
    invoke-virtual {v4, p1, p2, v0, p3}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Hashtable;)Lcom/google/zxing/Result;

    move-result-object v4
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v4}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {v4}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x0

    if-nez p3, :cond_1

    move-object p3, v0

    goto :goto_2

    .line 93
    :cond_1
    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Vector;

    :goto_2
    if-eqz p3, :cond_2

    .line 94
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {p3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    .line 97
    new-instance p1, Lcom/google/zxing/Result;

    invoke-virtual {v4}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object p3

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p1, p2, v0, p3, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object p1

    :cond_4
    return-object v4

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method public reset()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 108
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/Reader;

    .line 109
    invoke-interface {v2}, Lcom/google/zxing/Reader;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
