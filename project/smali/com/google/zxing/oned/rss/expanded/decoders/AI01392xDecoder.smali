.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.source "AI01392xDecoder.java"


# static fields
.field private static final headerSize:I = 0x8

.field private static final lastDigitSize:I = 0x2


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-void
.end method


# virtual methods
.method public parseInformation()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v0, v0, Lcom/google/zxing/common/BitArray;->size:I

    const/16 v1, 0x30

    if-ge v0, v1, :cond_0

    .line 46
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x8

    .line 51
    invoke-virtual {p0, v0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;->encodeCompressedGtin(Ljava/lang/StringBuffer;I)V

    .line 53
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    const-string v2, "(392"

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 59
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
